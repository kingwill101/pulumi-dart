import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;
import 'package:pulumi_aws_apigateway/pulumi_aws_apigateway.dart'
    as awsx_apigw;
import 'package:pulumi_awsx/pulumi_awsx.dart' as awsx;

class LambdaEfsStack extends pulumi.Stack {
  late final pulumi.Output<String> url;

  LambdaEfsStack() {
    final vpc = awsx.ec2.Vpc(
      'vpc',
      args: awsx.ec2.VpcArgs(enableDnsHostnames: true, enableDnsSupport: true),
    );

    final securityGroup = aws.ec2.SecurityGroup(
      'group',
      args: aws.ec2.SecurityGroupArgs(
        vpcId: vpc.vpcId,
        ingress: [
          aws.ec2.SecurityGroupIngress(
            protocol: 'tcp',
            fromPort: 2049,
            toPort: 2049,
            cidrBlocks: ['0.0.0.0/0'],
          ),
        ],
        egress: [
          aws.ec2.SecurityGroupEgress(
            protocol: '-1',
            fromPort: 0,
            toPort: 0,
            cidrBlocks: ['0.0.0.0/0'],
          ),
        ],
      ),
    );

    final fileSystem = aws.efs.FileSystem('filesystem');

    final mountTarget0 = aws.efs.MountTarget(
      'fs-mount-0',
      args: aws.efs.MountTargetArgs(
        fileSystemId: fileSystem.id,
        subnetId: vpc.publicSubnetIds.apply((ids) => ids[0]),
        securityGroups: securityGroup.id.apply((id) => [id]),
      ),
    );

    final mountTarget1 = aws.efs.MountTarget(
      'fs-mount-1',
      args: aws.efs.MountTargetArgs(
        fileSystemId: fileSystem.id,
        subnetId: vpc.publicSubnetIds.apply((ids) => ids[1]),
        securityGroups: securityGroup.id.apply((id) => [id]),
      ),
    );

    final accessPoint = aws.efs.AccessPoint(
      'ap',
      args: aws.efs.AccessPointArgs(
        fileSystemId: fileSystem.id,
        posixUser: aws.efs.AccessPointPosixUser(uid: 1000, gid: 1000).output(),
        rootDirectory: aws.efs.AccessPointRootDirectory(
          path: '/www',
          creationInfo: aws.efs.AccessPointRootDirectoryCreationInfo(
            ownerGid: 1000,
            ownerUid: 1000,
            permissions: '755',
          ).output(),
        ).output(),
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
        }),
      ),
    );

    aws.iam.RolePolicyAttachment(
      'lambda-vpc-exec',
      args: aws.iam.RolePolicyAttachmentArgs(
        role: lambdaRole.name,
        policyArn:
            'arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole',
      ),
    );

    aws.iam.RolePolicyAttachment(
      'lambda-full-access',
      args: aws.iam.RolePolicyAttachmentArgs(
        role: lambdaRole.name,
        policyArn: 'arn:aws:iam::aws:policy/AWSLambda_FullAccess',
      ),
    );

    final vpcConfig = aws.lambda.FunctionVpcConfig(
      subnetIds: vpc.privateSubnetIds,
      securityGroupIds: securityGroup.id.apply((id) => [id]),
    ).output();

    final fsConfig = aws.lambda.FunctionFileSystemConfig(
      arn: accessPoint.arn,
      localMountPath: '/mnt/storage',
    ).output();

    final getHandler = aws.lambda.FunctionType(
      'get-handler',
      args: aws.lambda.FunctionArgs(
        role: lambdaRole.arn,
        runtime: aws.lambda.Runtime.nodeJS20dX.value,
        handler: 'index.handler',
        code: pulumi.FileArchive('./lambda/get'),
        vpcConfig: vpcConfig,
        fileSystemConfig: fsConfig,
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [accessPoint]),
    );

    final uploadHandler = aws.lambda.FunctionType(
      'upload-handler',
      args: aws.lambda.FunctionArgs(
        role: lambdaRole.arn,
        runtime: aws.lambda.Runtime.nodeJS20dX.value,
        handler: 'index.handler',
        code: pulumi.FileArchive('./lambda/upload'),
        vpcConfig: vpcConfig,
        fileSystemConfig: fsConfig,
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [accessPoint]),
    );

    final execHandler = aws.lambda.FunctionType(
      'exec-handler',
      args: aws.lambda.FunctionArgs(
        role: lambdaRole.arn,
        runtime: aws.lambda.Runtime.nodeJS20dX.value,
        handler: 'index.handler',
        code: pulumi.FileArchive('./lambda/exec'),
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
            method: awsx_apigw.index.Method.valueGET,
            path: 'files/{filename+}',
            eventHandler: getHandler,
          ),
          awsx_apigw.index.Route(
            method: awsx_apigw.index.Method.valuePOST,
            path: 'files/{filename+}',
            eventHandler: uploadHandler,
          ),
          awsx_apigw.index.Route(
            method: awsx_apigw.index.Method.valuePOST,
            path: '/',
            eventHandler: execHandler,
          ),
        ].output(),
      ),
    );

    url = api.url;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('url', url)];
  }
}
