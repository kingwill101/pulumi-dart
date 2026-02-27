import 'package:pulumi/pulumi.dart' hide Config;
import 'get_app_group_app_args.dart';
import 'get_app_group_app_result.dart';

/// Returns the details for an AppGroup app.
Future<GetAppGroupAppResult> getAppGroupApp(
  GetAppGroupAppArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getAppGroupApp',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAppGroupAppResult.fromMap(result);
}
