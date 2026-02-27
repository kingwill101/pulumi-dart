import 'package:pulumi/pulumi.dart' hide Config;
import 'get_developer_app_key_args.dart';
import 'get_developer_app_key_result.dart';

/// Gets details for a consumer key for a developer app, including the key and secret value, associated API products, and other information.
Future<GetDeveloperAppKeyResult> getDeveloperAppKey(
  GetDeveloperAppKeyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getDeveloperAppKey',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDeveloperAppKeyResult.fromMap(result);
}
