import 'package:pulumi/pulumi.dart' hide Config;
import 'get_job_iam_policy_args3.dart';
import 'get_job_iam_policy_result3.dart';

/// Gets the IAM Access Control policy currently in effect for the given Job. This result does not include any inherited policies.
Future<GetJobIamPolicyResult3> getJobIamPolicy3(
  GetJobIamPolicyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:run/v2:getJobIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetJobIamPolicyResult3.fromMap(result);
}
