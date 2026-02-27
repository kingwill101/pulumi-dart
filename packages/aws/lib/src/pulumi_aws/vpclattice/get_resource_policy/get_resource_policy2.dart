import 'package:pulumi/pulumi.dart';
import 'get_resource_policy_args2.dart';
import 'get_resource_policy_result2.dart';

/// Data source for managing an AWS VPC Lattice Resource Policy.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetResourcePolicyResult2> getResourcePolicy2(
  GetResourcePolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:vpclattice/getResourcePolicy:getResourcePolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetResourcePolicyResult2.fromMap(result);
}
