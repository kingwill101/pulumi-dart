import 'package:pulumi/pulumi.dart';
import 'get_mapping_rule_args.dart';
import 'get_mapping_rule_result.dart';

/// Gets the details of a mapping rule.
Future<GetMappingRuleResult> getMappingRule(
  GetMappingRuleArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datamigration/v1:getMappingRule',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMappingRuleResult.fromMap(result);
}
