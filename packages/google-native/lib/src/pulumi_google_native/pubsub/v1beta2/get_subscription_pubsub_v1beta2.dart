import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_subscription_pubsub_v1beta2_args.dart';
import 'get_subscription_pubsub_v1beta2_result.dart';

/// Gets the configuration details of a subscription.
Future<GetSubscriptionPubsubV1beta2Result> getSubscriptionPubsubV1beta2(
  GetSubscriptionPubsubV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:pubsub/v1beta2:getSubscription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubscriptionPubsubV1beta2Result.fromMap(result);
}
