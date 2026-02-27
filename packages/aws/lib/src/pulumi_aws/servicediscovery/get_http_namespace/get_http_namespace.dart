import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_http_namespace_args.dart';
import 'get_http_namespace_result.dart';

Future<GetHttpNamespaceResult> getHttpNamespace(
  GetHttpNamespaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:servicediscovery/getHttpNamespace:getHttpNamespace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHttpNamespaceResult.fromMap(result);
}
