import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_webhook_args.dart';
import 'get_webhook_result.dart';

/// Retrieves the specified webhook.
Future<GetWebhookResult> getWebhook(
  GetWebhookArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3:getWebhook',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebhookResult.fromMap(result);
}
