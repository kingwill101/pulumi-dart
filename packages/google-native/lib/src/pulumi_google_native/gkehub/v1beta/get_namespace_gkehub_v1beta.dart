import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_namespace_gkehub_v1beta_args.dart';
import 'get_namespace_gkehub_v1beta_result.dart';

/// Returns the details of a fleet namespace.
Future<GetNamespaceGkehubV1betaResult> getNamespaceGkehubV1beta(
  GetNamespaceGkehubV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1beta:getNamespace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespaceGkehubV1betaResult.fromMap(result);
}
