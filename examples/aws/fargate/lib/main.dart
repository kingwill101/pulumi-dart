import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/lb.dart' as lb;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;
import 'package:pulumi_awsx/ec2.dart' as awsx_ec2;
import 'package:pulumi_docker/index.dart' as docker;

class FargateStack extends pulumi.Stack {
  late final pulumi.Output<String> url;

  FargateStack() {
    final vpc = awsx_ec2.Vpc(
      'vpc',
      args: awsx_ec2.VpcArgs(
        enableDnsHostnames: true.input(),
        cidrBlock: '10.0.0.0/16'.input(),
      ),
    );

    final webSg = aws.ec2.SecurityGroup(
      'web-sg',
      args: aws.ec2.SecurityGroupArgs(
        vpcId: vpc.vpcId.apply((v) => v!),
        egress: [
          aws.ec2.SecurityGroupEgress(
            protocol: '-1'.input(),
            fromPort: 0.input(),
            toPort: 0.input(),
            cidrBlocks: ['0.0.0.0/0'].input(),
          ),
        ].output(),
        ingress: [
          aws.ec2.SecurityGroupIngress(
            protocol: 'tcp'.input(),
            fromPort: 80.input(),
            toPort: 80.input(),
            cidrBlocks: ['0.0.0.0/0'].input(),
          ),
        ].output(),
      ),
    );

    final cluster = aws.ecs.Cluster('app-cluster');

    final taskExecRole = aws.iam.Role(
      'task-exec-role',
      args: aws.iam.RoleArgs(
        assumeRolePolicy: jsonEncode({
          'Version': '2008-10-17',
          'Statement': [
            {
              'Sid': '',
              'Effect': 'Allow',
              'Principal': {'Service': 'ecs-tasks.amazonaws.com'},
              'Action': 'sts:AssumeRole',
            },
          ],
        }).input(),
      ),
    );

    aws.iam.RolePolicyAttachment(
      'task-exec-policy',
      args: aws.iam.RolePolicyAttachmentArgs(
        role: taskExecRole.name,
        policyArn:
            'arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy'
                .input(),
      ),
    );

    final webSgIds = webSg.id.apply<List<String>>((sgId) => [sgId]).input();

    final webLb = lb.LoadBalancer(
      'web-lb',
      args: lb.LoadBalancerArgs(
        subnets: vpc.publicSubnetIds.apply((v) => v!),
        securityGroups: webSgIds,
      ),
    );

    final webTg = lb.TargetGroup(
      'web-tg',
      args: lb.TargetGroupArgs(
        port: 80.input(),
        protocol: 'HTTP'.input(),
        targetType: 'ip'.input(),
        vpcId: vpc.vpcId.apply((v) => v!),
      ),
    );

    final webListener = lb.Listener(
      'web-listener',
      args: lb.ListenerArgs(
        loadBalancerArn: webLb.arn,
        port: 80.input(),
        defaultActions: [
          lb.ListenerDefaultAction(
            type: 'forward'.input(),
            targetGroupArn: webTg.arn,
          ),
        ].output(),
      ),
    );

    final repo = aws.ecr.Repository(
      'foo',
      args: aws.ecr.RepositoryArgs(forceDelete: true.input()),
    );

    final repoCreds = repo.registryId.apply(
      (rid) => aws.ecr.getAuthorizationToken(
        aws.ecr.GetAuthorizationTokenArgs(registryId: rid.input()),
      ),
    );
    final repoUser = repoCreds.apply((c) => c.userName);
    final repoPass = repoCreds.apply((c) => c.password);

    final registry =
        pulumi.Output.tuple3(
          repo.repositoryUrl,
          repoUser,
          repoPass,
        ).apply<docker.Registry>(
          (v) => docker.Registry(
            server: v.$1.input(),
            username: v.$2.input(),
            password: v.$3.input(),
          ),
        );

    final image = docker.Image(
      'my-image',
      args: docker.ImageArgs(
        build: docker.DockerBuild(
          context: './app'.input(),
          platform: 'linux/amd64'.input(),
        ).input(),
        imageName: repo.repositoryUrl,
        registry: registry.input(),
      ),
    );

    final containerDef = image.imageName.apply<String>(
      (name) => jsonEncode([
        {
          'name': 'my-app',
          'image': name,
          'portMappings': [
            {'containerPort': 80, 'hostPort': 80, 'protocol': 'tcp'},
          ],
        },
      ]),
    );

    final appTask = aws.ecs.TaskDefinition(
      'app-task',
      args: aws.ecs.TaskDefinitionArgs(
        family: 'fargate-task-definition'.input(),
        cpu: '256'.input(),
        memory: '512'.input(),
        networkMode: 'awsvpc'.input(),
        requiresCompatibilities: ['FARGATE'].input(),
        executionRoleArn: taskExecRole.arn,
        containerDefinitions: containerDef.input(),
      ),
    );

    aws.ecs.Service(
      'app-svc',
      args: aws.ecs.ServiceArgs(
        cluster: cluster.arn,
        desiredCount: 5.input(),
        launchType: 'FARGATE'.input(),
        taskDefinition: appTask.arn.input(),
        networkConfiguration: aws.ecs
            .ServiceNetworkConfiguration(
              assignPublicIp: true.input(),
              subnets: vpc.publicSubnetIds.apply((v) => v!),
              securityGroups: webSgIds,
            )
            .input(),
        loadBalancers: [
          aws.ecs.ServiceLoadBalancer(
            targetGroupArn: webTg.arn,
            containerName: 'my-app'.input(),
            containerPort: 80.input(),
          ),
        ].input(),
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [webListener]),
    );

    url = webLb.dnsName.apply((dns) => 'http://$dns');
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('url', url)];
  }
}
