import 'package:pulumi/pulumi.dart';
import 'get_open_id_connect_provider_args.dart';
import 'get_open_id_connect_provider_result.dart';

/// This data source can be used to fetch information about a specific
/// IAM OpenID Connect provider. By using this data source, you can retrieve the
/// the resource information by either its `arn` or `url`.
Future<GetOpenIdConnectProviderResult> getOpenIdConnectProvider(
  GetOpenIdConnectProviderArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iam/getOpenIdConnectProvider:getOpenIdConnectProvider',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOpenIdConnectProviderResult.fromMap(result);
}
