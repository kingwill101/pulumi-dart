import 'package:pulumi/pulumi.dart' hide Config;
import 'get_job_iam_policy_args2.dart';
import 'get_job_iam_policy_result2.dart';

/// Get the IAM Access Control policy currently in effect for the given job. This result does not include any inherited policies.
Future<GetJobIamPolicyResult2> getJobIamPolicy2(
  GetJobIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:run/v1:getJobIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetJobIamPolicyResult2.fromMap(result);
}
