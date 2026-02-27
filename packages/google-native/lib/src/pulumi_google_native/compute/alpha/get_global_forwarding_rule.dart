import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_global_forwarding_rule_args.dart';
import 'get_global_forwarding_rule_result.dart';

/// Returns the specified GlobalForwardingRule resource. Gets a list of available forwarding rules by making a list() request.
Future<GetGlobalForwardingRuleResult> getGlobalForwardingRule(
  GetGlobalForwardingRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getGlobalForwardingRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGlobalForwardingRuleResult.fromMap(result);
}
