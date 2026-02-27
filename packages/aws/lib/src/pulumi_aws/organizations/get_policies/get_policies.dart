import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_policies_args.dart';
import 'get_policies_result.dart';

/// Data source for managing an AWS Organizations Policies.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetPoliciesResult> getPolicies(
  GetPoliciesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:organizations/getPolicies:getPolicies',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPoliciesResult.fromMap(result);
}
