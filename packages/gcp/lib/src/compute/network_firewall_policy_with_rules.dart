import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_firewall_policy_with_rules_args.dart';
import 'network_firewall_policy_with_rules_predefined_rule.dart';
import 'network_firewall_policy_with_rules_rule.dart';

/// The Compute NetworkFirewallPolicy with rules resource
///
///
///
/// ## Example Usage
///
/// ### Compute Network Firewall Policy With Rules Full
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
///     description: "Global address group",
///     location: "global",
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
/// const securityProfile1 = new gcp.networksecurity.SecurityProfile("security_profile_1", {
///     name: "sp",
///     type: "THREAT_PREVENTION",
///     parent: "organizations/123456789",
///     location: "global",
/// });
/// const securityProfileGroup1 = new gcp.networksecurity.SecurityProfileGroup("security_profile_group_1", {
///     name: "spg",
///     parent: "organizations/123456789",
///     description: "my description",
///     threatPreventionProfile: securityProfile1.id,
/// });
/// const primary = new gcp.compute.NetworkFirewallPolicyWithRules("primary", {
///     name: "fw-policy",
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
///         {
///             description: "security profile group rule",
///             ruleName: "tcp rule",
///             priority: 3000,
///             enableLogging: false,
///             action: "apply_security_profile_group",
///             direction: "INGRESS",
///             targetServiceAccounts: ["test@google.com"],
///             securityProfileGroup: pulumi.interpolate`//networksecurity.googleapis.com/${securityProfileGroup1.id}`,
///             tlsInspect: true,
///             match: {
///                 srcIpRanges: ["0.0.0.0/0"],
///                 layer4Configs: [{
///                     ipProtocol: "tcp",
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
///     description="Global address group",
///     location="global",
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
/// security_profile1 = gcp.networksecurity.SecurityProfile("security_profile_1",
///     name="sp",
///     type="THREAT_PREVENTION",
///     parent="organizations/123456789",
///     location="global")
/// security_profile_group1 = gcp.networksecurity.SecurityProfileGroup("security_profile_group_1",
///     name="spg",
///     parent="organizations/123456789",
///     description="my description",
///     threat_prevention_profile=security_profile1.id)
/// primary = gcp.compute.NetworkFirewallPolicyWithRules("primary",
///     name="fw-policy",
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
///         {
///             "description": "security profile group rule",
///             "rule_name": "tcp rule",
///             "priority": 3000,
///             "enable_logging": False,
///             "action": "apply_security_profile_group",
///             "direction": "INGRESS",
///             "target_service_accounts": ["test@google.com"],
///             "security_profile_group": security_profile_group1.id.apply(lambda id: f"//networksecurity.googleapis.com/{id}"),
///             "tls_inspect": True,
///             "match": {
///                 "src_ip_ranges": ["0.0.0.0/0"],
///                 "layer4_configs": [{
///                     "ip_protocol": "tcp",
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
///         Description = "Global address group",
///         Location = "global",
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
///     var securityProfile1 = new Gcp.NetworkSecurity.SecurityProfile("security_profile_1", new()
///     {
///         Name = "sp",
///         Type = "THREAT_PREVENTION",
///         Parent = "organizations/123456789",
///         Location = "global",
///     });
///
///     var securityProfileGroup1 = new Gcp.NetworkSecurity.SecurityProfileGroup("security_profile_group_1", new()
///     {
///         Name = "spg",
///         Parent = "organizations/123456789",
///         Description = "my description",
///         ThreatPreventionProfile = securityProfile1.Id,
///     });
///
///     var primary = new Gcp.Compute.NetworkFirewallPolicyWithRules("primary", new()
///     {
///         Name = "fw-policy",
///         Description = "Terraform test",
///         Rules = new[]
///         {
///             new Gcp.Compute.Inputs.NetworkFirewallPolicyWithRulesRuleArgs
///             {
///                 Description = "tcp rule",
///                 Priority = 1000,
///                 EnableLogging = true,
///                 Action = "allow",
///                 Direction = "EGRESS",
///                 Match = new Gcp.Compute.Inputs.NetworkFirewallPolicyWithRulesRuleMatchArgs
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
///                         new Gcp.Compute.Inputs.NetworkFirewallPolicyWithRulesRuleMatchLayer4ConfigArgs
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
///                     new Gcp.Compute.Inputs.NetworkFirewallPolicyWithRulesRuleTargetSecureTagArgs
///                     {
///                         Name = secureTagValue1.Id,
///                     },
///                 },
///             },
///             new Gcp.Compute.Inputs.NetworkFirewallPolicyWithRulesRuleArgs
///             {
///                 Description = "udp rule",
///                 Priority = 2000,
///                 EnableLogging = false,
///                 Action = "deny",
///                 Direction = "INGRESS",
///                 Disabled = true,
///                 Match = new Gcp.Compute.Inputs.NetworkFirewallPolicyWithRulesRuleMatchArgs
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
///                         new Gcp.Compute.Inputs.NetworkFirewallPolicyWithRulesRuleMatchSrcSecureTagArgs
///                         {
///                             Name = secureTagValue1.Id,
///                         },
///                     },
///                     Layer4Configs = new[]
///                     {
///                         new Gcp.Compute.Inputs.NetworkFirewallPolicyWithRulesRuleMatchLayer4ConfigArgs
///                         {
///                             IpProtocol = "udp",
///                         },
///                     },
///                 },
///             },
///             new Gcp.Compute.Inputs.NetworkFirewallPolicyWithRulesRuleArgs
///             {
///                 Description = "security profile group rule",
///                 RuleName = "tcp rule",
///                 Priority = 3000,
///                 EnableLogging = false,
///                 Action = "apply_security_profile_group",
///                 Direction = "INGRESS",
///                 TargetServiceAccounts = new[]
///                 {
///                     "test@google.com",
///                 },
///                 SecurityProfileGroup = securityProfileGroup1.Id.Apply(id => $"//networksecurity.googleapis.com/{id}"),
///                 TlsInspect = true,
///                 Match = new Gcp.Compute.Inputs.NetworkFirewallPolicyWithRulesRuleMatchArgs
///                 {
///                     SrcIpRanges = new[]
///                     {
///                         "0.0.0.0/0",
///                     },
///                     Layer4Configs = new[]
///                     {
///                         new Gcp.Compute.Inputs.NetworkFirewallPolicyWithRulesRuleMatchLayer4ConfigArgs
///                         {
///                             IpProtocol = "tcp",
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
/// 			Description: pulumi.String("Global address group"),
/// 			Location:    pulumi.String("global"),
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
/// 		securityProfile1, err := networksecurity.NewSecurityProfile(ctx, "security_profile_1", &networksecurity.SecurityProfileArgs{
/// 			Name:     pulumi.String("sp"),
/// 			Type:     pulumi.String("THREAT_PREVENTION"),
/// 			Parent:   pulumi.String("organizations/123456789"),
/// 			Location: pulumi.String("global"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		securityProfileGroup1, err := networksecurity.NewSecurityProfileGroup(ctx, "security_profile_group_1", &networksecurity.SecurityProfileGroupArgs{
/// 			Name:                    pulumi.String("spg"),
/// 			Parent:                  pulumi.String("organizations/123456789"),
/// 			Description:             pulumi.String("my description"),
/// 			ThreatPreventionProfile: securityProfile1.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewNetworkFirewallPolicyWithRules(ctx, "primary", &compute.NetworkFirewallPolicyWithRulesArgs{
/// 			Name:        pulumi.String("fw-policy"),
/// 			Description: pulumi.String("Terraform test"),
/// 			Rules: compute.NetworkFirewallPolicyWithRulesRuleArray{
/// 				&compute.NetworkFirewallPolicyWithRulesRuleArgs{
/// 					Description:   pulumi.String("tcp rule"),
/// 					Priority:      pulumi.Int(1000),
/// 					EnableLogging: pulumi.Bool(true),
/// 					Action:        pulumi.String("allow"),
/// 					Direction:     pulumi.String("EGRESS"),
/// 					Match: &compute.NetworkFirewallPolicyWithRulesRuleMatchArgs{
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
/// 						Layer4Configs: compute.NetworkFirewallPolicyWithRulesRuleMatchLayer4ConfigArray{
/// 							&compute.NetworkFirewallPolicyWithRulesRuleMatchLayer4ConfigArgs{
/// 								IpProtocol: pulumi.String("tcp"),
/// 								Ports: pulumi.StringArray{
/// 									pulumi.String("8080"),
/// 									pulumi.String("7070"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					TargetSecureTags: compute.NetworkFirewallPolicyWithRulesRuleTargetSecureTagArray{
/// 						&compute.NetworkFirewallPolicyWithRulesRuleTargetSecureTagArgs{
/// 							Name: secureTagValue1.ID(),
/// 						},
/// 					},
/// 				},
/// 				&compute.NetworkFirewallPolicyWithRulesRuleArgs{
/// 					Description:   pulumi.String("udp rule"),
/// 					Priority:      pulumi.Int(2000),
/// 					EnableLogging: pulumi.Bool(false),
/// 					Action:        pulumi.String("deny"),
/// 					Direction:     pulumi.String("INGRESS"),
/// 					Disabled:      pulumi.Bool(true),
/// 					Match: &compute.NetworkFirewallPolicyWithRulesRuleMatchArgs{
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
/// 						SrcSecureTags: compute.NetworkFirewallPolicyWithRulesRuleMatchSrcSecureTagArray{
/// 							&compute.NetworkFirewallPolicyWithRulesRuleMatchSrcSecureTagArgs{
/// 								Name: secureTagValue1.ID(),
/// 							},
/// 						},
/// 						Layer4Configs: compute.NetworkFirewallPolicyWithRulesRuleMatchLayer4ConfigArray{
/// 							&compute.NetworkFirewallPolicyWithRulesRuleMatchLayer4ConfigArgs{
/// 								IpProtocol: pulumi.String("udp"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				&compute.NetworkFirewallPolicyWithRulesRuleArgs{
/// 					Description:   pulumi.String("security profile group rule"),
/// 					RuleName:      pulumi.String("tcp rule"),
/// 					Priority:      pulumi.Int(3000),
/// 					EnableLogging: pulumi.Bool(false),
/// 					Action:        pulumi.String("apply_security_profile_group"),
/// 					Direction:     pulumi.String("INGRESS"),
/// 					TargetServiceAccounts: pulumi.StringArray{
/// 						pulumi.String("test@google.com"),
/// 					},
/// 					SecurityProfileGroup: securityProfileGroup1.ID().ApplyT(func(id string) (string, error) {
/// 						return fmt.Sprintf("//networksecurity.googleapis.com/%v", id), nil
/// 					}).(pulumi.StringOutput),
/// 					TlsInspect: pulumi.Bool(true),
/// 					Match: &compute.NetworkFirewallPolicyWithRulesRuleMatchArgs{
/// 						SrcIpRanges: pulumi.StringArray{
/// 							pulumi.String("0.0.0.0/0"),
/// 						},
/// 						Layer4Configs: compute.NetworkFirewallPolicyWithRulesRuleMatchLayer4ConfigArray{
/// 							&compute.NetworkFirewallPolicyWithRulesRuleMatchLayer4ConfigArgs{
/// 								IpProtocol: pulumi.String("tcp"),
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
/// import com.pulumi.gcp.networksecurity.SecurityProfile;
/// import com.pulumi.gcp.networksecurity.SecurityProfileArgs;
/// import com.pulumi.gcp.networksecurity.SecurityProfileGroup;
/// import com.pulumi.gcp.networksecurity.SecurityProfileGroupArgs;
/// import com.pulumi.gcp.compute.NetworkFirewallPolicyWithRules;
/// import com.pulumi.gcp.compute.NetworkFirewallPolicyWithRulesArgs;
/// import com.pulumi.gcp.compute.inputs.NetworkFirewallPolicyWithRulesRuleArgs;
/// import com.pulumi.gcp.compute.inputs.NetworkFirewallPolicyWithRulesRuleMatchArgs;
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
///             .description("Global address group")
///             .location("global")
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
///         var securityProfile1 = new SecurityProfile("securityProfile1", SecurityProfileArgs.builder()
///             .name("sp")
///             .type("THREAT_PREVENTION")
///             .parent("organizations/123456789")
///             .location("global")
///             .build());
///
///         var securityProfileGroup1 = new SecurityProfileGroup("securityProfileGroup1", SecurityProfileGroupArgs.builder()
///             .name("spg")
///             .parent("organizations/123456789")
///             .description("my description")
///             .threatPreventionProfile(securityProfile1.id())
///             .build());
///
///         var primary = new NetworkFirewallPolicyWithRules("primary", NetworkFirewallPolicyWithRulesArgs.builder()
///             .name("fw-policy")
///             .description("Terraform test")
///             .rules(
///                 NetworkFirewallPolicyWithRulesRuleArgs.builder()
///                     .description("tcp rule")
///                     .priority(1000)
///                     .enableLogging(true)
///                     .action("allow")
///                     .direction("EGRESS")
///                     .match(NetworkFirewallPolicyWithRulesRuleMatchArgs.builder()
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
///                         .layer4Configs(NetworkFirewallPolicyWithRulesRuleMatchLayer4ConfigArgs.builder()
///                             .ipProtocol("tcp")
///                             .ports(
///                                 "8080",
///                                 "7070")
///                             .build())
///                         .build())
///                     .targetSecureTags(NetworkFirewallPolicyWithRulesRuleTargetSecureTagArgs.builder()
///                         .name(secureTagValue1.id())
///                         .build())
///                     .build(),
///                 NetworkFirewallPolicyWithRulesRuleArgs.builder()
///                     .description("udp rule")
///                     .priority(2000)
///                     .enableLogging(false)
///                     .action("deny")
///                     .direction("INGRESS")
///                     .disabled(true)
///                     .match(NetworkFirewallPolicyWithRulesRuleMatchArgs.builder()
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
///                         .srcSecureTags(NetworkFirewallPolicyWithRulesRuleMatchSrcSecureTagArgs.builder()
///                             .name(secureTagValue1.id())
///                             .build())
///                         .layer4Configs(NetworkFirewallPolicyWithRulesRuleMatchLayer4ConfigArgs.builder()
///                             .ipProtocol("udp")
///                             .build())
///                         .build())
///                     .build(),
///                 NetworkFirewallPolicyWithRulesRuleArgs.builder()
///                     .description("security profile group rule")
///                     .ruleName("tcp rule")
///                     .priority(3000)
///                     .enableLogging(false)
///                     .action("apply_security_profile_group")
///                     .direction("INGRESS")
///                     .targetServiceAccounts("test@google.com")
///                     .securityProfileGroup(securityProfileGroup1.id().applyValue(_id -> String.format("//networksecurity.googleapis.com/%s", _id)))
///                     .tlsInspect(true)
///                     .match(NetworkFirewallPolicyWithRulesRuleMatchArgs.builder()
///                         .srcIpRanges("0.0.0.0/0")
///                         .layer4Configs(NetworkFirewallPolicyWithRulesRuleMatchLayer4ConfigArgs.builder()
///                             .ipProtocol("tcp")
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
///     type: gcp:compute:NetworkFirewallPolicyWithRules
///     properties:
///       name: fw-policy
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
///         - description: security profile group rule
///           ruleName: tcp rule
///           priority: 3000
///           enableLogging: false
///           action: apply_security_profile_group
///           direction: INGRESS
///           targetServiceAccounts:
///             - test@google.com
///           securityProfileGroup: //networksecurity.googleapis.com/${securityProfileGroup1.id}
///           tlsInspect: true
///           match:
///             srcIpRanges:
///               - 0.0.0.0/0
///             layer4Configs:
///               - ipProtocol: tcp
///   addressGroup1:
///     type: gcp:networksecurity:AddressGroup
///     name: address_group_1
///     properties:
///       name: address-group
///       parent: ${project.id}
///       description: Global address group
///       location: global
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
///   securityProfileGroup1:
///     type: gcp:networksecurity:SecurityProfileGroup
///     name: security_profile_group_1
///     properties:
///       name: spg
///       parent: organizations/123456789
///       description: my description
///       threatPreventionProfile: ${securityProfile1.id}
///   securityProfile1:
///     type: gcp:networksecurity:SecurityProfile
///     name: security_profile_1
///     properties:
///       name: sp
///       type: THREAT_PREVENTION
///       parent: organizations/123456789
///       location: global
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// NetworkFirewallPolicyWithRules can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/firewallPolicies/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, NetworkFirewallPolicyWithRules can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/networkFirewallPolicyWithRules:NetworkFirewallPolicyWithRules default projects/{{project}}/global/firewallPolicies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/networkFirewallPolicyWithRules:NetworkFirewallPolicyWithRules default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/networkFirewallPolicyWithRules:NetworkFirewallPolicyWithRules default {{name}}
/// ```
class NetworkFirewallPolicyWithRules extends pulumi.CustomResource {
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
  /// Possible values are: `VPC_POLICY`.
  late final pulumi.Output<String> policyType;
  /// A list of firewall policy pre-defined rules.
  /// Structure is documented below.
  late final pulumi.Output<List<NetworkFirewallPolicyWithRulesPredefinedRule>> predefinedRules;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Total count of all firewall policy rule tuples. A firewall policy can not exceed a set number of tuples.
  late final pulumi.Output<int> ruleTupleCount;
  /// A list of firewall policy rules.
  /// Structure is documented below.
  late final pulumi.Output<List<NetworkFirewallPolicyWithRulesRule>> rules;
  /// Server-defined URL for the resource.
  late final pulumi.Output<String> selfLink;
  /// Server-defined URL for this resource with the resource id.
  late final pulumi.Output<String> selfLinkWithId;

  /// Creates a new [NetworkFirewallPolicyWithRules].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkFirewallPolicyWithRules]. {@macro pulumi_compute_network_firewall_policy_with_rules_network_firewall_policy_with_rules_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkFirewallPolicyWithRules(
    String name, {
    NetworkFirewallPolicyWithRulesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/networkFirewallPolicyWithRules:NetworkFirewallPolicyWithRules',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.name = registerOutput<String>('name');
    this.networkFirewallPolicyId = registerOutput<String>('networkFirewallPolicyId');
    this.policyType = registerOutput<String>('policyType');
    this.predefinedRules = registerOutput<List<NetworkFirewallPolicyWithRulesPredefinedRule>>('predefinedRules');
    this.project = registerOutput<String>('project');
    this.ruleTupleCount = registerOutput<int>('ruleTupleCount');
    this.rules = registerOutput<List<NetworkFirewallPolicyWithRulesRule>>('rules');
    this.selfLink = registerOutput<String>('selfLink');
    this.selfLinkWithId = registerOutput<String>('selfLinkWithId');
  }
}
