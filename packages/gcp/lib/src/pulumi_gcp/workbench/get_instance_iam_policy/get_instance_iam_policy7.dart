import 'package:pulumi/pulumi.dart';
import 'get_instance_iam_policy_args7.dart';
import 'get_instance_iam_policy_result7.dart';

/// Retrieves the current IAM policy data for instance
Future<GetInstanceIamPolicyResult7> getInstanceIamPolicy7(
  GetInstanceIamPolicyArgs7 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:workbench/getInstanceIamPolicy:getInstanceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceIamPolicyResult7.fromMap(result);
}
