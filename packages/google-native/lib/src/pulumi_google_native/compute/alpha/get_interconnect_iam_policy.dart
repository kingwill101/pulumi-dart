import 'package:pulumi/pulumi.dart' hide Config;
import 'get_interconnect_iam_policy_args.dart';
import 'get_interconnect_iam_policy_result.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetInterconnectIamPolicyResult> getInterconnectIamPolicy(
  GetInterconnectIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getInterconnectIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInterconnectIamPolicyResult.fromMap(result);
}
