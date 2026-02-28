import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_network_firewall_policy_with_rules_args.dart';
import 'region_network_firewall_policy_with_rules_predefined_rule.dart';
import 'region_network_firewall_policy_with_rules_rule.dart';

/// The Compute NetworkFirewallPolicy with rules resource
///
///
///
/// ## Example Usage
///
/// ### Compute Region Network Firewall Policy With Rules Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const addressGroup1 = new gcp.networksecurity.AddressGroup("address_group_1", {
///     name: "address-group",
///     parent: project.then(project => project.id),
///     description: "Regional address group",
///     location: "us-west2",
///     items: ["208.80.154.224/32"],
///     type: "IPV4",
///     capacity: 100,
/// });
/// const secureTagKey1 = new gcp.tags.TagKey("secure_tag_key_1", {
///     description: "Tag key",
///     parent: project.then(project => project.id),
///     purpose: "GCE_FIREWALL",
///     shortName: "tag-key",
///     purposeData: {
///         network: project.then(project => `${project.name}/default`),
///     },
/// });
/// const secureTagValue1 = new gcp.tags.TagValue("secure_tag_value_1", {
///     description: "Tag value",
///     parent: secureTagKey1.id,
///     shortName: "tag-value",
/// });
/// const primary = new gcp.compute.RegionNetworkFirewallPolicyWithRules("primary", {
///     name: "fw-policy",
///     region: "us-west2",
///     description: "Terraform test",
///     rules: [
///         {
///             description: "tcp rule",
///             priority: 1000,
///             enableLogging: true,
///             action: "allow",
///             direction: "EGRESS",
///             match: {
///                 destIpRanges: ["11.100.0.1/32"],
///                 destFqdns: [
///                     "www.yyy.com",
///                     "www.zzz.com",
///                 ],
///                 destRegionCodes: [
///                     "HK",
///                     "IN",
///                 ],
///                 destThreatIntelligences: [
///                     "iplist-search-engines-crawlers",
///                     "iplist-tor-exit-nodes",
///                 ],
///                 destAddressGroups: [addressGroup1.id],
///                 layer4Configs: [{
///                     ipProtocol: "tcp",
///                     ports: [
///                         "8080",
///                         "7070",
///                     ],
///                 }],
///             },
///             targetSecureTags: [{
///                 name: secureTagValue1.id,
///             }],
///         },
///         {
///             description: "udp rule",
///             ruleName: "test-rule",
///             priority: 2000,
///             enableLogging: false,
///             action: "deny",
///             direction: "INGRESS",
///             disabled: true,
///             match: {
///                 srcIpRanges: ["0.0.0.0/0"],
///                 srcFqdns: [
///                     "www.abc.com",
///                     "www.def.com",
///                 ],
///                 srcRegionCodes: [
///                     "US",
///                     "CA",
///                 ],
///                 srcThreatIntelligences: [
///                     "iplist-known-malicious-ips",
///                     "iplist-public-clouds",
///                 ],
///                 srcAddressGroups: [addressGroup1.id],
///                 srcSecureTags: [{
///                     name: secureTagValue1.id,
///                 }],
///                 layer4Configs: [{
///                     ipProtocol: "udp",
///                 }],
///             },
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// address_group1 = gcp.networksecurity.AddressGroup("address_group_1",
///     name="address-group",
///     parent=project.id,
///     description="Regional address group",
///     location="us-west2",
///     items=["208.80.154.224/32"],
///     type="IPV4",
///     capacity=100)
/// secure_tag_key1 = gcp.tags.TagKey("secure_tag_key_1",
///     description="Tag key",
///     parent=project.id,
///     purpose="GCE_FIREWALL",
///     short_name="tag-key",
///     purpose_data={
///         "network": f"{project.name}/default",
///     })
/// secure_tag_value1 = gcp.tags.TagValue("secure_tag_value_1",
///     description="Tag value",
///     parent=secure_tag_key1.id,
///     short_name="tag-value")
/// primary = gcp.compute.RegionNetworkFirewallPolicyWithRules("primary",
///     name="fw-policy",
///     region="us-west2",
///     description="Terraform test",
///     rules=[
///         {
///             "description": "tcp rule",
///             "priority": 1000,
///             "enable_logging": True,
///             "action": "allow",
///             "direction": "EGRESS",
///             "match": {
///                 "dest_ip_ranges": ["11.100.0.1/32"],
///                 "dest_fqdns": [
///                     "www.yyy.com",
///                     "www.zzz.com",
///                 ],
///                 "dest_region_codes": [
///                     "HK",
///                     "IN",
///                 ],
///                 "dest_threat_intelligences": [
///                     "iplist-search-engines-crawlers",
///                     "iplist-tor-exit-nodes",
///                 ],
///                 "dest_address_groups": [address_group1.id],
///                 "layer4_configs": [{
///                     "ip_protocol": "tcp",
///                     "ports": [
///                         "8080",
///                         "7070",
///                     ],
///                 }],
///             },
///             "target_secure_tags": [{
///                 "name": secure_tag_value1.id,
///             }],
///         },
///         {
///             "description": "udp rule",
///             "rule_name": "test-rule",
///             "priority": 2000,
///             "enable_logging": False,
///             "action": "deny",
///             "direction": "INGRESS",
///             "disabled": True,
///             "match": {
///                 "src_ip_ranges": ["0.0.0.0/0"],
///                 "src_fqdns": [
///                     "www.abc.com",
///                     "www.def.com",
///                 ],
///                 "src_region_codes": [
///                     "US",
///                     "CA",
///                 ],
///                 "src_threat_intelligences": [
///                     "iplist-known-malicious-ips",
///                     "iplist-public-clouds",
///                 ],
///                 "src_address_groups": [address_group1.id],
///                 "src_secure_tags": [{
///                     "name": secure_tag_value1.id,
///                 }],
///                 "layer4_configs": [{
///                     "ip_protocol": "udp",
///                 }],
///             },
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var addressGroup1 = new Gcp.NetworkSecurity.AddressGroup("address_group_1", new()
///     {
///         Name = "address-group",
///         Parent = project.Apply(getProjectResult => getProjectResult.Id),
///         Description = "Regional address group",
///         Location = "us-west2",
///         Items = new[]
///         {
///             "208.80.154.224/32",
///         },
///         Type = "IPV4",
///         Capacity = 100,
///     });
///
///     var secureTagKey1 = new Gcp.Tags.TagKey("secure_tag_key_1", new()
///     {
///         Description = "Tag key",
///         Parent = project.Apply(getProjectResult => getProjectResult.Id),
///         Purpose = "GCE_FIREWALL",
///         ShortName = "tag-key",
///         PurposeData =
///         {
///             { "network", $"{project.Apply(getProjectResult => getProjectResult.Name)}/default" },
///         },
///     });
///
///     var secureTagValue1 = new Gcp.Tags.TagValue("secure_tag_value_1", new()
///     {
///         Description = "Tag value",
///         Parent = secureTagKey1.Id,
///         ShortName = "tag-value",
///     });
///
///     var primary = new Gcp.Compute.RegionNetworkFirewallPolicyWithRules("primary", new()
///     {
///         Name = "fw-policy",
///         Region = "us-west2",
///         Description = "Terraform test",
///         Rules = new[]
///         {
///             new Gcp.Compute.Inputs.RegionNetworkFirewallPolicyWithRulesRuleArgs
///             {
///                 Description = "tcp rule",
///                 Priority = 1000,
///                 EnableLogging = true,
///                 Action = "allow",
///                 Direction = "EGRESS",
///                 Match = new Gcp.Compute.Inputs.RegionNetworkFirewallPolicyWithRulesRuleMatchArgs
///                 {
///                     DestIpRanges = new[]
///                     {
///                         "11.100.0.1/32",
///                     },
///                     DestFqdns = new[]
///                     {
///                         "www.yyy.com",
///                         "www.zzz.com",
///                     },
///                     DestRegionCodes = new[]
///                     {
///                         "HK",
///                         "IN",
///                     },
///                     DestThreatIntelligences = new[]
///                     {
///                         "iplist-search-engines-crawlers",
///                         "iplist-tor-exit-nodes",
///                     },
///                     DestAddressGroups = new[]
///                     {
///                         addressGroup1.Id,
///                     },
///                     Layer4Configs = new[]
///                     {
///                         new Gcp.Compute.Inputs.RegionNetworkFirewallPolicyWithRulesRuleMatchLayer4ConfigArgs
///                         {
///                             IpProtocol = "tcp",
///                             Ports = new[]
///                             {
///                                 "8080",
///                                 "7070",
///                             },
///                         },
///                     },
///                 },
///                 TargetSecureTags = new[]
///                 {
///                     new Gcp.Compute.Inputs.RegionNetworkFirewallPolicyWithRulesRuleTargetSecureTagArgs
///                     {
///                         Name = secureTagValue1.Id,
///                     },
///                 },
///             },
///             new Gcp.Compute.Inputs.RegionNetworkFirewallPolicyWithRulesRuleArgs
///             {
///                 Description = "udp rule",
///                 RuleName = "test-rule",
///                 Priority = 2000,
///                 EnableLogging = false,
///                 Action = "deny",
///                 Direction = "INGRESS",
///                 Disabled = true,
///                 Match = new Gcp.Compute.Inputs.RegionNetworkFirewallPolicyWithRulesRuleMatchArgs
///                 {
///                     SrcIpRanges = new[]
///                     {
///                         "0.0.0.0/0",
///                     },
///                     SrcFqdns = new[]
///                     {
///                         "www.abc.com",
///                         "www.def.com",
///                     },
///                     SrcRegionCodes = new[]
///                     {
///                         "US",
///                         "CA",
///                     },
///                     SrcThreatIntelligences = new[]
///                     {
///                         "iplist-known-malicious-ips",
///                         "iplist-public-clouds",
///                     },
///                     SrcAddressGroups = new[]
///                     {
///                         addressGroup1.Id,
///                     },
///                     SrcSecureTags = new[]
///                     {
///                         new Gcp.Compute.Inputs.RegionNetworkFirewallPolicyWithRulesRuleMatchSrcSecureTagArgs
///                         {
///                             Name = secureTagValue1.Id,
///                         },
///                     },
///                     Layer4Configs = new[]
///                     {
///                         new Gcp.Compute.Inputs.RegionNetworkFirewallPolicyWithRulesRuleMatchLayer4ConfigArgs
///                         {
///                             IpProtocol = "udp",
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/tags"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		addressGroup1, err := networksecurity.NewAddressGroup(ctx, "address_group_1", &networksecurity.AddressGroupArgs{
/// 			Name:        pulumi.String("address-group"),
/// 			Parent:      pulumi.String(project.Id),
/// 			Description: pulumi.String("Regional address group"),
/// 			Location:    pulumi.String("us-west2"),
/// 			Items: pulumi.StringArray{
/// 				pulumi.String("208.80.154.224/32"),
/// 			},
/// 			Type:     pulumi.String("IPV4"),
/// 			Capacity: pulumi.Int(100),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secureTagKey1, err := tags.NewTagKey(ctx, "secure_tag_key_1", &tags.TagKeyArgs{
/// 			Description: pulumi.String("Tag key"),
/// 			Parent:      pulumi.String(project.Id),
/// 			Purpose:     pulumi.String("GCE_FIREWALL"),
/// 			ShortName:   pulumi.String("tag-key"),
/// 			PurposeData: pulumi.StringMap{
/// 				"network": pulumi.Sprintf("%v/default", project.Name),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secureTagValue1, err := tags.NewTagValue(ctx, "secure_tag_value_1", &tags.TagValueArgs{
/// 			Description: pulumi.String("Tag value"),
/// 			Parent:      secureTagKey1.ID(),
/// 			ShortName:   pulumi.String("tag-value"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionNetworkFirewallPolicyWithRules(ctx, "primary", &compute.RegionNetworkFirewallPolicyWithRulesArgs{
/// 			Name:        pulumi.String("fw-policy"),
/// 			Region:      pulumi.String("us-west2"),
/// 			Description: pulumi.String("Terraform test"),
/// 			Rules: compute.RegionNetworkFirewallPolicyWithRulesRuleArray{
/// 				&compute.RegionNetworkFirewallPolicyWithRulesRuleArgs{
/// 					Description:   pulumi.String("tcp rule"),
/// 					Priority:      pulumi.Int(1000),
/// 					EnableLogging: pulumi.Bool(true),
/// 					Action:        pulumi.String("allow"),
/// 					Direction:     pulumi.String("EGRESS"),
/// 					Match: &compute.RegionNetworkFirewallPolicyWithRulesRuleMatchArgs{
/// 						DestIpRanges: pulumi.StringArray{
/// 							pulumi.String("11.100.0.1/32"),
/// 						},
/// 						DestFqdns: pulumi.StringArray{
/// 							pulumi.String("www.yyy.com"),
/// 							pulumi.String("www.zzz.com"),
/// 						},
/// 						DestRegionCodes: pulumi.StringArray{
/// 							pulumi.String("HK"),
/// 							pulumi.String("IN"),
/// 						},
/// 						DestThreatIntelligences: pulumi.StringArray{
/// 							pulumi.String("iplist-search-engines-crawlers"),
/// 							pulumi.String("iplist-tor-exit-nodes"),
/// 						},
/// 						DestAddressGroups: pulumi.StringArray{
/// 							addressGroup1.ID(),
/// 						},
/// 						Layer4Configs: compute.RegionNetworkFirewallPolicyWithRulesRuleMatchLayer4ConfigArray{
/// 							&compute.RegionNetworkFirewallPolicyWithRulesRuleMatchLayer4ConfigArgs{
/// 								IpProtocol: pulumi.String("tcp"),
/// 								Ports: pulumi.StringArray{
/// 									pulumi.String("8080"),
/// 									pulumi.String("7070"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					TargetSecureTags: compute.RegionNetworkFirewallPolicyWithRulesRuleTargetSecureTagArray{
/// 						&compute.RegionNetworkFirewallPolicyWithRulesRuleTargetSecureTagArgs{
/// 							Name: secureTagValue1.ID(),
/// 						},
/// 					},
/// 				},
/// 				&compute.RegionNetworkFirewallPolicyWithRulesRuleArgs{
/// 					Description:   pulumi.String("udp rule"),
/// 					RuleName:      pulumi.String("test-rule"),
/// 					Priority:      pulumi.Int(2000),
/// 					EnableLogging: pulumi.Bool(false),
/// 					Action:        pulumi.String("deny"),
/// 					Direction:     pulumi.String("INGRESS"),
/// 					Disabled:      pulumi.Bool(true),
/// 					Match: &compute.RegionNetworkFirewallPolicyWithRulesRuleMatchArgs{
/// 						SrcIpRanges: pulumi.StringArray{
/// 							pulumi.String("0.0.0.0/0"),
/// 						},
/// 						SrcFqdns: pulumi.StringArray{
/// 							pulumi.String("www.abc.com"),
/// 							pulumi.String("www.def.com"),
/// 						},
/// 						SrcRegionCodes: pulumi.StringArray{
/// 							pulumi.String("US"),
/// 							pulumi.String("CA"),
/// 						},
/// 						SrcThreatIntelligences: pulumi.StringArray{
/// 							pulumi.String("iplist-known-malicious-ips"),
/// 							pulumi.String("iplist-public-clouds"),
/// 						},
/// 						SrcAddressGroups: pulumi.StringArray{
/// 							addressGroup1.ID(),
/// 						},
/// 						SrcSecureTags: compute.RegionNetworkFirewallPolicyWithRulesRuleMatchSrcSecureTagArray{
/// 							&compute.RegionNetworkFirewallPolicyWithRulesRuleMatchSrcSecureTagArgs{
/// 								Name: secureTagValue1.ID(),
/// 							},
/// 						},
/// 						Layer4Configs: compute.RegionNetworkFirewallPolicyWithRulesRuleMatchLayer4ConfigArray{
/// 							&compute.RegionNetworkFirewallPolicyWithRulesRuleMatchLayer4ConfigArgs{
/// 								IpProtocol: pulumi.String("udp"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.networksecurity.AddressGroup;
/// import com.pulumi.gcp.networksecurity.AddressGroupArgs;
/// import com.pulumi.gcp.tags.TagKey;
/// import com.pulumi.gcp.tags.TagKeyArgs;
/// import com.pulumi.gcp.tags.TagValue;
/// import com.pulumi.gcp.tags.TagValueArgs;
/// import com.pulumi.gcp.compute.RegionNetworkFirewallPolicyWithRules;
/// import com.pulumi.gcp.compute.RegionNetworkFirewallPolicyWithRulesArgs;
/// import com.pulumi.gcp.compute.inputs.RegionNetworkFirewallPolicyWithRulesRuleArgs;
/// import com.pulumi.gcp.compute.inputs.RegionNetworkFirewallPolicyWithRulesRuleMatchArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var addressGroup1 = new AddressGroup("addressGroup1", AddressGroupArgs.builder()
///             .name("address-group")
///             .parent(project.id())
///             .description("Regional address group")
///             .location("us-west2")
///             .items("208.80.154.224/32")
///             .type("IPV4")
///             .capacity(100)
///             .build());
///
///         var secureTagKey1 = new TagKey("secureTagKey1", TagKeyArgs.builder()
///             .description("Tag key")
///             .parent(project.id())
///             .purpose("GCE_FIREWALL")
///             .shortName("tag-key")
///             .purposeData(Map.of("network", String.format("%s/default", project.name())))
///             .build());
///
///         var secureTagValue1 = new TagValue("secureTagValue1", TagValueArgs.builder()
///             .description("Tag value")
///             .parent(secureTagKey1.id())
///             .shortName("tag-value")
///             .build());
///
///         var primary = new RegionNetworkFirewallPolicyWithRules("primary", RegionNetworkFirewallPolicyWithRulesArgs.builder()
///             .name("fw-policy")
///             .region("us-west2")
///             .description("Terraform test")
///             .rules(
///                 RegionNetworkFirewallPolicyWithRulesRuleArgs.builder()
///                     .description("tcp rule")
///                     .priority(1000)
///                     .enableLogging(true)
///                     .action("allow")
///                     .direction("EGRESS")
///                     .match(RegionNetworkFirewallPolicyWithRulesRuleMatchArgs.builder()
///                         .destIpRanges("11.100.0.1/32")
///                         .destFqdns(
///                             "www.yyy.com",
///                             "www.zzz.com")
///                         .destRegionCodes(
///                             "HK",
///                             "IN")
///                         .destThreatIntelligences(
///                             "iplist-search-engines-crawlers",
///                             "iplist-tor-exit-nodes")
///                         .destAddressGroups(addressGroup1.id())
///                         .layer4Configs(RegionNetworkFirewallPolicyWithRulesRuleMatchLayer4ConfigArgs.builder()
///                             .ipProtocol("tcp")
///                             .ports(
///                                 "8080",
///                                 "7070")
///                             .build())
///                         .build())
///                     .targetSecureTags(RegionNetworkFirewallPolicyWithRulesRuleTargetSecureTagArgs.builder()
///                         .name(secureTagValue1.id())
///                         .build())
///                     .build(),
///                 RegionNetworkFirewallPolicyWithRulesRuleArgs.builder()
///                     .description("udp rule")
///                     .ruleName("test-rule")
///                     .priority(2000)
///                     .enableLogging(false)
///                     .action("deny")
///                     .direction("INGRESS")
///                     .disabled(true)
///                     .match(RegionNetworkFirewallPolicyWithRulesRuleMatchArgs.builder()
///                         .srcIpRanges("0.0.0.0/0")
///                         .srcFqdns(
///                             "www.abc.com",
///                             "www.def.com")
///                         .srcRegionCodes(
///                             "US",
///                             "CA")
///                         .srcThreatIntelligences(
///                             "iplist-known-malicious-ips",
///                             "iplist-public-clouds")
///                         .srcAddressGroups(addressGroup1.id())
///                         .srcSecureTags(RegionNetworkFirewallPolicyWithRulesRuleMatchSrcSecureTagArgs.builder()
///                             .name(secureTagValue1.id())
///                             .build())
///                         .layer4Configs(RegionNetworkFirewallPolicyWithRulesRuleMatchLayer4ConfigArgs.builder()
///                             .ipProtocol("udp")
///                             .build())
///                         .build())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:compute:RegionNetworkFirewallPolicyWithRules
///     properties:
///       name: fw-policy
///       region: us-west2
///       description: Terraform test
///       rules:
///         - description: tcp rule
///           priority: 1000
///           enableLogging: true
///           action: allow
///           direction: EGRESS
///           match:
///             destIpRanges:
///               - 11.100.0.1/32
///             destFqdns:
///               - www.yyy.com
///               - www.zzz.com
///             destRegionCodes:
///               - HK
///               - IN
///             destThreatIntelligences:
///               - iplist-search-engines-crawlers
///               - iplist-tor-exit-nodes
///             destAddressGroups:
///               - ${addressGroup1.id}
///             layer4Configs:
///               - ipProtocol: tcp
///                 ports:
///                   - 8080
///                   - 7070
///           targetSecureTags:
///             - name: ${secureTagValue1.id}
///         - description: udp rule
///           ruleName: test-rule
///           priority: 2000
///           enableLogging: false
///           action: deny
///           direction: INGRESS
///           disabled: true
///           match:
///             srcIpRanges:
///               - 0.0.0.0/0
///             srcFqdns:
///               - www.abc.com
///               - www.def.com
///             srcRegionCodes:
///               - US
///               - CA
///             srcThreatIntelligences:
///               - iplist-known-malicious-ips
///               - iplist-public-clouds
///             srcAddressGroups:
///               - ${addressGroup1.id}
///             srcSecureTags:
///               - name: ${secureTagValue1.id}
///             layer4Configs:
///               - ipProtocol: udp
///   addressGroup1:
///     type: gcp:networksecurity:AddressGroup
///     name: address_group_1
///     properties:
///       name: address-group
///       parent: ${project.id}
///       description: Regional address group
///       location: us-west2
///       items:
///         - 208.80.154.224/32
///       type: IPV4
///       capacity: 100
///   secureTagKey1:
///     type: gcp:tags:TagKey
///     name: secure_tag_key_1
///     properties:
///       description: Tag key
///       parent: ${project.id}
///       purpose: GCE_FIREWALL
///       shortName: tag-key
///       purposeData:
///         network: ${project.name}/default
///   secureTagValue1:
///     type: gcp:tags:TagValue
///     name: secure_tag_value_1
///     properties:
///       description: Tag value
///       parent: ${secureTagKey1.id}
///       shortName: tag-value
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Compute Region Network Firewall Policy With Rules Roce
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = new gcp.compute.RegionNetworkFirewallPolicyWithRules("policy", {
///     name: "rnf-policy",
///     description: "Terraform test",
///     policyType: "RDMA_ROCE_POLICY",
///     rules: [{
///         description: "deny all rule",
///         priority: 1000,
///         enableLogging: true,
///         action: "deny",
///         direction: "INGRESS",
///         match: {
///             srcIpRanges: ["0.0.0.0/0"],
///             layer4Configs: [{
///                 ipProtocol: "all",
///             }],
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.RegionNetworkFirewallPolicyWithRules("policy",
///     name="rnf-policy",
///     description="Terraform test",
///     policy_type="RDMA_ROCE_POLICY",
///     rules=[{
///         "description": "deny all rule",
///         "priority": 1000,
///         "enable_logging": True,
///         "action": "deny",
///         "direction": "INGRESS",
///         "match": {
///             "src_ip_ranges": ["0.0.0.0/0"],
///             "layer4_configs": [{
///                 "ip_protocol": "all",
///             }],
///         },
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = new Gcp.Compute.RegionNetworkFirewallPolicyWithRules("policy", new()
///     {
///         Name = "rnf-policy",
///         Description = "Terraform test",
///         PolicyType = "RDMA_ROCE_POLICY",
///         Rules = new[]
///         {
///             new Gcp.Compute.Inputs.RegionNetworkFirewallPolicyWithRulesRuleArgs
///             {
///                 Description = "deny all rule",
///                 Priority = 1000,
///                 EnableLogging = true,
///                 Action = "deny",
///                 Direction = "INGRESS",
///                 Match = new Gcp.Compute.Inputs.RegionNetworkFirewallPolicyWithRulesRuleMatchArgs
///                 {
///                     SrcIpRanges = new[]
///                     {
///                         "0.0.0.0/0",
///                     },
///                     Layer4Configs = new[]
///                     {
///                         new Gcp.Compute.Inputs.RegionNetworkFirewallPolicyWithRulesRuleMatchLayer4ConfigArgs
///                         {
///                             IpProtocol = "all",
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewRegionNetworkFirewallPolicyWithRules(ctx, "policy", &compute.RegionNetworkFirewallPolicyWithRulesArgs{
/// 			Name:        pulumi.String("rnf-policy"),
/// 			Description: pulumi.String("Terraform test"),
/// 			PolicyType:  pulumi.String("RDMA_ROCE_POLICY"),
/// 			Rules: compute.RegionNetworkFirewallPolicyWithRulesRuleArray{
/// 				&compute.RegionNetworkFirewallPolicyWithRulesRuleArgs{
/// 					Description:   pulumi.String("deny all rule"),
/// 					Priority:      pulumi.Int(1000),
/// 					EnableLogging: pulumi.Bool(true),
/// 					Action:        pulumi.String("deny"),
/// 					Direction:     pulumi.String("INGRESS"),
/// 					Match: &compute.RegionNetworkFirewallPolicyWithRulesRuleMatchArgs{
/// 						SrcIpRanges: pulumi.StringArray{
/// 							pulumi.String("0.0.0.0/0"),
/// 						},
/// 						Layer4Configs: compute.RegionNetworkFirewallPolicyWithRulesRuleMatchLayer4ConfigArray{
/// 							&compute.RegionNetworkFirewallPolicyWithRulesRuleMatchLayer4ConfigArgs{
/// 								IpProtocol: pulumi.String("all"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
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
/// import com.pulumi.gcp.compute.RegionNetworkFirewallPolicyWithRules;
/// import com.pulumi.gcp.compute.RegionNetworkFirewallPolicyWithRulesArgs;
/// import com.pulumi.gcp.compute.inputs.RegionNetworkFirewallPolicyWithRulesRuleArgs;
/// import com.pulumi.gcp.compute.inputs.RegionNetworkFirewallPolicyWithRulesRuleMatchArgs;
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
///         var policy = new RegionNetworkFirewallPolicyWithRules("policy", RegionNetworkFirewallPolicyWithRulesArgs.builder()
///             .name("rnf-policy")
///             .description("Terraform test")
///             .policyType("RDMA_ROCE_POLICY")
///             .rules(RegionNetworkFirewallPolicyWithRulesRuleArgs.builder()
///                 .description("deny all rule")
///                 .priority(1000)
///                 .enableLogging(true)
///                 .action("deny")
///                 .direction("INGRESS")
///                 .match(RegionNetworkFirewallPolicyWithRulesRuleMatchArgs.builder()
///                     .srcIpRanges("0.0.0.0/0")
///                     .layer4Configs(RegionNetworkFirewallPolicyWithRulesRuleMatchLayer4ConfigArgs.builder()
///                         .ipProtocol("all")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:compute:RegionNetworkFirewallPolicyWithRules
///     properties:
///       name: rnf-policy
///       description: Terraform test
///       policyType: RDMA_ROCE_POLICY
///       rules:
///         - description: deny all rule
///           priority: 1000
///           enableLogging: true
///           action: deny
///           direction: INGRESS
///           match:
///             srcIpRanges:
///               - 0.0.0.0/0
///             layer4Configs:
///               - ipProtocol: all
/// ```
///
///
/// ## Import
///
/// RegionNetworkFirewallPolicyWithRules can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/firewallPolicies/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, RegionNetworkFirewallPolicyWithRules can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionNetworkFirewallPolicyWithRules:RegionNetworkFirewallPolicyWithRules default projects/{{project}}/regions/{{region}}/firewallPolicies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionNetworkFirewallPolicyWithRules:RegionNetworkFirewallPolicyWithRules default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionNetworkFirewallPolicyWithRules:RegionNetworkFirewallPolicyWithRules default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionNetworkFirewallPolicyWithRules:RegionNetworkFirewallPolicyWithRules default {{name}}
/// ```
class RegionNetworkFirewallPolicyWithRules extends pulumi.CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional description of this resource.
  late final pulumi.Output<String?> description;

  /// Fingerprint of the resource. This field is used internally during updates of this resource.
  late final pulumi.Output<String> fingerprint;

  /// User-provided name of the Network firewall policy.
  /// The name should be unique in the project in which the firewall policy is created.
  /// The name must be 1-63 characters long, and comply with RFC1035. Specifically,
  /// the name must be 1-63 characters long and match the regular expression a-z?
  /// which means the first character must be a lowercase letter, and all following characters must be a dash,
  /// lowercase letter, or digit, except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;

  /// The unique identifier for the resource. This identifier is defined by the server.
  late final pulumi.Output<String> networkFirewallPolicyId;

  /// Policy type is used to determine which resources (networks) the policy can be associated with.
  /// A policy can be associated with a network only if the network has the matching policyType in its network profile.
  /// Different policy types may support some of the Firewall Rules features.
  /// Possible values are: `VPC_POLICY`, `RDMA_ROCE_POLICY`.
  late final pulumi.Output<String> policyType;

  /// A list of firewall policy pre-defined rules.
  /// Structure is documented below.
  late final pulumi
      .Output<List<RegionNetworkFirewallPolicyWithRulesPredefinedRule>>
      predefinedRules;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The region of this resource.
  late final pulumi.Output<String> region;

  /// Total count of all firewall policy rule tuples. A firewall policy can not exceed a set number of tuples.
  late final pulumi.Output<int> ruleTupleCount;

  /// A list of firewall policy rules.
  /// Structure is documented below.
  late final pulumi.Output<List<RegionNetworkFirewallPolicyWithRulesRule>>
      rules;

  /// Server-defined URL for the resource.
  late final pulumi.Output<String> selfLink;

  /// Server-defined URL for this resource with the resource id.
  late final pulumi.Output<String> selfLinkWithId;

  /// Creates a new [RegionNetworkFirewallPolicyWithRules].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegionNetworkFirewallPolicyWithRules]. {@macro pulumi_compute_region_network_firewall_policy_with_rules_region_network_firewall_policy_with_rules_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegionNetworkFirewallPolicyWithRules(
    String name, {
    RegionNetworkFirewallPolicyWithRulesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionNetworkFirewallPolicyWithRules:RegionNetworkFirewallPolicyWithRules',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.name = registerOutput<String>('name');
    this.networkFirewallPolicyId =
        registerOutput<String>('networkFirewallPolicyId');
    this.policyType = registerOutput<String>('policyType');
    this.predefinedRules = registerOutput<
            List<RegionNetworkFirewallPolicyWithRulesPredefinedRule>>(
        'predefinedRules');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.ruleTupleCount = registerOutput<int>('ruleTupleCount');
    this.rules =
        registerOutput<List<RegionNetworkFirewallPolicyWithRulesRule>>('rules');
    this.selfLink = registerOutput<String>('selfLink');
    this.selfLinkWithId = registerOutput<String>('selfLinkWithId');
  }
}
