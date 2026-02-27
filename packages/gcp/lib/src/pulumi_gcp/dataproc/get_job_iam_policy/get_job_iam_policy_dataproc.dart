import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_iam_policy_dataproc_args.dart';
import 'get_job_iam_policy_dataproc_result.dart';

/// Retrieves the current IAM policy data for a Dataproc job.
///
/// ## example
Future<GetJobIamPolicyDataprocResult> getJobIamPolicyDataproc(
  GetJobIamPolicyDataprocArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataproc/getJobIamPolicy:getJobIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJobIamPolicyDataprocResult.fromMap(result);
}
