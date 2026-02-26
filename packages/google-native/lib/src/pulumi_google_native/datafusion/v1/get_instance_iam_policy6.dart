import 'package:pulumi/pulumi.dart';
import 'get_instance_iam_policy_args6.dart';
import 'get_instance_iam_policy_result6.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetInstanceIamPolicyResult6> getInstanceIamPolicy6(
  GetInstanceIamPolicyArgs6 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datafusion/v1:getInstanceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceIamPolicyResult6.fromMap(result);
}
