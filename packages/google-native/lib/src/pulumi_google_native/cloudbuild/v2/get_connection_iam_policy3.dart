import 'package:pulumi/pulumi.dart';
import 'get_connection_iam_policy_args3.dart';
import 'get_connection_iam_policy_result3.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetConnectionIamPolicyResult3> getConnectionIamPolicy3(
  GetConnectionIamPolicyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudbuild/v2:getConnectionIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConnectionIamPolicyResult3.fromMap(result);
}
