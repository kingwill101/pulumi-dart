import 'package:pulumi/pulumi.dart';
import 'get_policy_args2.dart';
import 'get_policy_result2.dart';

/// Fetches the representation of an existing Policy.
Future<GetPolicyResult2> getPolicy2(
  GetPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dns/v1:getPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPolicyResult2.fromMap(result);
}
