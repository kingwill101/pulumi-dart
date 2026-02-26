import 'package:pulumi/pulumi.dart';
import 'get_instance_iam_policy_args9.dart';
import 'get_instance_iam_policy_result9.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetInstanceIamPolicyResult9> getInstanceIamPolicy9(
  GetInstanceIamPolicyArgs9 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:notebooks/v1:getInstanceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceIamPolicyResult9.fromMap(result);
}
