import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_webhook_dialogflow_v3beta1_args.dart';
import 'get_webhook_dialogflow_v3beta1_result.dart';

/// Retrieves the specified webhook.
Future<GetWebhookDialogflowV3beta1Result> getWebhookDialogflowV3beta1(
  GetWebhookDialogflowV3beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3beta1:getWebhook',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebhookDialogflowV3beta1Result.fromMap(result);
}
