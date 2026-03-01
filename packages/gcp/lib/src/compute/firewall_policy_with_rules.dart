import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_with_rules_args.dart';
import 'firewall_policy_with_rules_predefined_rule.dart';
import 'firewall_policy_with_rules_rule.dart';

/// The Compute FirewallPolicy with rules resource. It declaratively manges all
/// rules in the firewall policy.
///
///
///
/// ## Example Usage
///
/// ### Compute Firewall Policy With Rules Full
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
///     parent: "organizations/123456789",
///     description: "Global address group",
///     location: "global",
///     items: ["208.80.154.224/32"],
///     type: "IPV4",
///     capacity: 100,
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
/// const network = new gcp.compute.Network("network", {
///     name: "network",
///     autoCreateSubnetworks: false,
/// });
/// const basicKey = new gcp.tags.TagKey("basic_key", {
///     description: "For keyname resources.",
///     parent: "organizations/123456789",
///     purpose: "GCE_FIREWALL",
///     shortName: "tag-key",
///     purposeData: {
///         organization: "auto",
///     },
/// });
/// const basicValue = new gcp.tags.TagValue("basic_value", {
///     description: "For valuename resources.",
///     parent: basicKey.id,
///     shortName: "tag-value",
/// });
/// const primary = new gcp.compute.FirewallPolicyWithRules("primary", {
///     shortName: "fw-policy",
///     description: "Terraform test",
///     parent: "organizations/123456789",
///     rules: [
///         {
///             description: "tcp rule",
///             priority: 1000,
///             enableLogging: true,
///             action: "allow",
///             direction: "EGRESS",
///             targetResources: [network.selfLink],
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
///         {
///             description: "secure tags",
///             ruleName: "secure tags rule",
///             priority: 4000,
///             enableLogging: false,
///             action: "allow",
///             direction: "INGRESS",
///             targetSecureTags: [{
///                 name: basicValue.id,
///             }],
///             match: {
///                 srcIpRanges: ["11.100.0.1/32"],
///                 srcSecureTags: [{
///                     name: basicValue.id,
///                 }],
///                 layer4Configs: [{
///                     ipProtocol: "tcp",
///                     ports: ["8080"],
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
///     parent="organizations/123456789",
///     description="Global address group",
///     location="global",
///     items=["208.80.154.224/32"],
///     type="IPV4",
///     capacity=100)
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
/// network = gcp.compute.Network("network",
///     name="network",
///     auto_create_subnetworks=False)
/// basic_key = gcp.tags.TagKey("basic_key",
///     description="For keyname resources.",
///     parent="organizations/123456789",
///     purpose="GCE_FIREWALL",
///     short_name="tag-key",
///     purpose_data={
///         "organization": "auto",
///     })
/// basic_value = gcp.tags.TagValue("basic_value",
///     description="For valuename resources.",
///     parent=basic_key.id,
///     short_name="tag-value")
/// primary = gcp.compute.FirewallPolicyWithRules("primary",
///     short_name="fw-policy",
///     description="Terraform test",
///     parent="organizations/123456789",
///     rules=[
///         {
///             "description": "tcp rule",
///             "priority": 1000,
///             "enable_logging": True,
///             "action": "allow",
///             "direction": "EGRESS",
///             "target_resources": [network.self_link],
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
///         {
///             "description": "secure tags",
///             "rule_name": "secure tags rule",
///             "priority": 4000,
///             "enable_logging": False,
///             "action": "allow",
///             "direction": "INGRESS",
///             "target_secure_tags": [{
///                 "name": basic_value.id,
///             }],
///             "match": {
///                 "src_ip_ranges": ["11.100.0.1/32"],
///                 "src_secure_tags": [{
///                     "name": basic_value.id,
///                 }],
///                 "layer4_configs": [{
///                     "ip_protocol": "tcp",
///                     "ports": ["8080"],
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
///         Parent = "organizations/123456789",
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
///     var network = new Gcp.Compute.Network("network", new()
///     {
///         Name = "network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var basicKey = new Gcp.Tags.TagKey("basic_key", new()
///     {
///         Description = "For keyname resources.",
///         Parent = "organizations/123456789",
///         Purpose = "GCE_FIREWALL",
///         ShortName = "tag-key",
///         PurposeData =
///         {
///             { "organization", "auto" },
///         },
///     });
///
///     var basicValue = new Gcp.Tags.TagValue("basic_value", new()
///     {
///         Description = "For valuename resources.",
///         Parent = basicKey.Id,
///         ShortName = "tag-value",
///     });
///
///     var primary = new Gcp.Compute.FirewallPolicyWithRules("primary", new()
///     {
///         ShortName = "fw-policy",
///         Description = "Terraform test",
///         Parent = "organizations/123456789",
///         Rules = new[]
///         {
///             new Gcp.Compute.Inputs.FirewallPolicyWithRulesRuleArgs
///             {
///                 Description = "tcp rule",
///                 Priority = 1000,
///                 EnableLogging = true,
///                 Action = "allow",
///                 Direction = "EGRESS",
///                 TargetResources = new[]
///                 {
///                     network.SelfLink,
///                 },
///                 Match = new Gcp.Compute.Inputs.FirewallPolicyWithRulesRuleMatchArgs
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
///                         new Gcp.Compute.Inputs.FirewallPolicyWithRulesRuleMatchLayer4ConfigArgs
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
///             },
///             new Gcp.Compute.Inputs.FirewallPolicyWithRulesRuleArgs
///             {
///                 Description = "udp rule",
///                 Priority = 2000,
///                 EnableLogging = false,
///                 Action = "deny",
///                 Direction = "INGRESS",
///                 Disabled = true,
///                 Match = new Gcp.Compute.Inputs.FirewallPolicyWithRulesRuleMatchArgs
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
///                     Layer4Configs = new[]
///                     {
///                         new Gcp.Compute.Inputs.FirewallPolicyWithRulesRuleMatchLayer4ConfigArgs
///                         {
///                             IpProtocol = "udp",
///                         },
///                     },
///                 },
///             },
///             new Gcp.Compute.Inputs.FirewallPolicyWithRulesRuleArgs
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
///                 Match = new Gcp.Compute.Inputs.FirewallPolicyWithRulesRuleMatchArgs
///                 {
///                     SrcIpRanges = new[]
///                     {
///                         "0.0.0.0/0",
///                     },
///                     Layer4Configs = new[]
///                     {
///                         new Gcp.Compute.Inputs.FirewallPolicyWithRulesRuleMatchLayer4ConfigArgs
///                         {
///                             IpProtocol = "tcp",
///                         },
///                     },
///                 },
///             },
///             new Gcp.Compute.Inputs.FirewallPolicyWithRulesRuleArgs
///             {
///                 Description = "secure tags",
///                 RuleName = "secure tags rule",
///                 Priority = 4000,
///                 EnableLogging = false,
///                 Action = "allow",
///                 Direction = "INGRESS",
///                 TargetSecureTags = new[]
///                 {
///                     new Gcp.Compute.Inputs.FirewallPolicyWithRulesRuleTargetSecureTagArgs
///                     {
///                         Name = basicValue.Id,
///                     },
///                 },
///                 Match = new Gcp.Compute.Inputs.FirewallPolicyWithRulesRuleMatchArgs
///                 {
///                     SrcIpRanges = new[]
///                     {
///                         "11.100.0.1/32",
///                     },
///                     SrcSecureTags = new[]
///                     {
///                         new Gcp.Compute.Inputs.FirewallPolicyWithRulesRuleMatchSrcSecureTagArgs
///                         {
///                             Name = basicValue.Id,
///                         },
///                     },
///                     Layer4Configs = new[]
///                     {
///                         new Gcp.Compute.Inputs.FirewallPolicyWithRulesRuleMatchLayer4ConfigArgs
///                         {
///                             IpProtocol = "tcp",
///                             Ports = new[]
///                             {
///                                 "8080",
///                             },
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
/// 		_, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		addressGroup1, err := networksecurity.NewAddressGroup(ctx, "address_group_1", &networksecurity.AddressGroupArgs{
/// 			Name:        pulumi.String("address-group"),
/// 			Parent:      pulumi.String("organizations/123456789"),
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
/// 		network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		basicKey, err := tags.NewTagKey(ctx, "basic_key", &tags.TagKeyArgs{
/// 			Description: pulumi.String("For keyname resources."),
/// 			Parent:      pulumi.String("organizations/123456789"),
/// 			Purpose:     pulumi.String("GCE_FIREWALL"),
/// 			ShortName:   pulumi.String("tag-key"),
/// 			PurposeData: pulumi.StringMap{
/// 				"organization": pulumi.String("auto"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		basicValue, err := tags.NewTagValue(ctx, "basic_value", &tags.TagValueArgs{
/// 			Description: pulumi.String("For valuename resources."),
/// 			Parent:      basicKey.ID(),
/// 			ShortName:   pulumi.String("tag-value"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewFirewallPolicyWithRules(ctx, "primary", &compute.FirewallPolicyWithRulesArgs{
/// 			ShortName:   pulumi.String("fw-policy"),
/// 			Description: pulumi.String("Terraform test"),
/// 			Parent:      pulumi.String("organizations/123456789"),
/// 			Rules: compute.FirewallPolicyWithRulesRuleArray{
/// 				&compute.FirewallPolicyWithRulesRuleArgs{
/// 					Description:   pulumi.String("tcp rule"),
/// 					Priority:      pulumi.Int(1000),
/// 					EnableLogging: pulumi.Bool(true),
/// 					Action:        pulumi.String("allow"),
/// 					Direction:     pulumi.String("EGRESS"),
/// 					TargetResources: pulumi.StringArray{
/// 						network.SelfLink,
/// 					},
/// 					Match: &compute.FirewallPolicyWithRulesRuleMatchArgs{
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
/// 						Layer4Configs: compute.FirewallPolicyWithRulesRuleMatchLayer4ConfigArray{
/// 							&compute.FirewallPolicyWithRulesRuleMatchLayer4ConfigArgs{
/// 								IpProtocol: pulumi.String("tcp"),
/// 								Ports: pulumi.StringArray{
/// 									pulumi.String("8080"),
/// 									pulumi.String("7070"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				&compute.FirewallPolicyWithRulesRuleArgs{
/// 					Description:   pulumi.String("udp rule"),
/// 					Priority:      pulumi.Int(2000),
/// 					EnableLogging: pulumi.Bool(false),
/// 					Action:        pulumi.String("deny"),
/// 					Direction:     pulumi.String("INGRESS"),
/// 					Disabled:      pulumi.Bool(true),
/// 					Match: &compute.FirewallPolicyWithRulesRuleMatchArgs{
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
/// 						Layer4Configs: compute.FirewallPolicyWithRulesRuleMatchLayer4ConfigArray{
/// 							&compute.FirewallPolicyWithRulesRuleMatchLayer4ConfigArgs{
/// 								IpProtocol: pulumi.String("udp"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				&compute.FirewallPolicyWithRulesRuleArgs{
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
/// 					Match: &compute.FirewallPolicyWithRulesRuleMatchArgs{
/// 						SrcIpRanges: pulumi.StringArray{
/// 							pulumi.String("0.0.0.0/0"),
/// 						},
/// 						Layer4Configs: compute.FirewallPolicyWithRulesRuleMatchLayer4ConfigArray{
/// 							&compute.FirewallPolicyWithRulesRuleMatchLayer4ConfigArgs{
/// 								IpProtocol: pulumi.String("tcp"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				&compute.FirewallPolicyWithRulesRuleArgs{
/// 					Description:   pulumi.String("secure tags"),
/// 					RuleName:      pulumi.String("secure tags rule"),
/// 					Priority:      pulumi.Int(4000),
/// 					EnableLogging: pulumi.Bool(false),
/// 					Action:        pulumi.String("allow"),
/// 					Direction:     pulumi.String("INGRESS"),
/// 					TargetSecureTags: compute.FirewallPolicyWithRulesRuleTargetSecureTagArray{
/// 						&compute.FirewallPolicyWithRulesRuleTargetSecureTagArgs{
/// 							Name: basicValue.ID(),
/// 						},
/// 					},
/// 					Match: &compute.FirewallPolicyWithRulesRuleMatchArgs{
/// 						SrcIpRanges: pulumi.StringArray{
/// 							pulumi.String("11.100.0.1/32"),
/// 						},
/// 						SrcSecureTags: compute.FirewallPolicyWithRulesRuleMatchSrcSecureTagArray{
/// 							&compute.FirewallPolicyWithRulesRuleMatchSrcSecureTagArgs{
/// 								Name: basicValue.ID(),
/// 							},
/// 						},
/// 						Layer4Configs: compute.FirewallPolicyWithRulesRuleMatchLayer4ConfigArray{
/// 							&compute.FirewallPolicyWithRulesRuleMatchLayer4ConfigArgs{
/// 								IpProtocol: pulumi.String("tcp"),
/// 								Ports: pulumi.StringArray{
/// 									pulumi.String("8080"),
/// 								},
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
/// import com.pulumi.gcp.networksecurity.SecurityProfile;
/// import com.pulumi.gcp.networksecurity.SecurityProfileArgs;
/// import com.pulumi.gcp.networksecurity.SecurityProfileGroup;
/// import com.pulumi.gcp.networksecurity.SecurityProfileGroupArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.tags.TagKey;
/// import com.pulumi.gcp.tags.TagKeyArgs;
/// import com.pulumi.gcp.tags.TagValue;
/// import com.pulumi.gcp.tags.TagValueArgs;
/// import com.pulumi.gcp.compute.FirewallPolicyWithRules;
/// import com.pulumi.gcp.compute.FirewallPolicyWithRulesArgs;
/// import com.pulumi.gcp.compute.inputs.FirewallPolicyWithRulesRuleArgs;
/// import com.pulumi.gcp.compute.inputs.FirewallPolicyWithRulesRuleMatchArgs;
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
///             .parent("organizations/123456789")
///             .description("Global address group")
///             .location("global")
///             .items("208.80.154.224/32")
///             .type("IPV4")
///             .capacity(100)
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
///         var network = new Network("network", NetworkArgs.builder()
///             .name("network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var basicKey = new TagKey("basicKey", TagKeyArgs.builder()
///             .description("For keyname resources.")
///             .parent("organizations/123456789")
///             .purpose("GCE_FIREWALL")
///             .shortName("tag-key")
///             .purposeData(Map.of("organization", "auto"))
///             .build());
///
///         var basicValue = new TagValue("basicValue", TagValueArgs.builder()
///             .description("For valuename resources.")
///             .parent(basicKey.id())
///             .shortName("tag-value")
///             .build());
///
///         var primary = new FirewallPolicyWithRules("primary", FirewallPolicyWithRulesArgs.builder()
///             .shortName("fw-policy")
///             .description("Terraform test")
///             .parent("organizations/123456789")
///             .rules(
///                 FirewallPolicyWithRulesRuleArgs.builder()
///                     .description("tcp rule")
///                     .priority(1000)
///                     .enableLogging(true)
///                     .action("allow")
///                     .direction("EGRESS")
///                     .targetResources(network.selfLink())
///                     .match(FirewallPolicyWithRulesRuleMatchArgs.builder()
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
///                         .layer4Configs(FirewallPolicyWithRulesRuleMatchLayer4ConfigArgs.builder()
///                             .ipProtocol("tcp")
///                             .ports(
///                                 "8080",
///                                 "7070")
///                             .build())
///                         .build())
///                     .build(),
///                 FirewallPolicyWithRulesRuleArgs.builder()
///                     .description("udp rule")
///                     .priority(2000)
///                     .enableLogging(false)
///                     .action("deny")
///                     .direction("INGRESS")
///                     .disabled(true)
///                     .match(FirewallPolicyWithRulesRuleMatchArgs.builder()
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
///                         .layer4Configs(FirewallPolicyWithRulesRuleMatchLayer4ConfigArgs.builder()
///                             .ipProtocol("udp")
///                             .build())
///                         .build())
///                     .build(),
///                 FirewallPolicyWithRulesRuleArgs.builder()
///                     .description("security profile group rule")
///                     .ruleName("tcp rule")
///                     .priority(3000)
///                     .enableLogging(false)
///                     .action("apply_security_profile_group")
///                     .direction("INGRESS")
///                     .targetServiceAccounts("test@google.com")
///                     .securityProfileGroup(securityProfileGroup1.id().applyValue(_id -> String.format("//networksecurity.googleapis.com/%s", _id)))
///                     .tlsInspect(true)
///                     .match(FirewallPolicyWithRulesRuleMatchArgs.builder()
///                         .srcIpRanges("0.0.0.0/0")
///                         .layer4Configs(FirewallPolicyWithRulesRuleMatchLayer4ConfigArgs.builder()
///                             .ipProtocol("tcp")
///                             .build())
///                         .build())
///                     .build(),
///                 FirewallPolicyWithRulesRuleArgs.builder()
///                     .description("secure tags")
///                     .ruleName("secure tags rule")
///                     .priority(4000)
///                     .enableLogging(false)
///                     .action("allow")
///                     .direction("INGRESS")
///                     .targetSecureTags(FirewallPolicyWithRulesRuleTargetSecureTagArgs.builder()
///                         .name(basicValue.id())
///                         .build())
///                     .match(FirewallPolicyWithRulesRuleMatchArgs.builder()
///                         .srcIpRanges("11.100.0.1/32")
///                         .srcSecureTags(FirewallPolicyWithRulesRuleMatchSrcSecureTagArgs.builder()
///                             .name(basicValue.id())
///                             .build())
///                         .layer4Configs(FirewallPolicyWithRulesRuleMatchLayer4ConfigArgs.builder()
///                             .ipProtocol("tcp")
///                             .ports("8080")
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
///     type: gcp:compute:FirewallPolicyWithRules
///     properties:
///       shortName: fw-policy
///       description: Terraform test
///       parent: organizations/123456789
///       rules:
///         - description: tcp rule
///           priority: 1000
///           enableLogging: true
///           action: allow
///           direction: EGRESS
///           targetResources:
///             - ${network.selfLink}
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
///         - description: secure tags
///           ruleName: secure tags rule
///           priority: 4000
///           enableLogging: false
///           action: allow
///           direction: INGRESS
///           targetSecureTags:
///             - name: ${basicValue.id}
///           match:
///             srcIpRanges:
///               - 11.100.0.1/32
///             srcSecureTags:
///               - name: ${basicValue.id}
///             layer4Configs:
///               - ipProtocol: tcp
///                 ports:
///                   - 8080
///   addressGroup1:
///     type: gcp:networksecurity:AddressGroup
///     name: address_group_1
///     properties:
///       name: address-group
///       parent: organizations/123456789
///       description: Global address group
///       location: global
///       items:
///         - 208.80.154.224/32
///       type: IPV4
///       capacity: 100
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
///   network:
///     type: gcp:compute:Network
///     properties:
///       name: network
///       autoCreateSubnetworks: false
///   basicKey:
///     type: gcp:tags:TagKey
///     name: basic_key
///     properties:
///       description: For keyname resources.
///       parent: organizations/123456789
///       purpose: GCE_FIREWALL
///       shortName: tag-key
///       purposeData:
///         organization: auto
///   basicValue:
///     type: gcp:tags:TagValue
///     name: basic_value
///     properties:
///       description: For valuename resources.
///       parent: ${basicKey.id}
///       shortName: tag-value
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
/// FirewallPolicyWithRules can be imported using any of these accepted formats:
///
/// * `locations/global/firewallPolicies/{{policy_id}}`
///
/// * `{{policy_id}}`
///
/// When using the `pulumi import` command, FirewallPolicyWithRules can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/firewallPolicyWithRules:FirewallPolicyWithRules default locations/global/firewallPolicies/{{policy_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/firewallPolicyWithRules:FirewallPolicyWithRules default {{policy_id}}
/// ```
class FirewallPolicyWithRules extends pulumi.CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional description of this resource.
  late final pulumi.Output<String?> description;

  /// Fingerprint of the resource. This field is used internally during updates of this resource.
  late final pulumi.Output<String> fingerprint;

  /// The parent of this FirewallPolicy in the Cloud Resource Hierarchy.
  /// Format: organizations/{organization_id} or folders/{folder_id}
  late final pulumi.Output<String> parent;

  /// The unique identifier for the resource. This identifier is defined by the server.
  late final pulumi.Output<String> policyId;

  /// A list of pre-define firewall policy rules.
  /// Structure is documented below.
  late final pulumi.Output<List<FirewallPolicyWithRulesPredefinedRule>>
  predefinedRules;

  /// Total count of all firewall policy rule tuples. A firewall policy can not exceed a set number of tuples.
  late final pulumi.Output<int> ruleTupleCount;

  /// A list of firewall policy rules.
  /// Structure is documented below.
  late final pulumi.Output<List<FirewallPolicyWithRulesRule>> rules;

  /// Server-defined URL for the resource.
  late final pulumi.Output<String> selfLink;

  /// Server-defined URL for this resource with the resource id.
  late final pulumi.Output<String> selfLinkWithId;

  /// A textual name of the security policy.
  late final pulumi.Output<String> shortName;

  /// Creates a new [FirewallPolicyWithRules].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FirewallPolicyWithRules]. {@macro pulumi_compute_firewall_policy_with_rules_firewall_policy_with_rules_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FirewallPolicyWithRules(
    String name, {
    FirewallPolicyWithRulesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:compute/firewallPolicyWithRules:FirewallPolicyWithRules',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.parent = registerOutput<String>('parent');
    this.policyId = registerOutput<String>('policyId');
    this.predefinedRules =
        registerOutput<List<FirewallPolicyWithRulesPredefinedRule>>(
          'predefinedRules',
        );
    this.ruleTupleCount = registerOutput<int>('ruleTupleCount');
    this.rules = registerOutput<List<FirewallPolicyWithRulesRule>>('rules');
    this.selfLink = registerOutput<String>('selfLink');
    this.selfLinkWithId = registerOutput<String>('selfLinkWithId');
    this.shortName = registerOutput<String>('shortName');
  }
}
