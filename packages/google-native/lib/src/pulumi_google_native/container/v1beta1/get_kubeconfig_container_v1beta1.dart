import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_kubeconfig_container_v1beta1_args.dart';
import 'get_kubeconfig_container_v1beta1_result.dart';

/// Generate a kubeconfig for cluster authentication.
///
/// The kubeconfig generated is automatically stringified for ease of use with the pulumi/kubernetes provider.
/// The kubeconfig uses the new `gke-gcloud-auth-plugin` authentication plugin as recommended by Google.
///
/// See for more details:
/// - https://cloud.google.com/blog/products/containers-kubernetes/kubectl-auth-changes-in-gke
Future<GetKubeconfigContainerV1beta1Result> getKubeconfigContainerV1beta1(
  GetKubeconfigContainerV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:container/v1beta1:Cluster/getKubeconfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKubeconfigContainerV1beta1Result.fromMap(result);
}
