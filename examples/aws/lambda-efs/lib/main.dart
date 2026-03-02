import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;
import 'package:pulumi_aws_apigateway/pulumi_aws_apigateway.dart'
    as awsx_apigw;
import 'package:pulumi_aws_apigateway/index.dart' as awsx_apigw_index;
import 'package:pulumi_awsx/pulumi_awsx.dart' as awsx;

class LambdaEfsStack extends pulumi.Stack {
  late final pulumi.Output<String> url;

  LambdaEfsStack() {
    final vpc = awsx.ec2.Vpc(
      'vpc',
      args: awsx.ec2.VpcArgs(
        enableDnsHostnames: true.input(),
        enableDnsSupport: true.input(),
      ),
    );

    final securityGroup = aws.ec2.SecurityGroup(
      'group',
      args: aws.ec2.SecurityGroupArgs(
        vpcId: vpc.vpcId,
        ingress: [
          aws.ec2.SecurityGroupIngress(
            protocol: 'tcp'.input(),
            fromPort: 2049.input(),
            toPort: 2049.input(),
            cidrBlocks: ['0.0.0.0/0'].input(),
          ),
        ].input(),
        egress: [
          aws.ec2.SecurityGroupEgress(
            protocol: '-1'.input(),
            fromPort: 0.input(),
            toPort: 0.input(),
            cidrBlocks: ['0.0.0.0/0'].input(),
          ),
        ].input(),
      ),
    );

    final fileSystem = aws.efs.FileSystem('filesystem');

    final mountTarget0 = aws.efs.MountTarget(
      'fs-mount-0',
      args: aws.efs.MountTargetArgs(
        fileSystemId: fileSystem.id,
        subnetId: vpc.publicSubnetIds.apply<String>((List<String> ids) => ids[0]).input(),
        securityGroups: pulumi.Output.all([securityGroup.id]).apply<List<String>>(
          (List<String> ids) => [ids[0]],
        ).input(),
      ),
    );

    final mountTarget1 = aws.efs.MountTarget(
      'fs-mount-1',
      args: aws.efs.MountTargetArgs(
        fileSystemId: fileSystem.id,
        subnetId: vpc.publicSubnetIds.apply<String>((List<String> ids) => ids[1]).input(),
        securityGroups: pulumi.Output.all([securityGroup.id]).apply<List<String>>(
          (List<String> ids) => [ids[0]],
        ).input(),
      ),
    );

    final accessPoint = aws.efs.AccessPoint(
      'ap',
      args: aws.efs.AccessPointArgs(
        fileSystemId: fileSystem.id,
        posixUser: aws.efs.AccessPointPosixUser(
          uid: 1000.input(),
          gid: 1000.input(),
        ).input(),
        rootDirectory: aws.efs.AccessPointRootDirectory(
          path: '/www'.input(),
          creationInfo: aws.efs.AccessPointRootDirectoryCreationInfo(
            ownerGid: 1000.input(),
            ownerUid: 1000.input(),
            permissions: '755'.input(),
          ).input(),
        ).input(),
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [mountTarget0, mountTarget1]),
    );

    final lambdaRole = aws.iam.Role(
      'lambda-role',
      args: aws.iam.RoleArgs(
        assumeRolePolicy: jsonEncode({
          'Version': '2012-10-17',
          'Statement': [
            {
              'Effect': 'Allow',
              'Principal': {'Service': 'lambda.amazonaws.com'},
              'Action': 'sts:AssumeRole',
            },
          ],
        }).input(),
      ),
    );

    aws.iam.RolePolicyAttachment(
      'lambda-vpc-exec',
      args: aws.iam.RolePolicyAttachmentArgs(
        role: lambdaRole.name,
        policyArn:
            'arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole'
                .input(),
      ),
    );

    aws.iam.RolePolicyAttachment(
      'lambda-full-access',
      args: aws.iam.RolePolicyAttachmentArgs(
        role: lambdaRole.name,
        policyArn: 'arn:aws:iam::aws:policy/AWSLambda_FullAccess'.input(),
      ),
    );

    final vpcConfig = aws.lambda.FunctionVpcConfig(
      subnetIds: vpc.privateSubnetIds.apply<List<String>>((List<String> ids) => ids).input(),
      securityGroupIds: pulumi.Output.all([securityGroup.id]).apply<List<String>>(
        (List<String> ids) => [ids[0]],
      ).input(),
    ).input();

    final fsConfig = aws.lambda.FunctionFileSystemConfig(
      arn: accessPoint.arn,
      localMountPath: '/mnt/storage'.input(),
    ).input();

    final getHandler = aws.lambda.FunctionType(
      'get-handler',
      args: aws.lambda.FunctionArgs(
        role: lambdaRole.arn,
        runtime: 'nodejs20.x'.input(),
        handler: 'index.handler'.input(),
        code: pulumi.FileArchive('./lambda/get').input(),
        vpcConfig: vpcConfig,
        fileSystemConfig: fsConfig,
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [accessPoint]),
    );

    final uploadHandler = aws.lambda.FunctionType(
      'upload-handler',
      args: aws.lambda.FunctionArgs(
        role: lambdaRole.arn,
        runtime: 'nodejs20.x'.input(),
        handler: 'index.handler'.input(),
        code: pulumi.FileArchive('./lambda/upload').input(),
        vpcConfig: vpcConfig,
        fileSystemConfig: fsConfig,
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [accessPoint]),
    );

    final execHandler = aws.lambda.FunctionType(
      'exec-handler',
      args: aws.lambda.FunctionArgs(
        role: lambdaRole.arn,
        runtime: 'nodejs20.x'.input(),
        handler: 'index.handler'.input(),
        code: pulumi.FileArchive('./lambda/exec').input(),
        vpcConfig: vpcConfig,
        fileSystemConfig: fsConfig,
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [accessPoint]),
    );

    final api = awsx_apigw.index.RestAPI(
      'api',
      args: awsx_apigw.index.RestAPIArgs(
        routes: [
          awsx_apigw.index.Route(
            method: awsx_apigw_index.Method.valueGET.input(),
            path: 'files/{filename+}'.input(),
            eventHandler: getHandler.input(),
          ),
          awsx_apigw.index.Route(
            method: awsx_apigw_index.Method.valuePOST.input(),
            path: 'files/{filename+}'.input(),
            eventHandler: uploadHandler.input(),
          ),
          awsx_apigw.index.Route(
            method: awsx_apigw_index.Method.valuePOST.input(),
            path: '/'.input(),
            eventHandler: execHandler.input(),
          ),
        ].input(),
      ),
    );

    url = api.url;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('url', url)];
  }
}
