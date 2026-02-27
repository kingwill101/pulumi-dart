import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_iam_policy_run_v1_args.dart';
import 'get_job_iam_policy_run_v1_result.dart';

/// Get the IAM Access Control policy currently in effect for the given job. This result does not include any inherited policies.
Future<GetJobIamPolicyRunV1Result> getJobIamPolicyRunV1(
  GetJobIamPolicyRunV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:run/v1:getJobIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJobIamPolicyRunV1Result.fromMap(result);
}
