import 'package:pulumi/pulumi.dart';
import 'resolver_firewall_rule_group_association_args.dart';

/// Provides a Route 53 Resolver DNS Firewall rule group association resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.route53.ResolverFirewallRuleGroup("example", {name: "example"});
/// const exampleResolverFirewallRuleGroupAssociation = new aws.route53.ResolverFirewallRuleGroupAssociation("example", {
/// name: "example",
/// firewallRuleGroupId: example.id,
/// priority: 100,
/// vpcId: exampleAwsVpc.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53.ResolverFirewallRuleGroup("example", name="example")
/// example_resolver_firewall_rule_group_association = aws.route53.ResolverFirewallRuleGroupAssociation("example",
/// name="example",
/// firewall_rule_group_id=example.id,
/// priority=100,
/// vpc_id=example_aws_vpc["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Route53.ResolverFirewallRuleGroup("example", new()
/// {
/// Name = "example",
/// });
///
/// var exampleResolverFirewallRuleGroupAssociation = new Aws.Route53.ResolverFirewallRuleGroupAssociation("example", new()
/// {
/// Name = "example",
/// FirewallRuleGroupId = example.Id,
/// Priority = 100,
/// VpcId = exampleAwsVpc.Id,
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
/// example, err := route53.NewResolverFirewallRuleGroup(ctx, "example", &route53.ResolverFirewallRuleGroupArgs{
/// Name: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = route53.NewResolverFirewallRuleGroupAssociation(ctx, "example", &route53.ResolverFirewallRuleGroupAssociationArgs{
/// Name:                pulumi.String("example"),
/// FirewallRuleGroupId: example.ID(),
/// Priority:            pulumi.Int(100),
/// VpcId:               pulumi.Any(exampleAwsVpc.Id),
/// })
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
/// import com.pulumi.aws.route53.ResolverFirewallRuleGroup;
/// import com.pulumi.aws.route53.ResolverFirewallRuleGroupArgs;
/// import com.pulumi.aws.route53.ResolverFirewallRuleGroupAssociation;
/// import com.pulumi.aws.route53.ResolverFirewallRuleGroupAssociationArgs;
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
/// var example = new ResolverFirewallRuleGroup("example", ResolverFirewallRuleGroupArgs.builder()
/// .name("example")
/// .build());
///
/// var exampleResolverFirewallRuleGroupAssociation = new ResolverFirewallRuleGroupAssociation("exampleResolverFirewallRuleGroupAssociation", ResolverFirewallRuleGroupAssociationArgs.builder()
/// .name("example")
/// .firewallRuleGroupId(example.id())
/// .priority(100)
/// .vpcId(exampleAwsVpc.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:route53:ResolverFirewallRuleGroup
/// properties:
/// name: example
/// exampleResolverFirewallRuleGroupAssociation:
/// type: aws:route53:ResolverFirewallRuleGroupAssociation
/// name: example
/// properties:
/// name: example
/// firewallRuleGroupId: ${example.id}
/// priority: 100
/// vpcId: ${exampleAwsVpc.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Route 53 Resolver DNS Firewall rule group associations using the Route 53 Resolver DNS Firewall rule group association ID. For example:
///
/// ```sh
/// $ pulumi import aws:route53/resolverFirewallRuleGroupAssociation:ResolverFirewallRuleGroupAssociation example rslvr-frgassoc-0123456789abcdef
/// ```
class ResolverFirewallRuleGroupAssociation extends CustomResource {
  /// The ARN (Amazon Resource Name) of the firewall rule group association.
  late final Output<String> arn;

  /// The unique identifier of the firewall rule group.
  late final Output<String> firewallRuleGroupId;

  /// If enabled, this setting disallows modification or removal of the association, to help prevent against accidentally altering DNS firewall protections. Valid values: `ENABLED`, `DISABLED`.
  late final Output<String> mutationProtection;

  /// A name that lets you identify the rule group association, to manage and use it.
  late final Output<String> name;

  /// The setting that determines the processing order of the rule group among the rule groups that you associate with the specified VPC. DNS Firewall filters VPC traffic starting from the rule group with the lowest numeric priority setting.
  late final Output<int> priority;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The unique identifier of the VPC that you want to associate with the rule group.
  late final Output<String> vpcId;

  ResolverFirewallRuleGroupAssociation(
    String name, {
    ResolverFirewallRuleGroupAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:route53/resolverFirewallRuleGroupAssociation:ResolverFirewallRuleGroupAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.firewallRuleGroupId = Output.createUnknown<String>();
    this.mutationProtection = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.priority = Output.createUnknown<int>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.vpcId = Output.createUnknown<String>();
  }
}
