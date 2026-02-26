import 'package:pulumi/pulumi.dart';
import 'get_kubeconfig_args2.dart';
import 'get_kubeconfig_result2.dart';

/// Generate a kubeconfig for cluster authentication.
///
/// The kubeconfig generated is automatically stringified for ease of use with the pulumi/kubernetes provider.
/// The kubeconfig uses the new `gke-gcloud-auth-plugin` authentication plugin as recommended by Google.
///
/// See for more details:
/// - https://cloud.google.com/blog/products/containers-kubernetes/kubectl-auth-changes-in-gke
Future<GetKubeconfigResult2> getKubeconfig2(
  GetKubeconfigArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:container/v1beta1:Cluster/getKubeconfig',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetKubeconfigResult2.fromMap(result);
}
