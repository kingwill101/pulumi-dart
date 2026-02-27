import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_subscription_pubsublite_v1_args.dart';
import 'get_subscription_pubsublite_v1_result.dart';

/// Returns the subscription configuration.
Future<GetSubscriptionPubsubliteV1Result> getSubscriptionPubsubliteV1(
  GetSubscriptionPubsubliteV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:pubsublite/v1:getSubscription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubscriptionPubsubliteV1Result.fromMap(result);
}
