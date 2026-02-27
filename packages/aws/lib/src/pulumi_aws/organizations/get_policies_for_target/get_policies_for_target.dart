import 'package:pulumi/pulumi.dart';
import 'get_policies_for_target_args.dart';
import 'get_policies_for_target_result.dart';

/// Data source for managing an AWS Organizations Policies For Target.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetPoliciesForTargetResult> getPoliciesForTarget(
  GetPoliciesForTargetArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:organizations/getPoliciesForTarget:getPoliciesForTarget',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPoliciesForTargetResult.fromMap(result);
}
