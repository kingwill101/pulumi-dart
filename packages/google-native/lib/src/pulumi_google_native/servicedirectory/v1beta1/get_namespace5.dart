import 'package:pulumi/pulumi.dart';
import 'get_namespace_args5.dart';
import 'get_namespace_result5.dart';

/// Gets a namespace.
Future<GetNamespaceResult5> getNamespace5(
  GetNamespaceArgs5 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:servicedirectory/v1beta1:getNamespace',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNamespaceResult5.fromMap(result);
}
