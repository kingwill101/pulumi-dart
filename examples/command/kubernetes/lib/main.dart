import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_command/local.dart' as commandlocal;
import 'package:pulumi_eks/index.dart' as eks;

class CommandKubernetesStack extends pulumi.Stack {
  CommandKubernetesStack() : super() {
    final config = pulumi.Config();
    final vpcId = config.require('vpcId');
    final publicSubnetIds = config
        .require('publicSubnetIds')
        .split(',')
        .map((s) => s.trim())
        .where((s) => s.isNotEmpty)
        .toList();
    final privateSubnetIds = config
        .require('privateSubnetIds')
        .split(',')
        .map((s) => s.trim())
        .where((s) => s.isNotEmpty)
        .toList();

    final cluster = eks.Cluster(
      'cluster',
      args: eks.ClusterArgs(
        vpcId: vpcId.output(),
        publicSubnetIds: publicSubnetIds.output(),
        privateSubnetIds: privateSubnetIds.output(),
      ),
    );

    final cleanupKubernetesNamespaces = commandlocal.Command(
      'cleanupKubernetesNamespaces',
      args: commandlocal.CommandArgs(
        delete:
            '''printf '%s' "\$KUBECONFIG" > kubeconfig.json && kubectl delete --all namespaces --kubeconfig kubeconfig.json'''
                .output(),
        environment: cluster.kubeconfigJson.apply((value) {
          return {'KUBECONFIG': value ?? ''};
        }),
      ),
    );

    registerOutputs({
      'kubeconfigJson': cluster.kubeconfigJson,
      'cleanupCommand': cleanupKubernetesNamespaces.id,
    });
  }
}
