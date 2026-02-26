import 'package:pulumi/pulumi.dart';
import '../region_network_firewall_policy_rule_match/region_network_firewall_policy_rule_match.dart';
import '../region_network_firewall_policy_rule_target_secure_tag/region_network_firewall_policy_rule_target_secure_tag.dart';
import 'region_network_firewall_policy_rule_args.dart';

/// Represents a rule that describes one or more match conditions along with the action to be taken when traffic matches this condition (allow or deny).
///
///
/// To get more information about RegionNetworkFirewallPolicyRule, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/regionNetworkFirewallPolicies/addRule)
///
/// ## Example Usage
///
/// ### Region Network Firewall Policy Rule
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basicRegionalNetworksecurityAddressGroup = new gcp.networksecurity.AddressGroup("basic_regional_networksecurity_address_group", {
/// name: "address-group",
/// parent: "projects/my-project-name",
/// description: "Sample regional networksecurity_address_group",
/// location: "us-west1",
/// items: ["208.80.154.224/32"],
/// type: "IPV4",
/// capacity: 100,
/// });
/// const basicRegionalNetworkFirewallPolicy = new gcp.compute.RegionNetworkFirewallPolicy("basic_regional_network_firewall_policy", {
/// name: "fw-policy",
/// description: "Sample regional network firewall policy",
/// project: "my-project-name",
/// region: "us-west1",
/// });
/// const basicNetwork = new gcp.compute.Network("basic_network", {name: "network"});
/// const basicKey = new gcp.tags.TagKey("basic_key", {
/// description: "For keyname resources.",
/// parent: "organizations/123456789",
/// purpose: "GCE_FIREWALL",
/// shortName: "tag-key",
/// purposeData: {
/// network: pulumi.interpolate`my-project-name/${basicNetwork.name}`,
/// },
/// });
/// const basicValue = new gcp.tags.TagValue("basic_value", {
/// description: "For valuename resources.",
/// parent: basicKey.id,
/// shortName: "tag-value",
/// });
/// const primary = new gcp.compute.RegionNetworkFirewallPolicyRule("primary", {
/// action: "allow",
/// description: "This is a simple rule description",
/// direction: "INGRESS",
/// disabled: false,
/// enableLogging: true,
/// firewallPolicy: basicRegionalNetworkFirewallPolicy.name,
/// priority: 1000,
/// region: "us-west1",
/// ruleName: "test-rule",
/// targetServiceAccounts: ["my@service-account.com"],
/// match: {
/// srcAddressGroups: [basicRegionalNetworksecurityAddressGroup.id],
/// srcIpRanges: ["10.100.0.1/32"],
/// srcFqdns: ["example.com"],
/// srcRegionCodes: ["US"],
/// srcThreatIntelligences: ["iplist-known-malicious-ips"],
/// layer4Configs: [{
/// ipProtocol: "all",
/// }],
/// srcSecureTags: [{
/// name: basicValue.id,
/// }],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic_regional_networksecurity_address_group = gcp.networksecurity.AddressGroup("basic_regional_networksecurity_address_group",
/// name="address-group",
/// parent="projects/my-project-name",
/// description="Sample regional networksecurity_address_group",
/// location="us-west1",
/// items=["208.80.154.224/32"],
/// type="IPV4",
/// capacity=100)
/// basic_regional_network_firewall_policy = gcp.compute.RegionNetworkFirewallPolicy("basic_regional_network_firewall_policy",
/// name="fw-policy",
/// description="Sample regional network firewall policy",
/// project="my-project-name",
/// region="us-west1")
/// basic_network = gcp.compute.Network("basic_network", name="network")
/// basic_key = gcp.tags.TagKey("basic_key",
/// description="For keyname resources.",
/// parent="organizations/123456789",
/// purpose="GCE_FIREWALL",
/// short_name="tag-key",
/// purpose_data={
/// "network": basic_network.name.apply(lambda name: f"my-project-name/{name}"),
/// })
/// basic_value = gcp.tags.TagValue("basic_value",
/// description="For valuename resources.",
/// parent=basic_key.id,
/// short_name="tag-value")
/// primary = gcp.compute.RegionNetworkFirewallPolicyRule("primary",
/// action="allow",
/// description="This is a simple rule description",
/// direction="INGRESS",
/// disabled=False,
/// enable_logging=True,
/// firewall_policy=basic_regional_network_firewall_policy.name,
/// priority=1000,
/// region="us-west1",
/// rule_name="test-rule",
/// target_service_accounts=["my@service-account.com"],
/// match={
/// "src_address_groups": [basic_regional_networksecurity_address_group.id],
/// "src_ip_ranges": ["10.100.0.1/32"],
/// "src_fqdns": ["example.com"],
/// "src_region_codes": ["US"],
/// "src_threat_intelligences": ["iplist-known-malicious-ips"],
/// "layer4_configs": [{
/// "ip_protocol": "all",
/// }],
/// "src_secure_tags": [{
/// "name": basic_value.id,
/// }],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var basicRegionalNetworksecurityAddressGroup = new Gcp.NetworkSecurity.AddressGroup("basic_regional_networksecurity_address_group", new()
/// {
/// Name = "address-group",
/// Parent = "projects/my-project-name",
/// Description = "Sample regional networksecurity_address_group",
/// Location = "us-west1",
/// Items = new[]
/// {
/// "208.80.154.224/32",
/// },
/// Type = "IPV4",
/// Capacity = 100,
/// });
///
/// var basicRegionalNetworkFirewallPolicy = new Gcp.Compute.RegionNetworkFirewallPolicy("basic_regional_network_firewall_policy", new()
/// {
/// Name = "fw-policy",
/// Description = "Sample regional network firewall policy",
/// Project = "my-project-name",
/// Region = "us-west1",
/// });
///
/// var basicNetwork = new Gcp.Compute.Network("basic_network", new()
/// {
/// Name = "network",
/// });
///
/// var basicKey = new Gcp.Tags.TagKey("basic_key", new()
/// {
/// Description = "For keyname resources.",
/// Parent = "organizations/123456789",
/// Purpose = "GCE_FIREWALL",
/// ShortName = "tag-key",
/// PurposeData =
/// {
/// { "network", basicNetwork.Name.Apply(name => $"my-project-name/{name}") },
/// },
/// });
///
/// var basicValue = new Gcp.Tags.TagValue("basic_value", new()
/// {
/// Description = "For valuename resources.",
/// Parent = basicKey.Id,
/// ShortName = "tag-value",
/// });
///
/// var primary = new Gcp.Compute.RegionNetworkFirewallPolicyRule("primary", new()
/// {
/// Action = "allow",
/// Description = "This is a simple rule description",
/// Direction = "INGRESS",
/// Disabled = false,
/// EnableLogging = true,
/// FirewallPolicy = basicRegionalNetworkFirewallPolicy.Name,
/// Priority = 1000,
/// Region = "us-west1",
/// RuleName = "test-rule",
/// TargetServiceAccounts = new[]
/// {
/// "my@service-account.com",
/// },
/// Match = new Gcp.Compute.Inputs.RegionNetworkFirewallPolicyRuleMatchArgs
/// {
/// SrcAddressGroups = new[]
/// {
/// basicRegionalNetworksecurityAddressGroup.Id,
/// },
/// SrcIpRanges = new[]
/// {
/// "10.100.0.1/32",
/// },
/// SrcFqdns = new[]
/// {
/// "example.com",
/// },
/// SrcRegionCodes = new[]
/// {
/// "US",
/// },
/// SrcThreatIntelligences = new[]
/// {
/// "iplist-known-malicious-ips",
/// },
/// Layer4Configs = new[]
/// {
/// new Gcp.Compute.Inputs.RegionNetworkFirewallPolicyRuleMatchLayer4ConfigArgs
/// {
/// IpProtocol = "all",
/// },
/// },
/// SrcSecureTags = new[]
/// {
/// new Gcp.Compute.Inputs.RegionNetworkFirewallPolicyRuleMatchSrcSecureTagArgs
/// {
/// Name = basicValue.Id,
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/tags"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// basicRegionalNetworksecurityAddressGroup, err := networksecurity.NewAddressGroup(ctx, "basic_regional_networksecurity_address_group", &networksecurity.AddressGroupArgs{
/// Name:        pulumi.String("address-group"),
/// Parent:      pulumi.String("projects/my-project-name"),
/// Description: pulumi.String("Sample regional networksecurity_address_group"),
/// Location:    pulumi.String("us-west1"),
/// Items: pulumi.StringArray{
/// pulumi.String("208.80.154.224/32"),
/// },
/// Type:     pulumi.String("IPV4"),
/// Capacity: pulumi.Int(100),
/// })
/// if err != nil {
/// return err
/// }
/// basicRegionalNetworkFirewallPolicy, err := compute.NewRegionNetworkFirewallPolicy(ctx, "basic_regional_network_firewall_policy", &compute.RegionNetworkFirewallPolicyArgs{
/// Name:        pulumi.String("fw-policy"),
/// Description: pulumi.String("Sample regional network firewall policy"),
/// Project:     pulumi.String("my-project-name"),
/// Region:      pulumi.String("us-west1"),
/// })
/// if err != nil {
/// return err
/// }
/// basicNetwork, err := compute.NewNetwork(ctx, "basic_network", &compute.NetworkArgs{
/// Name: pulumi.String("network"),
/// })
/// if err != nil {
/// return err
/// }
/// basicKey, err := tags.NewTagKey(ctx, "basic_key", &tags.TagKeyArgs{
/// Description: pulumi.String("For keyname resources."),
/// Parent:      pulumi.String("organizations/123456789"),
/// Purpose:     pulumi.String("GCE_FIREWALL"),
/// ShortName:   pulumi.String("tag-key"),
/// PurposeData: pulumi.StringMap{
/// "network": basicNetwork.Name.ApplyT(func(name string) (string, error) {
/// return fmt.Sprintf("my-project-name/%v", name), nil
/// }).(pulumi.StringOutput),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// basicValue, err := tags.NewTagValue(ctx, "basic_value", &tags.TagValueArgs{
/// Description: pulumi.String("For valuename resources."),
/// Parent:      basicKey.ID(),
/// ShortName:   pulumi.String("tag-value"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewRegionNetworkFirewallPolicyRule(ctx, "primary", &compute.RegionNetworkFirewallPolicyRuleArgs{
/// Action:         pulumi.String("allow"),
/// Description:    pulumi.String("This is a simple rule description"),
/// Direction:      pulumi.String("INGRESS"),
/// Disabled:       pulumi.Bool(false),
/// EnableLogging:  pulumi.Bool(true),
/// FirewallPolicy: basicRegionalNetworkFirewallPolicy.Name,
/// Priority:       pulumi.Int(1000),
/// Region:         pulumi.String("us-west1"),
/// RuleName:       pulumi.String("test-rule"),
/// TargetServiceAccounts: pulumi.StringArray{
/// pulumi.String("my@service-account.com"),
/// },
/// Match: &compute.RegionNetworkFirewallPolicyRuleMatchArgs{
/// SrcAddressGroups: pulumi.StringArray{
/// basicRegionalNetworksecurityAddressGroup.ID(),
/// },
/// SrcIpRanges: pulumi.StringArray{
/// pulumi.String("10.100.0.1/32"),
/// },
/// SrcFqdns: pulumi.StringArray{
/// pulumi.String("example.com"),
/// },
/// SrcRegionCodes: pulumi.StringArray{
/// pulumi.String("US"),
/// },
/// SrcThreatIntelligences: pulumi.StringArray{
/// pulumi.String("iplist-known-malicious-ips"),
/// },
/// Layer4Configs: compute.RegionNetworkFirewallPolicyRuleMatchLayer4ConfigArray{
/// &compute.RegionNetworkFirewallPolicyRuleMatchLayer4ConfigArgs{
/// IpProtocol: pulumi.String("all"),
/// },
/// },
/// SrcSecureTags: compute.RegionNetworkFirewallPolicyRuleMatchSrcSecureTagArray{
/// &compute.RegionNetworkFirewallPolicyRuleMatchSrcSecureTagArgs{
/// Name: basicValue.ID(),
/// },
/// },
/// },
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
/// import com.pulumi.gcp.networksecurity.AddressGroup;
/// import com.pulumi.gcp.networksecurity.AddressGroupArgs;
/// import com.pulumi.gcp.compute.RegionNetworkFirewallPolicy;
/// import com.pulumi.gcp.compute.RegionNetworkFirewallPolicyArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.tags.TagKey;
/// import com.pulumi.gcp.tags.TagKeyArgs;
/// import com.pulumi.gcp.tags.TagValue;
/// import com.pulumi.gcp.tags.TagValueArgs;
/// import com.pulumi.gcp.compute.RegionNetworkFirewallPolicyRule;
/// import com.pulumi.gcp.compute.RegionNetworkFirewallPolicyRuleArgs;
/// import com.pulumi.gcp.compute.inputs.RegionNetworkFirewallPolicyRuleMatchArgs;
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
/// var basicRegionalNetworksecurityAddressGroup = new AddressGroup("basicRegionalNetworksecurityAddressGroup", AddressGroupArgs.builder()
/// .name("address-group")
/// .parent("projects/my-project-name")
/// .description("Sample regional networksecurity_address_group")
/// .location("us-west1")
/// .items("208.80.154.224/32")
/// .type("IPV4")
/// .capacity(100)
/// .build());
///
/// var basicRegionalNetworkFirewallPolicy = new RegionNetworkFirewallPolicy("basicRegionalNetworkFirewallPolicy", RegionNetworkFirewallPolicyArgs.builder()
/// .name("fw-policy")
/// .description("Sample regional network firewall policy")
/// .project("my-project-name")
/// .region("us-west1")
/// .build());
///
/// var basicNetwork = new Network("basicNetwork", NetworkArgs.builder()
/// .name("network")
/// .build());
///
/// var basicKey = new TagKey("basicKey", TagKeyArgs.builder()
/// .description("For keyname resources.")
/// .parent("organizations/123456789")
/// .purpose("GCE_FIREWALL")
/// .shortName("tag-key")
/// .purposeData(Map.of("network", basicNetwork.name().applyValue(_name -> String.format("my-project-name/%s", _name))))
/// .build());
///
/// var basicValue = new TagValue("basicValue", TagValueArgs.builder()
/// .description("For valuename resources.")
/// .parent(basicKey.id())
/// .shortName("tag-value")
/// .build());
///
/// var primary = new RegionNetworkFirewallPolicyRule("primary", RegionNetworkFirewallPolicyRuleArgs.builder()
/// .action("allow")
/// .description("This is a simple rule description")
/// .direction("INGRESS")
/// .disabled(false)
/// .enableLogging(true)
/// .firewallPolicy(basicRegionalNetworkFirewallPolicy.name())
/// .priority(1000)
/// .region("us-west1")
/// .ruleName("test-rule")
/// .targetServiceAccounts("my@service-account.com")
/// .match(RegionNetworkFirewallPolicyRuleMatchArgs.builder()
/// .srcAddressGroups(basicRegionalNetworksecurityAddressGroup.id())
/// .srcIpRanges("10.100.0.1/32")
/// .srcFqdns("example.com")
/// .srcRegionCodes("US")
/// .srcThreatIntelligences("iplist-known-malicious-ips")
/// .layer4Configs(RegionNetworkFirewallPolicyRuleMatchLayer4ConfigArgs.builder()
/// .ipProtocol("all")
/// .build())
/// .srcSecureTags(RegionNetworkFirewallPolicyRuleMatchSrcSecureTagArgs.builder()
/// .name(basicValue.id())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// basicRegionalNetworksecurityAddressGroup:
/// type: gcp:networksecurity:AddressGroup
/// name: basic_regional_networksecurity_address_group
/// properties:
/// name: address-group
/// parent: projects/my-project-name
/// description: Sample regional networksecurity_address_group
/// location: us-west1
/// items:
/// - 208.80.154.224/32
/// type: IPV4
/// capacity: 100
/// basicRegionalNetworkFirewallPolicy:
/// type: gcp:compute:RegionNetworkFirewallPolicy
/// name: basic_regional_network_firewall_policy
/// properties:
/// name: fw-policy
/// description: Sample regional network firewall policy
/// project: my-project-name
/// region: us-west1
/// primary:
/// type: gcp:compute:RegionNetworkFirewallPolicyRule
/// properties:
/// action: allow
/// description: This is a simple rule description
/// direction: INGRESS
/// disabled: false
/// enableLogging: true
/// firewallPolicy: ${basicRegionalNetworkFirewallPolicy.name}
/// priority: 1000
/// region: us-west1
/// ruleName: test-rule
/// targetServiceAccounts:
/// - my@service-account.com
/// match:
/// srcAddressGroups:
/// - ${basicRegionalNetworksecurityAddressGroup.id}
/// srcIpRanges:
/// - 10.100.0.1/32
/// srcFqdns:
/// - example.com
/// srcRegionCodes:
/// - US
/// srcThreatIntelligences:
/// - iplist-known-malicious-ips
/// layer4Configs:
/// - ipProtocol: all
/// srcSecureTags:
/// - name: ${basicValue.id}
/// basicNetwork:
/// type: gcp:compute:Network
/// name: basic_network
/// properties:
/// name: network
/// basicKey:
/// type: gcp:tags:TagKey
/// name: basic_key
/// properties:
/// description: For keyname resources.
/// parent: organizations/123456789
/// purpose: GCE_FIREWALL
/// shortName: tag-key
/// purposeData:
/// network: my-project-name/${basicNetwork.name}
/// basicValue:
/// type: gcp:tags:TagValue
/// name: basic_value
/// properties:
/// description: For valuename resources.
/// parent: ${basicKey.id}
/// shortName: tag-value
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Region Network Firewall Policy Rule Network Scope Egress
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basicRegionalNetworkFirewallPolicy = new gcp.compute.RegionNetworkFirewallPolicy("basic_regional_network_firewall_policy", {
/// name: "fw-policy",
/// description: "Sample regional network firewall policy",
/// project: "my-project-name",
/// region: "us-west1",
/// });
/// const primary = new gcp.compute.RegionNetworkFirewallPolicyRule("primary", {
/// action: "allow",
/// description: "This is a simple rule description",
/// direction: "EGRESS",
/// disabled: false,
/// enableLogging: true,
/// firewallPolicy: basicRegionalNetworkFirewallPolicy.name,
/// priority: 1000,
/// region: "us-west1",
/// ruleName: "test-rule",
/// match: {
/// destIpRanges: ["10.100.0.1/32"],
/// destNetworkScope: "INTERNET",
/// layer4Configs: [{
/// ipProtocol: "all",
/// }],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic_regional_network_firewall_policy = gcp.compute.RegionNetworkFirewallPolicy("basic_regional_network_firewall_policy",
/// name="fw-policy",
/// description="Sample regional network firewall policy",
/// project="my-project-name",
/// region="us-west1")
/// primary = gcp.compute.RegionNetworkFirewallPolicyRule("primary",
/// action="allow",
/// description="This is a simple rule description",
/// direction="EGRESS",
/// disabled=False,
/// enable_logging=True,
/// firewall_policy=basic_regional_network_firewall_policy.name,
/// priority=1000,
/// region="us-west1",
/// rule_name="test-rule",
/// match={
/// "dest_ip_ranges": ["10.100.0.1/32"],
/// "dest_network_scope": "INTERNET",
/// "layer4_configs": [{
/// "ip_protocol": "all",
/// }],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var basicRegionalNetworkFirewallPolicy = new Gcp.Compute.RegionNetworkFirewallPolicy("basic_regional_network_firewall_policy", new()
/// {
/// Name = "fw-policy",
/// Description = "Sample regional network firewall policy",
/// Project = "my-project-name",
/// Region = "us-west1",
/// });
///
/// var primary = new Gcp.Compute.RegionNetworkFirewallPolicyRule("primary", new()
/// {
/// Action = "allow",
/// Description = "This is a simple rule description",
/// Direction = "EGRESS",
/// Disabled = false,
/// EnableLogging = true,
/// FirewallPolicy = basicRegionalNetworkFirewallPolicy.Name,
/// Priority = 1000,
/// Region = "us-west1",
/// RuleName = "test-rule",
/// Match = new Gcp.Compute.Inputs.RegionNetworkFirewallPolicyRuleMatchArgs
/// {
/// DestIpRanges = new[]
/// {
/// "10.100.0.1/32",
/// },
/// DestNetworkScope = "INTERNET",
/// Layer4Configs = new[]
/// {
/// new Gcp.Compute.Inputs.RegionNetworkFirewallPolicyRuleMatchLayer4ConfigArgs
/// {
/// IpProtocol = "all",
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// basicRegionalNetworkFirewallPolicy, err := compute.NewRegionNetworkFirewallPolicy(ctx, "basic_regional_network_firewall_policy", &compute.RegionNetworkFirewallPolicyArgs{
/// Name:        pulumi.String("fw-policy"),
/// Description: pulumi.String("Sample regional network firewall policy"),
/// Project:     pulumi.String("my-project-name"),
/// Region:      pulumi.String("us-west1"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewRegionNetworkFirewallPolicyRule(ctx, "primary", &compute.RegionNetworkFirewallPolicyRuleArgs{
/// Action:         pulumi.String("allow"),
/// Description:    pulumi.String("This is a simple rule description"),
/// Direction:      pulumi.String("EGRESS"),
/// Disabled:       pulumi.Bool(false),
/// EnableLogging:  pulumi.Bool(true),
/// FirewallPolicy: basicRegionalNetworkFirewallPolicy.Name,
/// Priority:       pulumi.Int(1000),
/// Region:         pulumi.String("us-west1"),
/// RuleName:       pulumi.String("test-rule"),
/// Match: &compute.RegionNetworkFirewallPolicyRuleMatchArgs{
/// DestIpRanges: pulumi.StringArray{
/// pulumi.String("10.100.0.1/32"),
/// },
/// DestNetworkScope: pulumi.String("INTERNET"),
/// Layer4Configs: compute.RegionNetworkFirewallPolicyRuleMatchLayer4ConfigArray{
/// &compute.RegionNetworkFirewallPolicyRuleMatchLayer4ConfigArgs{
/// IpProtocol: pulumi.String("all"),
/// },
/// },
/// },
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
/// import com.pulumi.gcp.compute.RegionNetworkFirewallPolicy;
/// import com.pulumi.gcp.compute.RegionNetworkFirewallPolicyArgs;
/// import com.pulumi.gcp.compute.RegionNetworkFirewallPolicyRule;
/// import com.pulumi.gcp.compute.RegionNetworkFirewallPolicyRuleArgs;
/// import com.pulumi.gcp.compute.inputs.RegionNetworkFirewallPolicyRuleMatchArgs;
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
/// var basicRegionalNetworkFirewallPolicy = new RegionNetworkFirewallPolicy("basicRegionalNetworkFirewallPolicy", RegionNetworkFirewallPolicyArgs.builder()
/// .name("fw-policy")
/// .description("Sample regional network firewall policy")
/// .project("my-project-name")
/// .region("us-west1")
/// .build());
///
/// var primary = new RegionNetworkFirewallPolicyRule("primary", RegionNetworkFirewallPolicyRuleArgs.builder()
/// .action("allow")
/// .description("This is a simple rule description")
/// .direction("EGRESS")
/// .disabled(false)
/// .enableLogging(true)
/// .firewallPolicy(basicRegionalNetworkFirewallPolicy.name())
/// .priority(1000)
/// .region("us-west1")
/// .ruleName("test-rule")
/// .match(RegionNetworkFirewallPolicyRuleMatchArgs.builder()
/// .destIpRanges("10.100.0.1/32")
/// .destNetworkScope("INTERNET")
/// .layer4Configs(RegionNetworkFirewallPolicyRuleMatchLayer4ConfigArgs.builder()
/// .ipProtocol("all")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// basicRegionalNetworkFirewallPolicy:
/// type: gcp:compute:RegionNetworkFirewallPolicy
/// name: basic_regional_network_firewall_policy
/// properties:
/// name: fw-policy
/// description: Sample regional network firewall policy
/// project: my-project-name
/// region: us-west1
/// primary:
/// type: gcp:compute:RegionNetworkFirewallPolicyRule
/// properties:
/// action: allow
/// description: This is a simple rule description
/// direction: EGRESS
/// disabled: false
/// enableLogging: true
/// firewallPolicy: ${basicRegionalNetworkFirewallPolicy.name}
/// priority: 1000
/// region: us-west1
/// ruleName: test-rule
/// match:
/// destIpRanges:
/// - 10.100.0.1/32
/// destNetworkScope: INTERNET
/// layer4Configs:
/// - ipProtocol: all
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Region Network Firewall Policy Rule Network Scope Ingress
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basicRegionalNetworkFirewallPolicy = new gcp.compute.RegionNetworkFirewallPolicy("basic_regional_network_firewall_policy", {
/// name: "fw-policy",
/// description: "Sample regional network firewall policy",
/// project: "my-project-name",
/// region: "us-west1",
/// });
/// const network = new gcp.compute.Network("network", {name: "network"});
/// const primary = new gcp.compute.RegionNetworkFirewallPolicyRule("primary", {
/// action: "allow",
/// description: "This is a simple rule description",
/// direction: "INGRESS",
/// disabled: false,
/// enableLogging: true,
/// firewallPolicy: basicRegionalNetworkFirewallPolicy.name,
/// priority: 1000,
/// region: "us-west1",
/// ruleName: "test-rule",
/// match: {
/// srcIpRanges: ["10.100.0.1/32"],
/// srcNetworkScope: "VPC_NETWORKS",
/// srcNetworks: [network.id],
/// layer4Configs: [{
/// ipProtocol: "all",
/// }],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic_regional_network_firewall_policy = gcp.compute.RegionNetworkFirewallPolicy("basic_regional_network_firewall_policy",
/// name="fw-policy",
/// description="Sample regional network firewall policy",
/// project="my-project-name",
/// region="us-west1")
/// network = gcp.compute.Network("network", name="network")
/// primary = gcp.compute.RegionNetworkFirewallPolicyRule("primary",
/// action="allow",
/// description="This is a simple rule description",
/// direction="INGRESS",
/// disabled=False,
/// enable_logging=True,
/// firewall_policy=basic_regional_network_firewall_policy.name,
/// priority=1000,
/// region="us-west1",
/// rule_name="test-rule",
/// match={
/// "src_ip_ranges": ["10.100.0.1/32"],
/// "src_network_scope": "VPC_NETWORKS",
/// "src_networks": [network.id],
/// "layer4_configs": [{
/// "ip_protocol": "all",
/// }],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var basicRegionalNetworkFirewallPolicy = new Gcp.Compute.RegionNetworkFirewallPolicy("basic_regional_network_firewall_policy", new()
/// {
/// Name = "fw-policy",
/// Description = "Sample regional network firewall policy",
/// Project = "my-project-name",
/// Region = "us-west1",
/// });
///
/// var network = new Gcp.Compute.Network("network", new()
/// {
/// Name = "network",
/// });
///
/// var primary = new Gcp.Compute.RegionNetworkFirewallPolicyRule("primary", new()
/// {
/// Action = "allow",
/// Description = "This is a simple rule description",
/// Direction = "INGRESS",
/// Disabled = false,
/// EnableLogging = true,
/// FirewallPolicy = basicRegionalNetworkFirewallPolicy.Name,
/// Priority = 1000,
/// Region = "us-west1",
/// RuleName = "test-rule",
/// Match = new Gcp.Compute.Inputs.RegionNetworkFirewallPolicyRuleMatchArgs
/// {
/// SrcIpRanges = new[]
/// {
/// "10.100.0.1/32",
/// },
/// SrcNetworkScope = "VPC_NETWORKS",
/// SrcNetworks = new[]
/// {
/// network.Id,
/// },
/// Layer4Configs = new[]
/// {
/// new Gcp.Compute.Inputs.RegionNetworkFirewallPolicyRuleMatchLayer4ConfigArgs
/// {
/// IpProtocol = "all",
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// basicRegionalNetworkFirewallPolicy, err := compute.NewRegionNetworkFirewallPolicy(ctx, "basic_regional_network_firewall_policy", &compute.RegionNetworkFirewallPolicyArgs{
/// Name:        pulumi.String("fw-policy"),
/// Description: pulumi.String("Sample regional network firewall policy"),
/// Project:     pulumi.String("my-project-name"),
/// Region:      pulumi.String("us-west1"),
/// })
/// if err != nil {
/// return err
/// }
/// network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// Name: pulumi.String("network"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewRegionNetworkFirewallPolicyRule(ctx, "primary", &compute.RegionNetworkFirewallPolicyRuleArgs{
/// Action:         pulumi.String("allow"),
/// Description:    pulumi.String("This is a simple rule description"),
/// Direction:      pulumi.String("INGRESS"),
/// Disabled:       pulumi.Bool(false),
/// EnableLogging:  pulumi.Bool(true),
/// FirewallPolicy: basicRegionalNetworkFirewallPolicy.Name,
/// Priority:       pulumi.Int(1000),
/// Region:         pulumi.String("us-west1"),
/// RuleName:       pulumi.String("test-rule"),
/// Match: &compute.RegionNetworkFirewallPolicyRuleMatchArgs{
/// SrcIpRanges: pulumi.StringArray{
/// pulumi.String("10.100.0.1/32"),
/// },
/// SrcNetworkScope: pulumi.String("VPC_NETWORKS"),
/// SrcNetworks: pulumi.StringArray{
/// network.ID(),
/// },
/// Layer4Configs: compute.RegionNetworkFirewallPolicyRuleMatchLayer4ConfigArray{
/// &compute.RegionNetworkFirewallPolicyRuleMatchLayer4ConfigArgs{
/// IpProtocol: pulumi.String("all"),
/// },
/// },
/// },
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
/// import com.pulumi.gcp.compute.RegionNetworkFirewallPolicy;
/// import com.pulumi.gcp.compute.RegionNetworkFirewallPolicyArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.RegionNetworkFirewallPolicyRule;
/// import com.pulumi.gcp.compute.RegionNetworkFirewallPolicyRuleArgs;
/// import com.pulumi.gcp.compute.inputs.RegionNetworkFirewallPolicyRuleMatchArgs;
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
/// var basicRegionalNetworkFirewallPolicy = new RegionNetworkFirewallPolicy("basicRegionalNetworkFirewallPolicy", RegionNetworkFirewallPolicyArgs.builder()
/// .name("fw-policy")
/// .description("Sample regional network firewall policy")
/// .project("my-project-name")
/// .region("us-west1")
/// .build());
///
/// var network = new Network("network", NetworkArgs.builder()
/// .name("network")
/// .build());
///
/// var primary = new RegionNetworkFirewallPolicyRule("primary", RegionNetworkFirewallPolicyRuleArgs.builder()
/// .action("allow")
/// .description("This is a simple rule description")
/// .direction("INGRESS")
/// .disabled(false)
/// .enableLogging(true)
/// .firewallPolicy(basicRegionalNetworkFirewallPolicy.name())
/// .priority(1000)
/// .region("us-west1")
/// .ruleName("test-rule")
/// .match(RegionNetworkFirewallPolicyRuleMatchArgs.builder()
/// .srcIpRanges("10.100.0.1/32")
/// .srcNetworkScope("VPC_NETWORKS")
/// .srcNetworks(network.id())
/// .layer4Configs(RegionNetworkFirewallPolicyRuleMatchLayer4ConfigArgs.builder()
/// .ipProtocol("all")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// basicRegionalNetworkFirewallPolicy:
/// type: gcp:compute:RegionNetworkFirewallPolicy
/// name: basic_regional_network_firewall_policy
/// properties:
/// name: fw-policy
/// description: Sample regional network firewall policy
/// project: my-project-name
/// region: us-west1
/// primary:
/// type: gcp:compute:RegionNetworkFirewallPolicyRule
/// properties:
/// action: allow
/// description: This is a simple rule description
/// direction: INGRESS
/// disabled: false
/// enableLogging: true
/// firewallPolicy: ${basicRegionalNetworkFirewallPolicy.name}
/// priority: 1000
/// region: us-west1
/// ruleName: test-rule
/// match:
/// srcIpRanges:
/// - 10.100.0.1/32
/// srcNetworkScope: VPC_NETWORKS
/// srcNetworks:
/// - ${network.id}
/// layer4Configs:
/// - ipProtocol: all
/// network:
/// type: gcp:compute:Network
/// properties:
/// name: network
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// RegionNetworkFirewallPolicyRule can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/firewallPolicies/{{firewall_policy}}/{{priority}}`
///
/// * `{{project}}/{{region}}/{{firewall_policy}}/{{priority}}`
///
/// * `{{region}}/{{firewall_policy}}/{{priority}}`
///
/// * `{{firewall_policy}}/{{priority}}`
///
/// When using the `pulumi import` command, RegionNetworkFirewallPolicyRule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionNetworkFirewallPolicyRule:RegionNetworkFirewallPolicyRule default projects/{{project}}/regions/{{region}}/firewallPolicies/{{firewall_policy}}/{{priority}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionNetworkFirewallPolicyRule:RegionNetworkFirewallPolicyRule default {{project}}/{{region}}/{{firewall_policy}}/{{priority}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionNetworkFirewallPolicyRule:RegionNetworkFirewallPolicyRule default {{region}}/{{firewall_policy}}/{{priority}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionNetworkFirewallPolicyRule:RegionNetworkFirewallPolicyRule default {{firewall_policy}}/{{priority}}
/// ```
class RegionNetworkFirewallPolicyRule extends CustomResource {
  /// The Action to perform when the client connection triggers the rule. Valid actions are "allow", "deny", <span pulumi-lang-nodejs=""gotoNext"" pulumi-lang-dotnet=""GotoNext"" pulumi-lang-go=""gotoNext"" pulumi-lang-python=""goto_next"" pulumi-lang-yaml=""gotoNext"" pulumi-lang-java=""gotoNext"">"goto_next"</span> and <span pulumi-lang-nodejs=""applySecurityProfileGroup"" pulumi-lang-dotnet=""ApplySecurityProfileGroup"" pulumi-lang-go=""applySecurityProfileGroup"" pulumi-lang-python=""apply_security_profile_group"" pulumi-lang-yaml=""applySecurityProfileGroup"" pulumi-lang-java=""applySecurityProfileGroup"">"apply_security_profile_group"</span>.
  late final Output<String> action;

  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// An optional description for this resource.
  late final Output<String?> description;

  /// The direction in which this rule applies.
  /// Possible values are: `INGRESS`, `EGRESS`.
  late final Output<String> direction;

  /// Denotes whether the firewall policy rule is disabled.
  /// When set to true, the firewall policy rule is not enforced and traffic behaves as if it did not exist.
  /// If this is unspecified, the firewall policy rule will be enabled.
  late final Output<bool?> disabled;

  /// Denotes whether to enable logging for a particular rule.
  /// If logging is enabled, logs will be exported to the configured export destination in Stackdriver.
  /// Logs may be exported to BigQuery or Pub/Sub.
  /// Note: you cannot enable logging on <span pulumi-lang-nodejs=""gotoNext"" pulumi-lang-dotnet=""GotoNext"" pulumi-lang-go=""gotoNext"" pulumi-lang-python=""goto_next"" pulumi-lang-yaml=""gotoNext"" pulumi-lang-java=""gotoNext"">"goto_next"</span> rules.
  late final Output<bool?> enableLogging;

  /// The firewall policy of the resource.
  late final Output<String> firewallPolicy;

  /// Type of the resource. Always `compute#firewallPolicyRule` for firewall policy rules
  late final Output<String> kind;

  /// A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding 'action' is enforced.
  /// Structure is documented below.
  late final Output<RegionNetworkFirewallPolicyRuleMatch> match;

  /// An integer indicating the priority of a rule in the list.
  /// The priority must be a positive value between 0 and 2147483647.
  /// Rules are evaluated from highest to lowest priority where 0 is the highest priority and 2147483647 is the lowest prority.
  late final Output<int> priority;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The location of this resource.
  late final Output<String> region;

  /// An optional name for the rule. This field is not a unique identifier and can be updated.
  late final Output<String?> ruleName;

  /// Calculation of the complexity of a single firewall policy rule.
  late final Output<int> ruleTupleCount;

  /// A fully-qualified URL of a SecurityProfile resource instance.
  /// Example: https://networksecurity.googleapis.com/v1/projects/{project}/locations/{location}/securityProfileGroups/my-security-profile-group
  /// Must be specified if action = 'apply_security_profile_group' and cannot be specified for other actions.
  /// Security Profile Group and Firewall Policy Rule must be in the same scope.
  late final Output<String?> securityProfileGroup;

  /// A list of secure tags that controls which instances the firewall rule applies to.
  /// If targetSecureTag are specified, then the firewall rule applies only to instances in the VPC network that have one of those EFFECTIVE secure tags, if all the targetSecureTag are in INEFFECTIVE state, then this rule will be ignored.
  /// targetSecureTag may not be set at the same time as targetServiceAccounts. If neither targetServiceAccounts nor targetSecureTag are specified, the firewall rule applies to all instances on the specified network. Maximum number of target label tags allowed is 256.
  /// Structure is documented below.
  late final Output<List<RegionNetworkFirewallPolicyRuleTargetSecureTag>?>
      targetSecureTags;

  /// A list of service accounts indicating the sets of instances that are applied with this rule.
  late final Output<List<String>?> targetServiceAccounts;

  /// Boolean flag indicating if the traffic should be TLS decrypted.
  /// Can be set only if action = 'apply_security_profile_group' and cannot be set for other actions.
  late final Output<bool?> tlsInspect;

  RegionNetworkFirewallPolicyRule(
    String name, {
    RegionNetworkFirewallPolicyRuleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionNetworkFirewallPolicyRule:RegionNetworkFirewallPolicyRule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.action = registerOutput<String>('action');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.direction = registerOutput<String>('direction');
    this.disabled = registerOutput<bool?>('disabled');
    this.enableLogging = registerOutput<bool?>('enableLogging');
    this.firewallPolicy = registerOutput<String>('firewallPolicy');
    this.kind = registerOutput<String>('kind');
    this.match = registerOutput<RegionNetworkFirewallPolicyRuleMatch>('match');
    this.priority = registerOutput<int>('priority');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.ruleName = registerOutput<String?>('ruleName');
    this.ruleTupleCount = registerOutput<int>('ruleTupleCount');
    this.securityProfileGroup = registerOutput<String?>('securityProfileGroup');
    this.targetSecureTags =
        registerOutput<List<RegionNetworkFirewallPolicyRuleTargetSecureTag>?>(
            'targetSecureTags');
    this.targetServiceAccounts =
        registerOutput<List<String>?>('targetServiceAccounts');
    this.tlsInspect = registerOutput<bool?>('tlsInspect');
  }
}
