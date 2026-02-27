import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_group_app_key_args.dart';
import 'get_app_group_app_key_result.dart';

/// Gets details for a consumer key for a AppGroup app, including the key and secret value, associated API products, and other information.
Future<GetAppGroupAppKeyResult> getAppGroupAppKey(
  GetAppGroupAppKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getAppGroupAppKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppGroupAppKeyResult.fromMap(result);
}
