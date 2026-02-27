import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_keys_args.dart';
import 'get_api_keys_result.dart';

/// Data source for managing AWS API Gateway API Keys.
Future<GetApiKeysResult> getApiKeys(
  GetApiKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:apigateway/getApiKeys:getApiKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiKeysResult.fromMap(result);
}
