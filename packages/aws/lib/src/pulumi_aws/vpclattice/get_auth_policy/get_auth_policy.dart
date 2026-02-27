import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_auth_policy_args.dart';
import 'get_auth_policy_result.dart';

/// Data source for managing an AWS VPC Lattice Auth Policy.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetAuthPolicyResult> getAuthPolicy(
  GetAuthPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:vpclattice/getAuthPolicy:getAuthPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAuthPolicyResult.fromMap(result);
}
