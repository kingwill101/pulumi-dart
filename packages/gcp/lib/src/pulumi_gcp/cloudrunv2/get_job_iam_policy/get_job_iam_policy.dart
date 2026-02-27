import 'package:pulumi/pulumi.dart';
import 'get_job_iam_policy_args.dart';
import 'get_job_iam_policy_result.dart';

/// Retrieves the current IAM policy data for job
Future<GetJobIamPolicyResult> getJobIamPolicy(
  GetJobIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudrunv2/getJobIamPolicy:getJobIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetJobIamPolicyResult.fromMap(result);
}
