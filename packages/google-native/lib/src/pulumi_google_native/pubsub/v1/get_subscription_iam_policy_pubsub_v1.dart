import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_subscription_iam_policy_pubsub_v1_args.dart';
import 'get_subscription_iam_policy_pubsub_v1_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetSubscriptionIamPolicyPubsubV1Result> getSubscriptionIamPolicyPubsubV1(
  GetSubscriptionIamPolicyPubsubV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:pubsub/v1:getSubscriptionIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubscriptionIamPolicyPubsubV1Result.fromMap(result);
}
