import 'package:pulumi/pulumi.dart';
import 'get_instance_iam_policy_args3.dart';
import 'get_instance_iam_policy_result3.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetInstanceIamPolicyResult3> getInstanceIamPolicy3(
  GetInstanceIamPolicyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getInstanceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceIamPolicyResult3.fromMap(result);
}
