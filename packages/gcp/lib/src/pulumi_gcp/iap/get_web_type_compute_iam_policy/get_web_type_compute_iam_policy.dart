import 'package:pulumi/pulumi.dart';
import 'get_web_type_compute_iam_policy_args.dart';
import 'get_web_type_compute_iam_policy_result.dart';

/// Retrieves the current IAM policy data for webtypecompute
Future<GetWebTypeComputeIamPolicyResult> getWebTypeComputeIamPolicy(
  GetWebTypeComputeIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getWebTypeComputeIamPolicy:getWebTypeComputeIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWebTypeComputeIamPolicyResult.fromMap(result);
}
