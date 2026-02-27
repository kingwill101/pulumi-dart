import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_forwarding_rule_args.dart';
import 'get_forwarding_rule_result.dart';

/// Returns the specified ForwardingRule resource.
Future<GetForwardingRuleResult> getForwardingRule(
  GetForwardingRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getForwardingRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetForwardingRuleResult.fromMap(result);
}
