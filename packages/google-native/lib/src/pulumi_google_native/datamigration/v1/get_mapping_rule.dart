import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_mapping_rule_args.dart';
import 'get_mapping_rule_result.dart';

/// Gets the details of a mapping rule.
Future<GetMappingRuleResult> getMappingRule(
  GetMappingRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datamigration/v1:getMappingRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMappingRuleResult.fromMap(result);
}
