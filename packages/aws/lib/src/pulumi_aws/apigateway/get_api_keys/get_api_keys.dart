import 'package:pulumi/pulumi.dart';
import 'get_api_keys_args.dart';
import 'get_api_keys_result.dart';

/// Data source for managing AWS API Gateway API Keys.
Future<GetApiKeysResult> getApiKeys(
  GetApiKeysArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:apigateway/getApiKeys:getApiKeys',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetApiKeysResult.fromMap(result);
}
