import 'package:pulumi/pulumi.dart' hide Config;
import 'get_folder_notification_config_args.dart';
import 'get_folder_notification_config_result.dart';

/// Gets a notification config.
Future<GetFolderNotificationConfigResult> getFolderNotificationConfig(
  GetFolderNotificationConfigArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getFolderNotificationConfig',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFolderNotificationConfigResult.fromMap(result);
}
