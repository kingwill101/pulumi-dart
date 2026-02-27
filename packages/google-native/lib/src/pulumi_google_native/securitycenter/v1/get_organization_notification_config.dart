import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_organization_notification_config_args.dart';
import 'get_organization_notification_config_result.dart';

/// Gets a notification config.
Future<GetOrganizationNotificationConfigResult>
    getOrganizationNotificationConfig(
  GetOrganizationNotificationConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getOrganizationNotificationConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationNotificationConfigResult.fromMap(result);
}
