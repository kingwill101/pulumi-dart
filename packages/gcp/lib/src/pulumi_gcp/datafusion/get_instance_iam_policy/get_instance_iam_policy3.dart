import 'package:pulumi/pulumi.dart';
import 'get_instance_iam_policy_args3.dart';
import 'get_instance_iam_policy_result3.dart';

/// Retrieves the current IAM policy data for instance
Future<GetInstanceIamPolicyResult3> getInstanceIamPolicy3(
  GetInstanceIamPolicyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:datafusion/getInstanceIamPolicy:getInstanceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceIamPolicyResult3.fromMap(result);
}
