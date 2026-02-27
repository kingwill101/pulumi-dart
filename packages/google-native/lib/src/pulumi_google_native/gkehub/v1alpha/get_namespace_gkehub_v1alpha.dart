import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_namespace_gkehub_v1alpha_args.dart';
import 'get_namespace_gkehub_v1alpha_result.dart';

/// Returns the details of a fleet namespace.
Future<GetNamespaceGkehubV1alphaResult> getNamespaceGkehubV1alpha(
  GetNamespaceGkehubV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1alpha:getNamespace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespaceGkehubV1alphaResult.fromMap(result);
}
