import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_security_group_rule_args.dart';
import 'get_security_group_rule_result.dart';

/// `aws.vpc.getSecurityGroupRule` provides details about a specific security group rule.
Future<GetSecurityGroupRuleResult> getSecurityGroupRule(
  GetSecurityGroupRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:vpc/getSecurityGroupRule:getSecurityGroupRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecurityGroupRuleResult.fromMap(result);
}
