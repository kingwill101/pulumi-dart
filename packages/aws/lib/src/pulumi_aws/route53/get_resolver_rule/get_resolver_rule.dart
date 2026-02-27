import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resolver_rule_args.dart';
import 'get_resolver_rule_result.dart';

/// `aws.route53.ResolverRule` provides details about a specific Route53 Resolver rule.
///
/// ## Example Usage
///
/// The following example shows how to get a Route53 Resolver rule based on its associated domain name and rule type.
Future<GetResolverRuleResult> getResolverRule(
  GetResolverRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:route53/getResolverRule:getResolverRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResolverRuleResult.fromMap(result);
}
