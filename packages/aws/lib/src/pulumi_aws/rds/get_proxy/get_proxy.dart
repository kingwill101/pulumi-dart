import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_proxy_args.dart';
import 'get_proxy_result.dart';

/// Use this data source to get information about a DB Proxy.
Future<GetProxyResult> getProxy(
  GetProxyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getProxy:getProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProxyResult.fromMap(result);
}
