import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_autoscaling_policy_iam_policy_args.dart';
import 'get_region_autoscaling_policy_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetRegionAutoscalingPolicyIamPolicyResult>
    getRegionAutoscalingPolicyIamPolicy(
  GetRegionAutoscalingPolicyIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1:getRegionAutoscalingPolicyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionAutoscalingPolicyIamPolicyResult.fromMap(result);
}
