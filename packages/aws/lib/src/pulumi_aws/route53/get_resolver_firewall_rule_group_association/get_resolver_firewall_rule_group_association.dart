import 'package:pulumi/pulumi.dart';
import 'get_resolver_firewall_rule_group_association_args.dart';
import 'get_resolver_firewall_rule_group_association_result.dart';

/// <span pulumi-lang-nodejs="`aws.route53.ResolverFirewallRuleGroupAssociation`" pulumi-lang-dotnet="`aws.route53.ResolverFirewallRuleGroupAssociation`" pulumi-lang-go="`route53.ResolverFirewallRuleGroupAssociation`" pulumi-lang-python="`route53.ResolverFirewallRuleGroupAssociation`" pulumi-lang-yaml="`aws.route53.ResolverFirewallRuleGroupAssociation`" pulumi-lang-java="`aws.route53.ResolverFirewallRuleGroupAssociation`">`aws.route53.ResolverFirewallRuleGroupAssociation`</span> Retrieves the specified firewall rule group association.
///
/// This data source allows to retrieve details about a specific a Route 53 Resolver DNS Firewall rule group association.
///
/// ## Example Usage
///
/// The following example shows how to get a firewall rule group association from its id.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.route53.getResolverFirewallRuleGroupAssociation({
/// firewallRuleGroupAssociationId: "rslvr-frgassoc-example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53.get_resolver_firewall_rule_group_association(firewall_rule_group_association_id="rslvr-frgassoc-example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Route53.GetResolverFirewallRuleGroupAssociation.Invoke(new()
/// {
/// FirewallRuleGroupAssociationId = "rslvr-frgassoc-example",
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
/// _, err := route53.LookupResolverFirewallRuleGroupAssociation(ctx, &route53.LookupResolverFirewallRuleGroupAssociationArgs{
/// FirewallRuleGroupAssociationId: "rslvr-frgassoc-example",
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
/// import com.pulumi.aws.route53.inputs.GetResolverFirewallRuleGroupAssociationArgs;
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
/// final var example = Route53Functions.getResolverFirewallRuleGroupAssociation(GetResolverFirewallRuleGroupAssociationArgs.builder()
/// .firewallRuleGroupAssociationId("rslvr-frgassoc-example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:route53:getResolverFirewallRuleGroupAssociation
/// arguments:
/// firewallRuleGroupAssociationId: rslvr-frgassoc-example
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetResolverFirewallRuleGroupAssociationResult>
    getResolverFirewallRuleGroupAssociation(
  GetResolverFirewallRuleGroupAssociationArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:route53/getResolverFirewallRuleGroupAssociation:getResolverFirewallRuleGroupAssociation',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetResolverFirewallRuleGroupAssociationResult.fromMap(result);
}
