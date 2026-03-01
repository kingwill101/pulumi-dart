import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;
import 'package:pulumi_awsx/pulumi_awsx.dart' as awsx;
import 'package:pulumi_docker/pulumi_docker.dart' as docker;

class FargateStack extends pulumi.Stack {
  late final pulumi.Output<String> url;

  FargateStack() {
    final vpc = awsx.ec2.Vpc(
      'vpc',
      args: awsx.ec2.VpcArgs(
        enableDnsHostnames: true,
        cidrBlock: '10.0.0.0/16',
      ),
    );

    final webSg = aws.ec2.SecurityGroup(
      'web-sg',
      args: aws.ec2.SecurityGroupArgs(
        vpcId: vpc.vpcId,
        egress: [
          aws.ec2.SecurityGroupEgress(
            protocol: '-1',
            fromPort: 0,
            toPort: 0,
            cidrBlocks: ['0.0.0.0/0'],
          ),
        ],
        ingress: [
          aws.ec2.SecurityGroupIngress(
            protocol: 'tcp',
            fromPort: 80,
            toPort: 80,
            cidrBlocks: ['0.0.0.0/0'],
          ),
        ],
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
        }),
      ),
    );

    aws.iam.RolePolicyAttachment(
      'task-exec-policy',
      args: aws.iam.RolePolicyAttachmentArgs(
        role: taskExecRole.name,
        policyArn:
            'arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy',
      ),
    );

    final webSgIds = webSg.id.apply((sgId) => [sgId]);

    final webLb = aws.lb.LoadBalancer(
      'web-lb',
      args: aws.lb.LoadBalancerArgs(
        subnets: vpc.publicSubnetIds,
        securityGroups: webSgIds,
      ),
    );

    final webTg = aws.lb.TargetGroup(
      'web-tg',
      args: aws.lb.TargetGroupArgs(
        port: 80,
        protocol: 'HTTP',
        targetType: 'ip',
        vpcId: vpc.vpcId,
      ),
    );

    final webListener = aws.lb.Listener(
      'web-listener',
      args: aws.lb.ListenerArgs(
        loadBalancerArn: webLb.arn,
        port: 80,
        defaultActions: [
          aws.lb.ListenerDefaultAction(
            type: 'forward',
            targetGroupArn: webTg.arn,
          ),
        ],
      ),
    );

    final repo = aws.ecr.Repository(
      'foo',
      args: aws.ecr.RepositoryArgs(forceDelete: true),
    );

    final repoCreds = repo.registryId.apply(
      (rid) => aws.ecr.getAuthorizationToken(
        aws.ecr.GetAuthorizationTokenArgs(registryId: rid),
      ),
    );
    final repoUser = repoCreds.apply((c) => c.userName);
    final repoPass = repoCreds.apply((c) => c.password);

    final registry = pulumi.Output.tuple3(
      repo.repositoryUrl,
      repoUser,
      repoPass,
    ).apply(
      (v) => docker.Registry(server: v.$1, username: v.$2, password: v.$3),
    );

    final image = docker.Image(
      'my-image',
      args: docker.ImageArgs(
        build: docker.DockerBuild(context: './app', platform: 'linux/amd64')
            .output(),
        imageName: repo.repositoryUrl,
        registry: registry,
      ),
    );

    final containerDef = image.imageName.apply(
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
        family: 'fargate-task-definition',
        cpu: '256',
        memory: '512',
        networkMode: 'awsvpc',
        requiresCompatibilities: ['FARGATE'],
        executionRoleArn: taskExecRole.arn,
        containerDefinitions: containerDef,
      ),
    );

    aws.ecs.Service(
      'app-svc',
      args: aws.ecs.ServiceArgs(
        cluster: cluster.arn,
        desiredCount: 5,
        launchType: 'FARGATE',
        taskDefinition: appTask.arn,
        networkConfiguration: aws.ecs.ServiceNetworkConfiguration(
          assignPublicIp: true,
          subnets: vpc.publicSubnetIds,
          securityGroups: webSgIds,
        ),
        loadBalancers: [
          aws.ecs.ServiceLoadBalancer(
            targetGroupArn: webTg.arn,
            containerName: 'my-app',
            containerPort: 80,
          ),
        ],
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
