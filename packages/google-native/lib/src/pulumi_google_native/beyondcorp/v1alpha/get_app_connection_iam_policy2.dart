import 'package:pulumi/pulumi.dart';
import 'get_app_connection_iam_policy_args2.dart';
import 'get_app_connection_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetAppConnectionIamPolicyResult2> getAppConnectionIamPolicy2(
  GetAppConnectionIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getAppConnectionIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAppConnectionIamPolicyResult2.fromMap(result);
}
