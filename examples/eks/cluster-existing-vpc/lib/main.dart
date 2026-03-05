import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_eks/index.dart' as eks;

class EksExistingVpcStack extends pulumi.Stack {
  EksExistingVpcStack() : super() {
    final config = pulumi.Config();
    final vpcId = config.require('vpcId');
    final publicSubnetIds = config
        .requireObject<List<dynamic>>('publicSubnetIds')
        .map((id) => id.toString())
        .toList();
    final clusterName = config.get('clusterName');

    final cluster = eks.Cluster(
      'cluster',
      args: eks.ClusterArgs(
        name: clusterName?.output(),
        vpcId: vpcId.output(),
        publicSubnetIds: publicSubnetIds.output(),
        skipDefaultNodeGroup: true.output(),
      ),
    );

    registerOutputs({
      'kubeconfigJson': cluster.kubeconfigJson,
      'clusterSecurityGroupId': cluster.clusterSecurityGroupId,
      'oidcProviderArn': cluster.oidcProviderArn,
    });
  }
}
