import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_subscription_pubsub_v1_args.dart';
import 'get_subscription_pubsub_v1_result.dart';

/// Gets the configuration details of a subscription.
Future<GetSubscriptionPubsubV1Result> getSubscriptionPubsubV1(
  GetSubscriptionPubsubV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:pubsub/v1:getSubscription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubscriptionPubsubV1Result.fromMap(result);
}
