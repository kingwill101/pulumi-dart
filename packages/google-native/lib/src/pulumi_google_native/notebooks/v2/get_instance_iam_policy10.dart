import 'package:pulumi/pulumi.dart' hide Config;
import 'get_instance_iam_policy_args10.dart';
import 'get_instance_iam_policy_result10.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetInstanceIamPolicyResult10> getInstanceIamPolicy10(
  GetInstanceIamPolicyArgs10 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:notebooks/v2:getInstanceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceIamPolicyResult10.fromMap(result);
}
