import 'package:pulumi/pulumi.dart';
import 'get_connection_profile_iam_policy_args2.dart';
import 'get_connection_profile_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetConnectionProfileIamPolicyResult2> getConnectionProfileIamPolicy2(
  GetConnectionProfileIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datamigration/v1beta1:getConnectionProfileIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConnectionProfileIamPolicyResult2.fromMap(result);
}
