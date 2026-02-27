import 'package:pulumi/pulumi.dart' hide Config;
import 'get_subscription_iam_policy_args3.dart';
import 'get_subscription_iam_policy_result3.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetSubscriptionIamPolicyResult3> getSubscriptionIamPolicy3(
  GetSubscriptionIamPolicyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:pubsub/v1beta2:getSubscriptionIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSubscriptionIamPolicyResult3.fromMap(result);
}
