import 'package:pulumi/pulumi.dart' hide Config;
import 'get_namespace_args3.dart';
import 'get_namespace_result3.dart';

/// Returns the details of a fleet namespace.
Future<GetNamespaceResult3> getNamespace3(
  GetNamespaceArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1beta:getNamespace',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNamespaceResult3.fromMap(result);
}
