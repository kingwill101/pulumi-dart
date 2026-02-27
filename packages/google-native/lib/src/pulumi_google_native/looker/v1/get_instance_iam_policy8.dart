import 'package:pulumi/pulumi.dart' hide Config;
import 'get_instance_iam_policy_args8.dart';
import 'get_instance_iam_policy_result8.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetInstanceIamPolicyResult8> getInstanceIamPolicy8(
  GetInstanceIamPolicyArgs8 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:looker/v1:getInstanceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceIamPolicyResult8.fromMap(result);
}
