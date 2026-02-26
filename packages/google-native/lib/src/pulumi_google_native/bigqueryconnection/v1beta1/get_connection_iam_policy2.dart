import 'package:pulumi/pulumi.dart';
import 'get_connection_iam_policy_args2.dart';
import 'get_connection_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetConnectionIamPolicyResult2> getConnectionIamPolicy2(
  GetConnectionIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigqueryconnection/v1beta1:getConnectionIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConnectionIamPolicyResult2.fromMap(result);
}
