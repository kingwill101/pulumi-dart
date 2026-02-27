import 'package:pulumi/pulumi.dart' hide Config;
import 'get_notification_config_args.dart';
import 'get_notification_config_result.dart';

/// Gets a notification config.
Future<GetNotificationConfigResult> getNotificationConfig(
  GetNotificationConfigArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getNotificationConfig',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNotificationConfigResult.fromMap(result);
}
