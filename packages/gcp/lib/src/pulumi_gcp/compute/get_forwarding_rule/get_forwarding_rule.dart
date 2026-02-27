import 'package:pulumi/pulumi.dart';
import 'get_forwarding_rule_args.dart';
import 'get_forwarding_rule_result.dart';

/// Get a forwarding rule within GCE from its name.
Future<GetForwardingRuleResult> getForwardingRule(
  GetForwardingRuleArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getForwardingRule:getForwardingRule',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetForwardingRuleResult.fromMap(result);
}
