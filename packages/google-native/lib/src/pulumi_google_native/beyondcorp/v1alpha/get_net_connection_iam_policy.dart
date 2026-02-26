import 'package:pulumi/pulumi.dart';
import 'get_net_connection_iam_policy_args.dart';
import 'get_net_connection_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetNetConnectionIamPolicyResult> getNetConnectionIamPolicy(
  GetNetConnectionIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getNetConnectionIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNetConnectionIamPolicyResult.fromMap(result);
}
