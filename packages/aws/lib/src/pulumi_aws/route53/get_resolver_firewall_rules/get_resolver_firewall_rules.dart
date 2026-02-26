import 'package:pulumi/pulumi.dart';
import 'get_resolver_firewall_rules_args.dart';
import 'get_resolver_firewall_rules_result.dart';

/// <span pulumi-lang-nodejs="`aws.route53.getResolverFirewallRules`" pulumi-lang-dotnet="`aws.route53.getResolverFirewallRules`" pulumi-lang-go="`route53.getResolverFirewallRules`" pulumi-lang-python="`route53_get_resolver_firewall_rules`" pulumi-lang-yaml="`aws.route53.getResolverFirewallRules`" pulumi-lang-java="`aws.route53.getResolverFirewallRules`">`aws.route53.getResolverFirewallRules`</span> Provides details about rules in a specific Route53 Resolver Firewall rule group.
///
/// ## Example Usage
///
/// The following example shows how to get Route53 Resolver Firewall rules based on its associated firewall group id.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.route53.getResolverFirewallRules({
/// firewallRuleGroupId: exampleAwsRoute53ResolverFirewallRuleGroup.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53.get_resolver_firewall_rules(firewall_rule_group_id=example_aws_route53_resolver_firewall_rule_group["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Route53.GetResolverFirewallRules.Invoke(new()
/// {
/// FirewallRuleGroupId = exampleAwsRoute53ResolverFirewallRuleGroup.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := route53.GetResolverFirewallRules(ctx, &route53.GetResolverFirewallRulesArgs{
/// FirewallRuleGroupId: exampleAwsRoute53ResolverFirewallRuleGroup.Id,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.route53.Route53Functions;
/// import com.pulumi.aws.route53.inputs.GetResolverFirewallRulesArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var example = Route53Functions.getResolverFirewallRules(GetResolverFirewallRulesArgs.builder()
/// .firewallRuleGroupId(exampleAwsRoute53ResolverFirewallRuleGroup.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:route53:getResolverFirewallRules
/// arguments:
/// firewallRuleGroupId: ${exampleAwsRoute53ResolverFirewallRuleGroup.id}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetResolverFirewallRulesResult> getResolverFirewallRules(
  GetResolverFirewallRulesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:route53/getResolverFirewallRules:getResolverFirewallRules',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetResolverFirewallRulesResult.fromMap(result);
}
