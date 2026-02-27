import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_iam_policy_run_v2_args.dart';
import 'get_job_iam_policy_run_v2_result.dart';

/// Gets the IAM Access Control policy currently in effect for the given Job. This result does not include any inherited policies.
Future<GetJobIamPolicyRunV2Result> getJobIamPolicyRunV2(
  GetJobIamPolicyRunV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:run/v2:getJobIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJobIamPolicyRunV2Result.fromMap(result);
}
