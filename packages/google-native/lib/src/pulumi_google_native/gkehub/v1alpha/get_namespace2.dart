import 'package:pulumi/pulumi.dart' hide Config;
import 'get_namespace_args2.dart';
import 'get_namespace_result2.dart';

/// Returns the details of a fleet namespace.
Future<GetNamespaceResult2> getNamespace2(
  GetNamespaceArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1alpha:getNamespace',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNamespaceResult2.fromMap(result);
}
