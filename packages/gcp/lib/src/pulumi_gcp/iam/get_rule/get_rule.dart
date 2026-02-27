import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_rule_args.dart';
import 'get_rule_result.dart';

/// Use this data source to get information about a Google IAM Role.
Future<GetRuleResult> getRule(
  GetRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iam/getRule:getRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRuleResult.fromMap(result);
}
