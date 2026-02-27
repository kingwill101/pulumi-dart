import 'package:pulumi/pulumi.dart' hide Config;
import 'get_private_connection_iam_policy_args.dart';
import 'get_private_connection_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetPrivateConnectionIamPolicyResult> getPrivateConnectionIamPolicy(
  GetPrivateConnectionIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datamigration/v1:getPrivateConnectionIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPrivateConnectionIamPolicyResult.fromMap(result);
}
