import 'package:pulumi/pulumi.dart' hide Config;
import 'get_resource_policy_args3.dart';
import 'get_resource_policy_result3.dart';

/// Retrieves all information of the specified resource policy.
Future<GetResourcePolicyResult3> getResourcePolicy3(
  GetResourcePolicyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getResourcePolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetResourcePolicyResult3.fromMap(result);
}
