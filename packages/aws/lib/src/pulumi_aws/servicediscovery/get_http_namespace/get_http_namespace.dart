import 'package:pulumi/pulumi.dart';
import 'get_http_namespace_args.dart';
import 'get_http_namespace_result.dart';

Future<GetHttpNamespaceResult> getHttpNamespace(
  GetHttpNamespaceArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:servicediscovery/getHttpNamespace:getHttpNamespace',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetHttpNamespaceResult.fromMap(result);
}
