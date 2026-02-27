import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_target_iam_policy_args.dart';
import 'get_target_iam_policy_result.dart';

/// Retrieves the current IAM policy data for target
Future<GetTargetIamPolicyResult> getTargetIamPolicy(
  GetTargetIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:clouddeploy/getTargetIamPolicy:getTargetIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetIamPolicyResult.fromMap(result);
}
