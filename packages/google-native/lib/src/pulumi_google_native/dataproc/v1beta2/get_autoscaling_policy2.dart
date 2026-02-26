import 'package:pulumi/pulumi.dart';
import 'get_autoscaling_policy_args2.dart';
import 'get_autoscaling_policy_result2.dart';

/// Retrieves autoscaling policy.
Future<GetAutoscalingPolicyResult2> getAutoscalingPolicy2(
  GetAutoscalingPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1beta2:getAutoscalingPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAutoscalingPolicyResult2.fromMap(result);
}
