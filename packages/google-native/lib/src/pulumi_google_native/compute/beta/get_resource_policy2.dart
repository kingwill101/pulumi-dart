import 'package:pulumi/pulumi.dart' hide Config;
import 'get_resource_policy_args2.dart';
import 'get_resource_policy_result2.dart';

/// Retrieves all information of the specified resource policy.
Future<GetResourcePolicyResult2> getResourcePolicy2(
  GetResourcePolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getResourcePolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetResourcePolicyResult2.fromMap(result);
}
