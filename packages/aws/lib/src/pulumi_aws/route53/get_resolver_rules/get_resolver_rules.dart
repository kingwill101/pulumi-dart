import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resolver_rules_args.dart';
import 'get_resolver_rules_result.dart';

/// `aws.route53.getResolverRules` provides details about a set of Route53 Resolver rules.
///
/// ## Example Usage
///
/// ### Retrieving the default resolver rule
///
///
///
/// ### Retrieving forward rules shared with me
///
///
///
/// ### Retrieving rules by name regex
///
/// Resolver rules whose name contains `abc`.
Future<GetResolverRulesResult> getResolverRules(
  GetResolverRulesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:route53/getResolverRules:getResolverRules',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResolverRulesResult.fromMap(result);
}
