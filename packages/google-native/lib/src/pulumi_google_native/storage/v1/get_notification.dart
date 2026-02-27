import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_notification_args.dart';
import 'get_notification_result.dart';

/// View a notification configuration.
Future<GetNotificationResult> getNotification(
  GetNotificationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:storage/v1:getNotification',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNotificationResult.fromMap(result);
}
