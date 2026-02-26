import 'package:pulumi/pulumi.dart';
import 'get_instance_iam_policy_args11.dart';
import 'get_instance_iam_policy_result11.dart';

/// Gets the access control policy for an instance resource. Returns an empty policy if an instance exists but does not have a policy set. Authorization requires `spanner.instances.getIamPolicy` on resource.
Future<GetInstanceIamPolicyResult11> getInstanceIamPolicy11(
  GetInstanceIamPolicyArgs11 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:spanner/v1:getInstanceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceIamPolicyResult11.fromMap(result);
}
