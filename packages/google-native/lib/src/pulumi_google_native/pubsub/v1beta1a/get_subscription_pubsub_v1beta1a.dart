import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_subscription_pubsub_v1beta1a_args.dart';
import 'get_subscription_pubsub_v1beta1a_result.dart';

/// Gets the configuration details of a subscription.
Future<GetSubscriptionPubsubV1beta1aResult> getSubscriptionPubsubV1beta1a(
  GetSubscriptionPubsubV1beta1aArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:pubsub/v1beta1a:getSubscription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubscriptionPubsubV1beta1aResult.fromMap(result);
}
