import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_subscription_args.dart';
import 'get_subscription_result.dart';

/// Get information about a Google Cloud Pub/Sub Subscription. For more information see
/// the [official documentation](https://cloud.google.com/pubsub/docs/)
/// and [API](https://cloud.google.com/pubsub/docs/apis).
Future<GetSubscriptionResult> getSubscription(
  GetSubscriptionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:pubsub/getSubscription:getSubscription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubscriptionResult.fromMap(result);
}
