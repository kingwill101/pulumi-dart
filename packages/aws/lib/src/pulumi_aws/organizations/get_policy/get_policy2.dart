import 'package:pulumi/pulumi.dart';
import 'get_policy_args2.dart';
import 'get_policy_result2.dart';

/// Data source for managing an AWS Organizations Policy.
///
/// ## Example Usage
Future<GetPolicyResult2> getPolicy2(
  GetPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:organizations/getPolicy:getPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPolicyResult2.fromMap(result);
}
