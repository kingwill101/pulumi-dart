import 'package:pulumi/pulumi.dart';
import 'get_instance_iam_policy_args5.dart';
import 'get_instance_iam_policy_result5.dart';

/// Retrieves the current IAM policy data for instance
Future<GetInstanceIamPolicyResult5> getInstanceIamPolicy5(
  GetInstanceIamPolicyArgs5 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:securesourcemanager/getInstanceIamPolicy:getInstanceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceIamPolicyResult5.fromMap(result);
}
