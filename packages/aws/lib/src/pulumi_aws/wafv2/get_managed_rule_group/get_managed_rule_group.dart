import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_rule_group_args.dart';
import 'get_managed_rule_group_result.dart';

/// High-level information for a managed rule group.
Future<GetManagedRuleGroupResult> getManagedRuleGroup(
  GetManagedRuleGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:wafv2/getManagedRuleGroup:getManagedRuleGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedRuleGroupResult.fromMap(result);
}
