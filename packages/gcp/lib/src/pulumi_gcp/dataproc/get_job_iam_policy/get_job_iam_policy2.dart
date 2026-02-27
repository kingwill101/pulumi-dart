import 'package:pulumi/pulumi.dart';
import 'get_job_iam_policy_args2.dart';
import 'get_job_iam_policy_result2.dart';

/// Retrieves the current IAM policy data for a Dataproc job.
///
/// ## example
Future<GetJobIamPolicyResult2> getJobIamPolicy2(
  GetJobIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataproc/getJobIamPolicy:getJobIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetJobIamPolicyResult2.fromMap(result);
}
