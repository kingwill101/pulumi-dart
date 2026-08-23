import 'package:pulumi/pulumi.dart' as pulumi;
import 'resolver_firewall_rule_args.dart';
import 'resolver_firewall_rule_state.dart';

/// Provides a Route 53 Resolver DNS Firewall rule resource.
///
/// ## Example Usage
///
/// ### Domain List Rule
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.route53.ResolverFirewallDomainList("example", {
///     name: "example",
///     domains: ["example.com"],
///     tags: {},
/// });
/// const exampleResolverFirewallRuleGroup = new aws.route53.ResolverFirewallRuleGroup("example", {
///     name: "example",
///     tags: {},
/// });
/// const exampleResolverFirewallRule = new aws.route53.ResolverFirewallRule("example", {
///     name: "example",
///     action: "BLOCK",
///     blockOverrideDnsType: "CNAME",
///     blockOverrideDomain: "example.com",
///     blockOverrideTtl: 1,
///     blockResponse: "OVERRIDE",
///     firewallDomainListId: example.id,
///     firewallRuleGroupId: exampleResolverFirewallRuleGroup.id,
///     priority: 100,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53.ResolverFirewallDomainList("example",
///     name="example",
///     domains=["example.com"],
///     tags={})
/// example_resolver_firewall_rule_group = aws.route53.ResolverFirewallRuleGroup("example",
///     name="example",
///     tags={})
/// example_resolver_firewall_rule = aws.route53.ResolverFirewallRule("example",
///     name="example",
///     action="BLOCK",
///     block_override_dns_type="CNAME",
///     block_override_domain="example.com",
///     block_override_ttl=1,
///     block_response="OVERRIDE",
///     firewall_domain_list_id=example.id,
///     firewall_rule_group_id=example_resolver_firewall_rule_group.id,
///     priority=100)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Route53.ResolverFirewallDomainList("example", new()
///     {
///         Name = "example",
///         Domains = new[]
///         {
///             "example.com",
///         },
///         Tags = null,
///     });
///
///     var exampleResolverFirewallRuleGroup = new Aws.Route53.ResolverFirewallRuleGroup("example", new()
///     {
///         Name = "example",
///         Tags = null,
///     });
///
///     var exampleResolverFirewallRule = new Aws.Route53.ResolverFirewallRule("example", new()
///     {
///         Name = "example",
///         Action = "BLOCK",
///         BlockOverrideDnsType = "CNAME",
///         BlockOverrideDomain = "example.com",
///         BlockOverrideTtl = 1,
///         BlockResponse = "OVERRIDE",
///         FirewallDomainListId = example.Id,
///         FirewallRuleGroupId = exampleResolverFirewallRuleGroup.Id,
///         Priority = 100,
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
/// 		example, err := route53.NewResolverFirewallDomainList(ctx, "example", &route53.ResolverFirewallDomainListArgs{
/// 			Name: pulumi.String("example"),
/// 			Domains: pulumi.StringArray{
/// 				pulumi.String("example.com"),
/// 			},
/// 			Tags: pulumi.StringMap{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleResolverFirewallRuleGroup, err := route53.NewResolverFirewallRuleGroup(ctx, "example", &route53.ResolverFirewallRuleGroupArgs{
/// 			Name: pulumi.String("example"),
/// 			Tags: pulumi.StringMap{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = route53.NewResolverFirewallRule(ctx, "example", &route53.ResolverFirewallRuleArgs{
/// 			Name:                 pulumi.String("example"),
/// 			Action:               pulumi.String("BLOCK"),
/// 			BlockOverrideDnsType: pulumi.String("CNAME"),
/// 			BlockOverrideDomain:  pulumi.String("example.com"),
/// 			BlockOverrideTtl:     pulumi.Int(1),
/// 			BlockResponse:        pulumi.String("OVERRIDE"),
/// 			FirewallDomainListId: example.ID().ToIDOutput().ToStringOutput(),
/// 			FirewallRuleGroupId:  exampleResolverFirewallRuleGroup.ID().ToIDOutput().ToStringOutput(),
/// 			Priority:             pulumi.Int(100),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_route53_resolverfirewalldomainlist" "example" {
///   name    = "example"
///   domains = ["example.com"]
///   tags    = {}
/// }
/// resource "aws_route53_resolverfirewallrulegroup" "example" {
///   name = "example"
///   tags = {}
/// }
/// resource "aws_route53_resolverfirewallrule" "example" {
///   name                    = "example"
///   action                  = "BLOCK"
///   block_override_dns_type = "CNAME"
///   block_override_domain   = "example.com"
///   block_override_ttl      = 1
///   block_response          = "OVERRIDE"
///   firewall_domain_list_id = aws_route53_resolverfirewalldomainlist.example.id
///   firewall_rule_group_id  = aws_route53_resolverfirewallrulegroup.example.id
///   priority                = 100
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.route53.ResolverFirewallDomainList;
/// import com.pulumi.aws.route53.ResolverFirewallDomainListArgs;
/// import com.pulumi.aws.route53.ResolverFirewallRuleGroup;
/// import com.pulumi.aws.route53.ResolverFirewallRuleGroupArgs;
/// import com.pulumi.aws.route53.ResolverFirewallRule;
/// import com.pulumi.aws.route53.ResolverFirewallRuleArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new ResolverFirewallDomainList("example", ResolverFirewallDomainListArgs.builder()
///             .name("example")
///             .domains("example.com")
///             .tags(Map.ofEntries(
///             ))
///             .build());
///
///         var exampleResolverFirewallRuleGroup = new ResolverFirewallRuleGroup("exampleResolverFirewallRuleGroup", ResolverFirewallRuleGroupArgs.builder()
///             .name("example")
///             .tags(Map.ofEntries(
///             ))
///             .build());
///
///         var exampleResolverFirewallRule = new ResolverFirewallRule("exampleResolverFirewallRule", ResolverFirewallRuleArgs.builder()
///             .name("example")
///             .action("BLOCK")
///             .blockOverrideDnsType("CNAME")
///             .blockOverrideDomain("example.com")
///             .blockOverrideTtl(1)
///             .blockResponse("OVERRIDE")
///             .firewallDomainListId(example.id())
///             .firewallRuleGroupId(exampleResolverFirewallRuleGroup.id())
///             .priority(100)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:route53:ResolverFirewallDomainList
///     properties:
///       name: example
///       domains:
///         - example.com
///       tags: {}
///   exampleResolverFirewallRuleGroup:
///     type: aws:route53:ResolverFirewallRuleGroup
///     name: example
///     properties:
///       name: example
///       tags: {}
///   exampleResolverFirewallRule:
///     type: aws:route53:ResolverFirewallRule
///     name: example
///     properties:
///       name: example
///       action: BLOCK
///       blockOverrideDnsType: CNAME
///       blockOverrideDomain: example.com
///       blockOverrideTtl: 1
///       blockResponse: OVERRIDE
///       firewallDomainListId: ${example.id}
///       firewallRuleGroupId: ${exampleResolverFirewallRuleGroup.id}
///       priority: 100
/// ```
///
///
/// ### DNS Firewall Advanced Rule
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.route53.ResolverFirewallRuleGroup("example", {
///     name: "example",
///     tags: {},
/// });
/// const exampleResolverFirewallRule = new aws.route53.ResolverFirewallRule("example", {
///     name: "block-dga",
///     action: "BLOCK",
///     blockResponse: "NODATA",
///     firewallRuleGroupId: example.id,
///     dnsThreatProtection: "DGA",
///     confidenceThreshold: "HIGH",
///     priority: 100,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53.ResolverFirewallRuleGroup("example",
///     name="example",
///     tags={})
/// example_resolver_firewall_rule = aws.route53.ResolverFirewallRule("example",
///     name="block-dga",
///     action="BLOCK",
///     block_response="NODATA",
///     firewall_rule_group_id=example.id,
///     dns_threat_protection="DGA",
///     confidence_threshold="HIGH",
///     priority=100)
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
///         Tags = null,
///     });
///
///     var exampleResolverFirewallRule = new Aws.Route53.ResolverFirewallRule("example", new()
///     {
///         Name = "block-dga",
///         Action = "BLOCK",
///         BlockResponse = "NODATA",
///         FirewallRuleGroupId = example.Id,
///         DnsThreatProtection = "DGA",
///         ConfidenceThreshold = "HIGH",
///         Priority = 100,
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
/// 			Tags: pulumi.StringMap{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = route53.NewResolverFirewallRule(ctx, "example", &route53.ResolverFirewallRuleArgs{
/// 			Name:                pulumi.String("block-dga"),
/// 			Action:              pulumi.String("BLOCK"),
/// 			BlockResponse:       pulumi.String("NODATA"),
/// 			FirewallRuleGroupId: example.ID().ToIDOutput().ToStringOutput(),
/// 			DnsThreatProtection: pulumi.String("DGA"),
/// 			ConfidenceThreshold: pulumi.String("HIGH"),
/// 			Priority:            pulumi.Int(100),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_route53_resolverfirewallrulegroup" "example" {
///   name = "example"
///   tags = {}
/// }
/// resource "aws_route53_resolverfirewallrule" "example" {
///   name                   = "block-dga"
///   action                 = "BLOCK"
///   block_response         = "NODATA"
///   firewall_rule_group_id = aws_route53_resolverfirewallrulegroup.example.id
///   dns_threat_protection  = "DGA"
///   confidence_threshold   = "HIGH"
///   priority               = 100
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
/// import com.pulumi.aws.route53.ResolverFirewallRule;
/// import com.pulumi.aws.route53.ResolverFirewallRuleArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///             .tags(Map.ofEntries(
///             ))
///             .build());
///
///         var exampleResolverFirewallRule = new ResolverFirewallRule("exampleResolverFirewallRule", ResolverFirewallRuleArgs.builder()
///             .name("block-dga")
///             .action("BLOCK")
///             .blockResponse("NODATA")
///             .firewallRuleGroupId(example.id())
///             .dnsThreatProtection("DGA")
///             .confidenceThreshold("HIGH")
///             .priority(100)
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
///       tags: {}
///   exampleResolverFirewallRule:
///     type: aws:route53:ResolverFirewallRule
///     name: example
///     properties:
///       name: block-dga
///       action: BLOCK
///       blockResponse: NODATA
///       firewallRuleGroupId: ${example.id}
///       dnsThreatProtection: DGA
///       confidenceThreshold: HIGH
///       priority: 100
/// ```
///
///
/// ## Import
///
/// DNS Firewall Advanced rule:
///
///
/// Using `pulumi import`, import Route 53 Resolver DNS Firewall rules using the Route 53 Resolver DNS Firewall rule group ID and domain list ID (for standard rules) or threat protection ID (for advanced rules) separated by ':'. For example:
///
/// ```sh
/// $ pulumi import aws:route53/resolverFirewallRule:ResolverFirewallRule example rslvr-frg-0123456789abcdef:rslvr-fdl-0123456789abcdef
/// ```
class ResolverFirewallRule extends pulumi.CustomResource {
  /// The action that DNS Firewall should take on a DNS query when it matches one of the domains in the rule's domain list, or a threat in a DNS Firewall Advanced rule. Valid values: `ALLOW`, `BLOCK`, `ALERT`. Note: `ALLOW` is not valid for DNS Firewall Advanced rules.
  late final pulumi.Output<String> action;
  /// The DNS record's type. This determines the format of the record value that you provided in BlockOverrideDomain. Value values: `CNAME`.
  late final pulumi.Output<String?> blockOverrideDnsType;
  /// The custom DNS record to send back in response to the query.
  late final pulumi.Output<String?> blockOverrideDomain;
  /// The recommended amount of time, in seconds, for the DNS resolver or web browser to cache the provided override record. Minimum value of 0. Maximum value of 604800.
  late final pulumi.Output<int?> blockOverrideTtl;
  /// The way that you want DNS Firewall to block the request. Valid values: `NODATA`, `NXDOMAIN`, `OVERRIDE`.
  late final pulumi.Output<String?> blockResponse;
  /// The confidence threshold for DNS Firewall Advanced rules. You must provide this value when creating a DNS Firewall Advanced rule. Valid values: `LOW`, `MEDIUM`, `HIGH`. Conflicts with `firewallDomainListId`.
  late final pulumi.Output<String?> confidenceThreshold;
  /// The type of DNS Firewall Advanced rule. You must provide this value when creating a DNS Firewall Advanced rule. Valid values: `DGA`, `DICTIONARY_DGA`, `DNS_TUNNELING`. Conflicts with `firewallDomainListId`.
  late final pulumi.Output<String?> dnsThreatProtection;
  /// The ID of the domain list that you want to use in the rule. Required for standard rules. Conflicts with `dnsThreatProtection` and `confidenceThreshold`.
  late final pulumi.Output<String?> firewallDomainListId;
  /// Evaluate DNS redirection in the DNS redirection chain, such as CNAME, DNAME, ot ALIAS. Valid values are `INSPECT_REDIRECTION_DOMAIN` and `TRUST_REDIRECTION_DOMAIN`. Default value is `INSPECT_REDIRECTION_DOMAIN`.
  late final pulumi.Output<String?> firewallDomainRedirectionAction;
  /// The unique identifier of the firewall rule group where you want to create the rule.
  late final pulumi.Output<String> firewallRuleGroupId;
  /// The ID of the DNS Firewall Advanced rule. Only set for DNS Firewall Advanced rules.
  late final pulumi.Output<String> firewallThreatProtectionId;
  /// A name that lets you identify the rule, to manage and use it.
  late final pulumi.Output<String> name;
  /// The setting that determines the processing order of the rule in the rule group. DNS Firewall processes the rules in a rule group by order of priority, starting from the lowest setting.
  late final pulumi.Output<int> priority;
  /// The query type you want the rule to evaluate. Additional details can be found [here](https://en.wikipedia.org/wiki/List_of_DNS_record_types)
  late final pulumi.Output<String?> qType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [ResolverFirewallRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResolverFirewallRule]. {@macro pulumi_route53_resolver_firewall_rule_resolver_firewall_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResolverFirewallRule(
    String name, {
    ResolverFirewallRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/resolverFirewallRule:ResolverFirewallRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    action = registerOutput<String>('action');
    blockOverrideDnsType = registerOutput<String?>('blockOverrideDnsType');
    blockOverrideDomain = registerOutput<String?>('blockOverrideDomain');
    blockOverrideTtl = registerOutput<int?>('blockOverrideTtl');
    blockResponse = registerOutput<String?>('blockResponse');
    confidenceThreshold = registerOutput<String?>('confidenceThreshold');
    dnsThreatProtection = registerOutput<String?>('dnsThreatProtection');
    firewallDomainListId = registerOutput<String?>('firewallDomainListId');
    firewallDomainRedirectionAction = registerOutput<String?>('firewallDomainRedirectionAction');
    firewallRuleGroupId = registerOutput<String>('firewallRuleGroupId');
    firewallThreatProtectionId = registerOutput<String>('firewallThreatProtectionId');
    this.name = registerOutput<String>('name');
    priority = registerOutput<int>('priority');
    qType = registerOutput<String?>('qType');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [ResolverFirewallRule] resource's state with the given [name] and [id].
  static ResolverFirewallRule get(
    String name,
    pulumi.Input<String> id, {
    ResolverFirewallRuleState? state,
  }) {
    return ResolverFirewallRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ResolverFirewallRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/resolverFirewallRule:ResolverFirewallRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    action = registerOutput<String>('action');
    blockOverrideDnsType = registerOutput<String?>('blockOverrideDnsType');
    blockOverrideDomain = registerOutput<String?>('blockOverrideDomain');
    blockOverrideTtl = registerOutput<int?>('blockOverrideTtl');
    blockResponse = registerOutput<String?>('blockResponse');
    confidenceThreshold = registerOutput<String?>('confidenceThreshold');
    dnsThreatProtection = registerOutput<String?>('dnsThreatProtection');
    firewallDomainListId = registerOutput<String?>('firewallDomainListId');
    firewallDomainRedirectionAction = registerOutput<String?>('firewallDomainRedirectionAction');
    firewallRuleGroupId = registerOutput<String>('firewallRuleGroupId');
    firewallThreatProtectionId = registerOutput<String>('firewallThreatProtectionId');
    this.name = registerOutput<String>('name');
    priority = registerOutput<int>('priority');
    qType = registerOutput<String?>('qType');
    region = registerOutput<String>('region');
  }
}
