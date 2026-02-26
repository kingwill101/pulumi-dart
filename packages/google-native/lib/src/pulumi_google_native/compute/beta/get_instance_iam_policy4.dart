import 'package:pulumi/pulumi.dart';
import 'get_instance_iam_policy_args4.dart';
import 'get_instance_iam_policy_result4.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetInstanceIamPolicyResult4> getInstanceIamPolicy4(
  GetInstanceIamPolicyArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getInstanceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceIamPolicyResult4.fromMap(result);
}
