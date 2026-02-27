import 'package:pulumi/pulumi.dart';
import 'get_custom_target_type_iam_policy_args.dart';
import 'get_custom_target_type_iam_policy_result.dart';

/// Retrieves the current IAM policy data for customtargettype
Future<GetCustomTargetTypeIamPolicyResult> getCustomTargetTypeIamPolicy(
  GetCustomTargetTypeIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:clouddeploy/getCustomTargetTypeIamPolicy:getCustomTargetTypeIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCustomTargetTypeIamPolicyResult.fromMap(result);
}
