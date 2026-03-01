import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_kubeconfig_args.dart';
import 'get_kubeconfig_result.dart';

/// Generate a kubeconfig for cluster authentication that does not use the default AWS credential provider chain, and instead is scoped to the supported options in `KubeconfigOptions`.
///
/// The kubeconfig generated is automatically stringified for ease of use with the pulumi/kubernetes provider.
///
/// See for more details:
/// - https://docs.aws.amazon.com/eks/latest/userguide/create-kubeconfig.html
/// - https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-role.html
/// - https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-profiles.html
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_kubeconfig_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKubeconfigResult> getKubeconfig(
  GetKubeconfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'eks:index:Cluster/getKubeconfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKubeconfigResult.fromMap(result);
}
