import 'package:pulumi/pulumi.dart';
import 'get_security_group_rule_args.dart';
import 'get_security_group_rule_result.dart';

/// `aws.vpc.getSecurityGroupRule` provides details about a specific security group rule.
Future<GetSecurityGroupRuleResult> getSecurityGroupRule(
  GetSecurityGroupRuleArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:vpc/getSecurityGroupRule:getSecurityGroupRule',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSecurityGroupRuleResult.fromMap(result);
}
