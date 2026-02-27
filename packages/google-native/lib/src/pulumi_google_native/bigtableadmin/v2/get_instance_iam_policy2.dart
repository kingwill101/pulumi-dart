import 'package:pulumi/pulumi.dart' hide Config;
import 'get_instance_iam_policy_args2.dart';
import 'get_instance_iam_policy_result2.dart';

/// Gets the access control policy for an instance resource. Returns an empty policy if an instance exists but does not have a policy set.
Future<GetInstanceIamPolicyResult2> getInstanceIamPolicy2(
  GetInstanceIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigtableadmin/v2:getInstanceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceIamPolicyResult2.fromMap(result);
}
