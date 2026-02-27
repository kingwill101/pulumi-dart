import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resource_policy_vpclattice_args.dart';
import 'get_resource_policy_vpclattice_result.dart';

/// Data source for managing an AWS VPC Lattice Resource Policy.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetResourcePolicyVpclatticeResult> getResourcePolicyVpclattice(
  GetResourcePolicyVpclatticeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:vpclattice/getResourcePolicy:getResourcePolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResourcePolicyVpclatticeResult.fromMap(result);
}
