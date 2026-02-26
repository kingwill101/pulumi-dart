import 'package:pulumi/pulumi.dart';
import 'get_instance_iam_policy_args5.dart';
import 'get_instance_iam_policy_result5.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetInstanceIamPolicyResult5> getInstanceIamPolicy5(
  GetInstanceIamPolicyArgs5 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getInstanceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceIamPolicyResult5.fromMap(result);
}
