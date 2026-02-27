import 'package:pulumi/pulumi.dart';
import 'get_instance_iam_policy_args4.dart';
import 'get_instance_iam_policy_result4.dart';

/// Retrieves the current IAM policy data for instance
Future<GetInstanceIamPolicyResult4> getInstanceIamPolicy4(
  GetInstanceIamPolicyArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:notebooks/getInstanceIamPolicy:getInstanceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceIamPolicyResult4.fromMap(result);
}
