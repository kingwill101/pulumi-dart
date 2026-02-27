import 'package:pulumi/pulumi.dart' hide Config;
import 'get_namespace_args4.dart';
import 'get_namespace_result4.dart';

/// Gets a namespace.
Future<GetNamespaceResult4> getNamespace4(
  GetNamespaceArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:servicedirectory/v1:getNamespace',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNamespaceResult4.fromMap(result);
}
