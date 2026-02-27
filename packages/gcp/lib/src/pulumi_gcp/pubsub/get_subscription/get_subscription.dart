import 'package:pulumi/pulumi.dart';
import 'get_subscription_args.dart';
import 'get_subscription_result.dart';

/// Get information about a Google Cloud Pub/Sub Subscription. For more information see
/// the [official documentation](https://cloud.google.com/pubsub/docs/)
/// and [API](https://cloud.google.com/pubsub/docs/apis).
Future<GetSubscriptionResult> getSubscription(
  GetSubscriptionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:pubsub/getSubscription:getSubscription',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSubscriptionResult.fromMap(result);
}
