import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_global_forwarding_rule_compute_beta_args.dart';
import 'get_global_forwarding_rule_compute_beta_result.dart';

/// Returns the specified GlobalForwardingRule resource. Gets a list of available forwarding rules by making a list() request.
Future<GetGlobalForwardingRuleComputeBetaResult>
    getGlobalForwardingRuleComputeBeta(
  GetGlobalForwardingRuleComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getGlobalForwardingRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGlobalForwardingRuleComputeBetaResult.fromMap(result);
}
