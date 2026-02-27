import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_forwarding_rule_compute_beta_args.dart';
import 'get_forwarding_rule_compute_beta_result.dart';

/// Returns the specified ForwardingRule resource.
Future<GetForwardingRuleComputeBetaResult> getForwardingRuleComputeBeta(
  GetForwardingRuleComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getForwardingRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetForwardingRuleComputeBetaResult.fromMap(result);
}
