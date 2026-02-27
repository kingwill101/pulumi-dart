import 'package:pulumi/pulumi.dart' hide Config;
import 'get_forwarding_rule_args.dart';
import 'get_forwarding_rule_result.dart';

/// Returns the specified ForwardingRule resource.
Future<GetForwardingRuleResult> getForwardingRule(
  GetForwardingRuleArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getForwardingRule',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetForwardingRuleResult.fromMap(result);
}
