import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;
import 'package:pulumi_awsx/pulumi_awsx.dart' as awsx;

class EcsParallelStack extends pulumi.Stack {
  EcsParallelStack() {
    const image = 'docker.io/memcached:1.6.28';

    final clusterA = aws.ecs.Cluster('cluster-a');
    final clusterB = aws.ecs.Cluster('cluster-b');

    for (var i = 0; i < 5; i++) {
      awsx.ecs.FargateService(
        'cluster-a-service-$i',
        args: awsx.ecs.FargateServiceArgs(
          cluster: clusterA.arn,
          assignPublicIp: true.input(),
          desiredCount: 1.input(),
          forceNewDeployment: true.input(),
          triggers: {
            'redeployment': DateTime.now().millisecondsSinceEpoch.toString(),
          }.input(),
          taskDefinitionArgs: awsx.ecs
              .FargateServiceTaskDefinition(
                container: awsx.ecs
                    .TaskDefinitionContainerDefinition(
                      name: 'cluster-a-service-$i'.input(),
                      image: image.input(),
                      cpu: 128.input(),
                      memory: 512.input(),
                      essential: true.input(),
                    )
                    .input(),
              )
              .input(),
        ),
      );
    }

    for (var i = 0; i < 5; i++) {
      awsx.ecs.FargateService(
        'cluster-b-service-$i',
        args: awsx.ecs.FargateServiceArgs(
          cluster: clusterB.arn,
          assignPublicIp: true.input(),
          desiredCount: 1.input(),
          forceNewDeployment: true.input(),
          triggers: {
            'redeployment': DateTime.now().millisecondsSinceEpoch.toString(),
          }.input(),
          taskDefinitionArgs: awsx.ecs
              .FargateServiceTaskDefinition(
                container: awsx.ecs
                    .TaskDefinitionContainerDefinition(
                      name: 'cluster-b-service-$i'.input(),
                      image: image.input(),
                      cpu: 128.input(),
                      memory: 512.input(),
                      essential: true.input(),
                    )
                    .input(),
              )
              .input(),
        ),
      );
    }
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => [];
}
