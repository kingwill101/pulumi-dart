import 'package:pulumi/pulumi.dart';
import 'get_log_view_iam_policy_args.dart';
import 'get_log_view_iam_policy_result.dart';

/// Retrieves the current IAM policy data for logview
Future<GetLogViewIamPolicyResult> getLogViewIamPolicy(
  GetLogViewIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:logging/getLogViewIamPolicy:getLogViewIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetLogViewIamPolicyResult.fromMap(result);
}
