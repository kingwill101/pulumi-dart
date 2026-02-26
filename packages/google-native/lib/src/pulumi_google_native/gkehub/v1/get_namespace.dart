import 'package:pulumi/pulumi.dart';
import 'get_namespace_args.dart';
import 'get_namespace_result.dart';

/// Returns the details of a fleet namespace.
Future<GetNamespaceResult> getNamespace(
  GetNamespaceArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1:getNamespace',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNamespaceResult.fromMap(result);
}
