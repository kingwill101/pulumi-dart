import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_global_forwarding_rule_args.dart';
import 'get_global_forwarding_rule_result.dart';

/// Get a global forwarding rule within GCE from its name.
Future<GetGlobalForwardingRuleResult> getGlobalForwardingRule(
  GetGlobalForwardingRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getGlobalForwardingRule:getGlobalForwardingRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGlobalForwardingRuleResult.fromMap(result);
}
