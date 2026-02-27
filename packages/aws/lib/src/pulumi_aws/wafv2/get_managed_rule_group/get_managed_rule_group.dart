import 'package:pulumi/pulumi.dart';
import 'get_managed_rule_group_args.dart';
import 'get_managed_rule_group_result.dart';

/// High-level information for a managed rule group.
Future<GetManagedRuleGroupResult> getManagedRuleGroup(
  GetManagedRuleGroupArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:wafv2/getManagedRuleGroup:getManagedRuleGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetManagedRuleGroupResult.fromMap(result);
}
