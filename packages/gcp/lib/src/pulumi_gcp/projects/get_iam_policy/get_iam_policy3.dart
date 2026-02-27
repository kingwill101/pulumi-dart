import 'package:pulumi/pulumi.dart';
import 'get_iam_policy_args3.dart';
import 'get_iam_policy_result3.dart';

/// Retrieves the current IAM policy data for a project.
///
/// ## example
Future<GetIamPolicyResult3> getIamPolicy3(
  GetIamPolicyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:projects/getIamPolicy:getIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetIamPolicyResult3.fromMap(result);
}
