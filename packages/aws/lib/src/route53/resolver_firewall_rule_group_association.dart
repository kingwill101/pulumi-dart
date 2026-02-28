import 'package:pulumi/pulumi.dart' as pulumi;
import 'resolver_firewall_rule_group_association_args.dart';

/// Provides a Route 53 Resolver DNS Firewall rule group association resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.route53.ResolverFirewallRuleGroup("example", {name: "example"});
/// const exampleResolverFirewallRuleGroupAssociation = new aws.route53.ResolverFirewallRuleGroupAssociation("example", {
///     name: "example",
///     firewallRuleGroupId: example.id,
///     priority: 100,
///     vpcId: exampleAwsVpc.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53.ResolverFirewallRuleGroup("example", name="example")
/// example_resolver_firewall_rule_group_association = aws.route53.ResolverFirewallRuleGroupAssociation("example",
///     name="example",
///     firewall_rule_group_id=example.id,
///     priority=100,
///     vpc_id=example_aws_vpc["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Route53.ResolverFirewallRuleGroup("example", new()
///     {
///         Name = "example",
///     });
///
///     var exampleResolverFirewallRuleGroupAssociation = new Aws.Route53.ResolverFirewallRuleGroupAssociation("example", new()
///     {
///         Name = "example",
///         FirewallRuleGroupId = example.Id,
///         Priority = 100,
///         VpcId = exampleAwsVpc.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := route53.NewResolverFirewallRuleGroup(ctx, "example", &route53.ResolverFirewallRuleGroupArgs{
/// 			Name: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = route53.NewResolverFirewallRuleGroupAssociation(ctx, "example", &route53.ResolverFirewallRuleGroupAssociationArgs{
/// 			Name:                pulumi.String("example"),
/// 			FirewallRuleGroupId: example.ID(),
/// 			Priority:            pulumi.Int(100),
/// 			VpcId:               pulumi.Any(exampleAwsVpc.Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new ResolverFirewallRuleGroup("example", ResolverFirewallRuleGroupArgs.builder()
///             .name("example")
///             .build());
///
///         var exampleResolverFirewallRuleGroupAssociation = new ResolverFirewallRuleGroupAssociation("exampleResolverFirewallRuleGroupAssociation", ResolverFirewallRuleGroupAssociationArgs.builder()
///             .name("example")
///             .firewallRuleGroupId(example.id())
///             .priority(100)
///             .vpcId(exampleAwsVpc.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:route53:ResolverFirewallRuleGroup
///     properties:
///       name: example
///   exampleResolverFirewallRuleGroupAssociation:
///     type: aws:route53:ResolverFirewallRuleGroupAssociation
///     name: example
///     properties:
///       name: example
///       firewallRuleGroupId: ${example.id}
///       priority: 100
///       vpcId: ${exampleAwsVpc.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Route 53 Resolver DNS Firewall rule group associations using the Route 53 Resolver DNS Firewall rule group association ID. For example:
///
/// ```sh
/// $ pulumi import aws:route53/resolverFirewallRuleGroupAssociation:ResolverFirewallRuleGroupAssociation example rslvr-frgassoc-0123456789abcdef
/// ```
class ResolverFirewallRuleGroupAssociation extends pulumi.CustomResource {
  /// The ARN (Amazon Resource Name) of the firewall rule group association.
  late final pulumi.Output<String> arn;
  /// The unique identifier of the firewall rule group.
  late final pulumi.Output<String> firewallRuleGroupId;
  /// If enabled, this setting disallows modification or removal of the association, to help prevent against accidentally altering DNS firewall protections. Valid values: `ENABLED`, `DISABLED`.
  late final pulumi.Output<String> mutationProtection;
  /// A name that lets you identify the rule group association, to manage and use it.
  late final pulumi.Output<String> name;
  /// The setting that determines the processing order of the rule group among the rule groups that you associate with the specified VPC. DNS Firewall filters VPC traffic starting from the rule group with the lowest numeric priority setting.
  late final pulumi.Output<int> priority;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The unique identifier of the VPC that you want to associate with the rule group.
  late final pulumi.Output<String> vpcId;

  /// Creates a new [ResolverFirewallRuleGroupAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResolverFirewallRuleGroupAssociation]. {@macro pulumi_route53_resolver_firewall_rule_group_association_resolver_firewall_rule_group_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResolverFirewallRuleGroupAssociation(
    String name, {
    ResolverFirewallRuleGroupAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/resolverFirewallRuleGroupAssociation:ResolverFirewallRuleGroupAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.firewallRuleGroupId = registerOutput<String>('firewallRuleGroupId');
    this.mutationProtection = registerOutput<String>('mutationProtection');
    this.name = registerOutput<String>('name');
    this.priority = registerOutput<int>('priority');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
