import 'package:pulumi/pulumi.dart';
import 'get_security_group_rules_args.dart';
import 'get_security_group_rules_result.dart';

/// This resource can be useful for getting back a set of security group rule IDs.
Future<GetSecurityGroupRulesResult> getSecurityGroupRules(
  GetSecurityGroupRulesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:vpc/getSecurityGroupRules:getSecurityGroupRules',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSecurityGroupRulesResult.fromMap(result);
}
