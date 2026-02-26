import 'package:pulumi/pulumi.dart';
import 'get_autoscaling_policy_iam_policy_args2.dart';
import 'get_autoscaling_policy_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetAutoscalingPolicyIamPolicyResult2> getAutoscalingPolicyIamPolicy2(
  GetAutoscalingPolicyIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1beta2:getAutoscalingPolicyIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAutoscalingPolicyIamPolicyResult2.fromMap(result);
}
