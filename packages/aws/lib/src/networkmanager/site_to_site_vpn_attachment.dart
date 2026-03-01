import 'package:pulumi/pulumi.dart' as pulumi;
import 'site_to_site_vpn_attachment_args.dart';

/// Manages a Network Manager site-to-site VPN attachment.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkmanager.SiteToSiteVpnAttachment("example", {
///     coreNetworkId: exampleAwsccNetworkmanagerCoreNetwork.id,
///     vpnConnectionArn: exampleAwsVpnConnection.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmanager.SiteToSiteVpnAttachment("example",
///     core_network_id=example_awscc_networkmanager_core_network["id"],
///     vpn_connection_arn=example_aws_vpn_connection["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.NetworkManager.SiteToSiteVpnAttachment("example", new()
///     {
///         CoreNetworkId = exampleAwsccNetworkmanagerCoreNetwork.Id,
///         VpnConnectionArn = exampleAwsVpnConnection.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkmanager.NewSiteToSiteVpnAttachment(ctx, "example", &networkmanager.SiteToSiteVpnAttachmentArgs{
/// 			CoreNetworkId:    pulumi.Any(exampleAwsccNetworkmanagerCoreNetwork.Id),
/// 			VpnConnectionArn: pulumi.Any(exampleAwsVpnConnection.Arn),
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
/// import com.pulumi.aws.networkmanager.SiteToSiteVpnAttachment;
/// import com.pulumi.aws.networkmanager.SiteToSiteVpnAttachmentArgs;
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
///         var example = new SiteToSiteVpnAttachment("example", SiteToSiteVpnAttachmentArgs.builder()
///             .coreNetworkId(exampleAwsccNetworkmanagerCoreNetwork.id())
///             .vpnConnectionArn(exampleAwsVpnConnection.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:networkmanager:SiteToSiteVpnAttachment
///     properties:
///       coreNetworkId: ${exampleAwsccNetworkmanagerCoreNetwork.id}
///       vpnConnectionArn: ${exampleAwsVpnConnection.arn}
/// ```
///
///
/// ### Full Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as awscc from "@pulumi/awscc";
/// import * as std from "@pulumi/std";
///
/// const testCustomerGateway = new aws.ec2.CustomerGateway("test", {
///     bgpAsn: "65000",
///     ipAddress: "172.0.0.1",
///     type: "ipsec.1",
/// });
/// const testVpnConnection = new aws.ec2.VpnConnection("test", {
///     customerGatewayId: testCustomerGateway.id,
///     type: "ipsec.1",
///     tags: {
///         Name: "test",
///     },
/// });
/// const testGlobalNetwork = new aws.networkmanager.GlobalNetwork("test", {tags: {
///     Name: "test",
/// }});
/// const test = aws.networkmanager.getCoreNetworkPolicyDocument({
///     coreNetworkConfigurations: [{
///         vpnEcmpSupport: false,
///         asnRanges: ["64512-64555"],
///         edgeLocations: [{
///             location: current.region,
///             asn: "64512",
///         }],
///     }],
///     segments: [{
///         name: "shared",
///         description: "SegmentForSharedServices",
///         requireAttachmentAcceptance: true,
///     }],
///     segmentActions: [{
///         action: "share",
///         mode: "attachment-route",
///         segment: "shared",
///         shareWiths: ["*"],
///     }],
///     attachmentPolicies: [{
///         ruleNumber: 1,
///         conditionLogic: "or",
///         conditions: [{
///             type: "tag-value",
///             operator: "equals",
///             key: "segment",
///             value: "shared",
///         }],
///         action: {
///             associationMethod: "constant",
///             segment: "shared",
///         },
///     }],
/// });
/// const testNetworkmanagerCoreNetwork = new awscc.index.NetworkmanagerCoreNetwork("test", {
///     globalNetworkId: testGlobalNetwork.id,
///     policyDocument: JSON.stringify(std.jsondecode({
///         input: test.json,
///     }).result),
/// });
/// const testSiteToSiteVpnAttachment = new aws.networkmanager.SiteToSiteVpnAttachment("test", {
///     coreNetworkId: testNetworkmanagerCoreNetwork.id,
///     vpnConnectionArn: testVpnConnection.arn,
///     tags: {
///         segment: "shared",
///     },
/// });
/// const testAttachmentAccepter = new aws.networkmanager.AttachmentAccepter("test", {
///     attachmentId: testSiteToSiteVpnAttachment.id,
///     attachmentType: testSiteToSiteVpnAttachment.attachmentType,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
/// import pulumi_awscc as awscc
/// import pulumi_std as std
///
/// test_customer_gateway = aws.ec2.CustomerGateway("test",
///     bgp_asn="65000",
///     ip_address="172.0.0.1",
///     type="ipsec.1")
/// test_vpn_connection = aws.ec2.VpnConnection("test",
///     customer_gateway_id=test_customer_gateway.id,
///     type="ipsec.1",
///     tags={
///         "Name": "test",
///     })
/// test_global_network = aws.networkmanager.GlobalNetwork("test", tags={
///     "Name": "test",
/// })
/// test = aws.networkmanager.get_core_network_policy_document(core_network_configurations=[{
///         "vpn_ecmp_support": False,
///         "asn_ranges": ["64512-64555"],
///         "edge_locations": [{
///             "location": current["region"],
///             "asn": "64512",
///         }],
///     }],
///     segments=[{
///         "name": "shared",
///         "description": "SegmentForSharedServices",
///         "require_attachment_acceptance": True,
///     }],
///     segment_actions=[{
///         "action": "share",
///         "mode": "attachment-route",
///         "segment": "shared",
///         "share_withs": ["*"],
///     }],
///     attachment_policies=[{
///         "rule_number": 1,
///         "condition_logic": "or",
///         "conditions": [{
///             "type": "tag-value",
///             "operator": "equals",
///             "key": "segment",
///             "value": "shared",
///         }],
///         "action": {
///             "association_method": "constant",
///             "segment": "shared",
///         },
///     }])
/// test_networkmanager_core_network = awscc.index.NetworkmanagerCoreNetwork("test",
///     global_network_id=test_global_network.id,
///     policy_document=json.dumps(std.jsondecode(input=test.json).result))
/// test_site_to_site_vpn_attachment = aws.networkmanager.SiteToSiteVpnAttachment("test",
///     core_network_id=test_networkmanager_core_network["id"],
///     vpn_connection_arn=test_vpn_connection.arn,
///     tags={
///         "segment": "shared",
///     })
/// test_attachment_accepter = aws.networkmanager.AttachmentAccepter("test",
///     attachment_id=test_site_to_site_vpn_attachment.id,
///     attachment_type=test_site_to_site_vpn_attachment.attachment_type)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Awscc = Pulumi.Awscc;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testCustomerGateway = new Aws.Ec2.CustomerGateway("test", new()
///     {
///         BgpAsn = "65000",
///         IpAddress = "172.0.0.1",
///         Type = "ipsec.1",
///     });
///
///     var testVpnConnection = new Aws.Ec2.VpnConnection("test", new()
///     {
///         CustomerGatewayId = testCustomerGateway.Id,
///         Type = "ipsec.1",
///         Tags =
///         {
///             { "Name", "test" },
///         },
///     });
///
///     var testGlobalNetwork = new Aws.NetworkManager.GlobalNetwork("test", new()
///     {
///         Tags =
///         {
///             { "Name", "test" },
///         },
///     });
///
///     var test = Aws.NetworkManager.GetCoreNetworkPolicyDocument.Invoke(new()
///     {
///         CoreNetworkConfigurations = new[]
///         {
///             new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationInputArgs
///             {
///                 VpnEcmpSupport = false,
///                 AsnRanges = new[]
///                 {
///                     "64512-64555",
///                 },
///                 EdgeLocations = new[]
///                 {
///                     new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationInputArgs
///                     {
///                         Location = current.Region,
///                         Asn = "64512",
///                     },
///                 },
///             },
///         },
///         Segments = new[]
///         {
///             new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentSegmentInputArgs
///             {
///                 Name = "shared",
///                 Description = "SegmentForSharedServices",
///                 RequireAttachmentAcceptance = true,
///             },
///         },
///         SegmentActions = new[]
///         {
///             new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentSegmentActionInputArgs
///             {
///                 Action = "share",
///                 Mode = "attachment-route",
///                 Segment = "shared",
///                 ShareWiths = new[]
///                 {
///                     "*",
///                 },
///             },
///         },
///         AttachmentPolicies = new[]
///         {
///             new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentAttachmentPolicyInputArgs
///             {
///                 RuleNumber = 1,
///                 ConditionLogic = "or",
///                 Conditions = new[]
///                 {
///                     new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentAttachmentPolicyConditionInputArgs
///                     {
///                         Type = "tag-value",
///                         Operator = "equals",
///                         Key = "segment",
///                         Value = "shared",
///                     },
///                 },
///                 Action = new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentAttachmentPolicyActionInputArgs
///                 {
///                     AssociationMethod = "constant",
///                     Segment = "shared",
///                 },
///             },
///         },
///     });
///
///     var testNetworkmanagerCoreNetwork = new Awscc.Index.NetworkmanagerCoreNetwork("test", new()
///     {
///         GlobalNetworkId = testGlobalNetwork.Id,
///         PolicyDocument = JsonSerializer.Serialize(Std.Jsondecode.Invoke(new()
///         {
///             Input = test.Apply(getCoreNetworkPolicyDocumentResult => getCoreNetworkPolicyDocumentResult.Json),
///         }).Result),
///     });
///
///     var testSiteToSiteVpnAttachment = new Aws.NetworkManager.SiteToSiteVpnAttachment("test", new()
///     {
///         CoreNetworkId = testNetworkmanagerCoreNetwork.Id,
///         VpnConnectionArn = testVpnConnection.Arn,
///         Tags =
///         {
///             { "segment", "shared" },
///         },
///     });
///
///     var testAttachmentAccepter = new Aws.NetworkManager.AttachmentAccepter("test", new()
///     {
///         AttachmentId = testSiteToSiteVpnAttachment.Id,
///         AttachmentType = testSiteToSiteVpnAttachment.AttachmentType,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkmanager"
/// 	"github.com/pulumi/pulumi-awscc/sdk/go/awscc"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// testCustomerGateway, err := ec2.NewCustomerGateway(ctx, "test", &ec2.CustomerGatewayArgs{
/// BgpAsn: pulumi.String("65000"),
/// IpAddress: pulumi.String("172.0.0.1"),
/// Type: pulumi.String("ipsec.1"),
/// })
/// if err != nil {
/// return err
/// }
/// testVpnConnection, err := ec2.NewVpnConnection(ctx, "test", &ec2.VpnConnectionArgs{
/// CustomerGatewayId: testCustomerGateway.ID(),
/// Type: pulumi.String("ipsec.1"),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("test"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// testGlobalNetwork, err := networkmanager.NewGlobalNetwork(ctx, "test", &networkmanager.GlobalNetworkArgs{
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("test"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// test, err := networkmanager.GetCoreNetworkPolicyDocument(ctx, &networkmanager.GetCoreNetworkPolicyDocumentArgs{
/// CoreNetworkConfigurations: []networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfiguration{
/// {
/// VpnEcmpSupport: pulumi.BoolRef(false),
/// AsnRanges: []string{
/// "64512-64555",
/// },
/// EdgeLocations: []networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocation{
/// {
/// Location: current.Region,
/// Asn: pulumi.StringRef("64512"),
/// },
/// },
/// },
/// },
/// Segments: []networkmanager.GetCoreNetworkPolicyDocumentSegment{
/// {
/// Name: "shared",
/// Description: pulumi.StringRef("SegmentForSharedServices"),
/// RequireAttachmentAcceptance: pulumi.BoolRef(true),
/// },
/// },
/// SegmentActions: []networkmanager.GetCoreNetworkPolicyDocumentSegmentAction{
/// {
/// Action: "share",
/// Mode: pulumi.StringRef("attachment-route"),
/// Segment: "shared",
/// ShareWiths: []string{
/// "*",
/// },
/// },
/// },
/// AttachmentPolicies: []networkmanager.GetCoreNetworkPolicyDocumentAttachmentPolicy{
/// {
/// RuleNumber: 1,
/// ConditionLogic: pulumi.StringRef("or"),
/// Conditions: []networkmanager.GetCoreNetworkPolicyDocumentAttachmentPolicyCondition{
/// {
/// Type: "tag-value",
/// Operator: pulumi.StringRef("equals"),
/// Key: pulumi.StringRef("segment"),
/// Value: pulumi.StringRef("shared"),
/// },
/// },
/// Action: {
/// AssociationMethod: pulumi.StringRef("constant"),
/// Segment: pulumi.StringRef("shared"),
/// },
/// },
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// testNetworkmanagerCoreNetwork, err := awscc.NewNetworkmanagerCoreNetwork(ctx, "test", &awscc.NetworkmanagerCoreNetworkArgs{
/// GlobalNetworkId: testGlobalNetwork.ID(),
/// PolicyDocument: %!v(PANIC=Format method: fatal: An assertion has failed: unlowered function toJSON),
/// })
/// if err != nil {
/// return err
/// }
/// testSiteToSiteVpnAttachment, err := networkmanager.NewSiteToSiteVpnAttachment(ctx, "test", &networkmanager.SiteToSiteVpnAttachmentArgs{
/// CoreNetworkId: testNetworkmanagerCoreNetwork.Id,
/// VpnConnectionArn: testVpnConnection.Arn,
/// Tags: pulumi.StringMap{
/// "segment": pulumi.String("shared"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = networkmanager.NewAttachmentAccepter(ctx, "test", &networkmanager.AttachmentAccepterArgs{
/// AttachmentId: testSiteToSiteVpnAttachment.ID(),
/// AttachmentType: testSiteToSiteVpnAttachment.AttachmentType,
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
/// import com.pulumi.aws.ec2.CustomerGateway;
/// import com.pulumi.aws.ec2.CustomerGatewayArgs;
/// import com.pulumi.aws.ec2.VpnConnection;
/// import com.pulumi.aws.ec2.VpnConnectionArgs;
/// import com.pulumi.aws.networkmanager.GlobalNetwork;
/// import com.pulumi.aws.networkmanager.GlobalNetworkArgs;
/// import com.pulumi.aws.networkmanager.NetworkmanagerFunctions;
/// import com.pulumi.aws.networkmanager.inputs.GetCoreNetworkPolicyDocumentArgs;
/// import com.pulumi.awscc.NetworkmanagerCoreNetwork;
/// import com.pulumi.awscc.NetworkmanagerCoreNetworkArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.JsondecodeArgs;
/// import com.pulumi.aws.networkmanager.SiteToSiteVpnAttachment;
/// import com.pulumi.aws.networkmanager.SiteToSiteVpnAttachmentArgs;
/// import com.pulumi.aws.networkmanager.AttachmentAccepter;
/// import com.pulumi.aws.networkmanager.AttachmentAccepterArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var testCustomerGateway = new CustomerGateway("testCustomerGateway", CustomerGatewayArgs.builder()
///             .bgpAsn("65000")
///             .ipAddress("172.0.0.1")
///             .type("ipsec.1")
///             .build());
///
///         var testVpnConnection = new VpnConnection("testVpnConnection", VpnConnectionArgs.builder()
///             .customerGatewayId(testCustomerGateway.id())
///             .type("ipsec.1")
///             .tags(Map.of("Name", "test"))
///             .build());
///
///         var testGlobalNetwork = new GlobalNetwork("testGlobalNetwork", GlobalNetworkArgs.builder()
///             .tags(Map.of("Name", "test"))
///             .build());
///
///         final var test = NetworkmanagerFunctions.getCoreNetworkPolicyDocument(GetCoreNetworkPolicyDocumentArgs.builder()
///             .coreNetworkConfigurations(GetCoreNetworkPolicyDocumentCoreNetworkConfigurationArgs.builder()
///                 .vpnEcmpSupport(false)
///                 .asnRanges("64512-64555")
///                 .edgeLocations(GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationArgs.builder()
///                     .location(current.region())
///                     .asn("64512")
///                     .build())
///                 .build())
///             .segments(GetCoreNetworkPolicyDocumentSegmentArgs.builder()
///                 .name("shared")
///                 .description("SegmentForSharedServices")
///                 .requireAttachmentAcceptance(true)
///                 .build())
///             .segmentActions(GetCoreNetworkPolicyDocumentSegmentActionArgs.builder()
///                 .action("share")
///                 .mode("attachment-route")
///                 .segment("shared")
///                 .shareWiths("*")
///                 .build())
///             .attachmentPolicies(GetCoreNetworkPolicyDocumentAttachmentPolicyArgs.builder()
///                 .ruleNumber(1)
///                 .conditionLogic("or")
///                 .conditions(GetCoreNetworkPolicyDocumentAttachmentPolicyConditionArgs.builder()
///                     .type("tag-value")
///                     .operator("equals")
///                     .key("segment")
///                     .value("shared")
///                     .build())
///                 .action(GetCoreNetworkPolicyDocumentAttachmentPolicyActionArgs.builder()
///                     .associationMethod("constant")
///                     .segment("shared")
///                     .build())
///                 .build())
///             .build());
///
///         var testNetworkmanagerCoreNetwork = new NetworkmanagerCoreNetwork("testNetworkmanagerCoreNetwork", NetworkmanagerCoreNetworkArgs.builder()
///             .globalNetworkId(testGlobalNetwork.id())
///             .policyDocument(serializeJson(
///                 StdFunctions.jsondecode(JsondecodeArgs.builder()
///                     .input(test.json())
///                     .build()).result()))
///             .build());
///
///         var testSiteToSiteVpnAttachment = new SiteToSiteVpnAttachment("testSiteToSiteVpnAttachment", SiteToSiteVpnAttachmentArgs.builder()
///             .coreNetworkId(testNetworkmanagerCoreNetwork.id())
///             .vpnConnectionArn(testVpnConnection.arn())
///             .tags(Map.of("segment", "shared"))
///             .build());
///
///         var testAttachmentAccepter = new AttachmentAccepter("testAttachmentAccepter", AttachmentAccepterArgs.builder()
///             .attachmentId(testSiteToSiteVpnAttachment.id())
///             .attachmentType(testSiteToSiteVpnAttachment.attachmentType())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testCustomerGateway:
///     type: aws:ec2:CustomerGateway
///     name: test
///     properties:
///       bgpAsn: 65000
///       ipAddress: 172.0.0.1
///       type: ipsec.1
///   testVpnConnection:
///     type: aws:ec2:VpnConnection
///     name: test
///     properties:
///       customerGatewayId: ${testCustomerGateway.id}
///       type: ipsec.1
///       tags:
///         Name: test
///   testGlobalNetwork:
///     type: aws:networkmanager:GlobalNetwork
///     name: test
///     properties:
///       tags:
///         Name: test
///   testNetworkmanagerCoreNetwork:
///     type: awscc:NetworkmanagerCoreNetwork
///     name: test
///     properties:
///       globalNetworkId: ${testGlobalNetwork.id}
///       policyDocument:
///         fn::toJSON:
///           fn::invoke:
///             function: std:jsondecode
///             arguments:
///               input: ${test.json}
///             return: result
///   testSiteToSiteVpnAttachment:
///     type: aws:networkmanager:SiteToSiteVpnAttachment
///     name: test
///     properties:
///       coreNetworkId: ${testNetworkmanagerCoreNetwork.id}
///       vpnConnectionArn: ${testVpnConnection.arn}
///       tags:
///         segment: shared
///   testAttachmentAccepter:
///     type: aws:networkmanager:AttachmentAccepter
///     name: test
///     properties:
///       attachmentId: ${testSiteToSiteVpnAttachment.id}
///       attachmentType: ${testSiteToSiteVpnAttachment.attachmentType}
/// variables:
///   test:
///     fn::invoke:
///       function: aws:networkmanager:getCoreNetworkPolicyDocument
///       arguments:
///         coreNetworkConfigurations:
///           - vpnEcmpSupport: false
///             asnRanges:
///               - 64512-64555
///             edgeLocations:
///               - location: ${current.region}
///                 asn: 64512
///         segments:
///           - name: shared
///             description: SegmentForSharedServices
///             requireAttachmentAcceptance: true
///         segmentActions:
///           - action: share
///             mode: attachment-route
///             segment: shared
///             shareWiths:
///               - '*'
///         attachmentPolicies:
///           - ruleNumber: 1
///             conditionLogic: or
///             conditions:
///               - type: tag-value
///                 operator: equals
///                 key: segment
///                 value: shared
///             action:
///               associationMethod: constant
///               segment: shared
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.networkmanager.SiteToSiteVpnAttachment` using the attachment ID. For example:
///
/// ```sh
/// $ pulumi import aws:networkmanager/siteToSiteVpnAttachment:SiteToSiteVpnAttachment example attachment-0f8fa60d2238d1bd8
/// ```
class SiteToSiteVpnAttachment extends pulumi.CustomResource {
  /// ARN of the attachment.
  late final pulumi.Output<String> arn;

  /// Policy rule number associated with the attachment.
  late final pulumi.Output<int> attachmentPolicyRuleNumber;

  /// Type of attachment.
  late final pulumi.Output<String> attachmentType;

  /// ARN of a core network.
  late final pulumi.Output<String> coreNetworkArn;

  /// ID of a core network for the VPN attachment.
  late final pulumi.Output<String> coreNetworkId;

  /// Region where the edge is located.
  late final pulumi.Output<String> edgeLocation;

  /// ID of the attachment account owner.
  late final pulumi.Output<String> ownerAccountId;

  /// Attachment resource ARN.
  late final pulumi.Output<String> resourceArn;

  /// The routing policy label to apply to the Site-to-Site VPN attachment for traffic routing decisions. Maximum length of 256 characters. Changing this value will force recreation of the resource.
  late final pulumi.Output<String?> routingPolicyLabel;

  /// Name of the segment attachment.
  late final pulumi.Output<String> segmentName;

  /// State of the attachment.
  late final pulumi.Output<String> state;

  /// Key-value tags for the attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// ARN of the site-to-site VPN connection.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> vpnConnectionArn;

  /// Creates a new [SiteToSiteVpnAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SiteToSiteVpnAttachment]. {@macro pulumi_networkmanager_site_to_site_vpn_attachment_site_to_site_vpn_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SiteToSiteVpnAttachment(
    String name, {
    SiteToSiteVpnAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:networkmanager/siteToSiteVpnAttachment:SiteToSiteVpnAttachment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.arn = registerOutput<String>('arn');
    this.attachmentPolicyRuleNumber = registerOutput<int>(
      'attachmentPolicyRuleNumber',
    );
    this.attachmentType = registerOutput<String>('attachmentType');
    this.coreNetworkArn = registerOutput<String>('coreNetworkArn');
    this.coreNetworkId = registerOutput<String>('coreNetworkId');
    this.edgeLocation = registerOutput<String>('edgeLocation');
    this.ownerAccountId = registerOutput<String>('ownerAccountId');
    this.resourceArn = registerOutput<String>('resourceArn');
    this.routingPolicyLabel = registerOutput<String?>('routingPolicyLabel');
    this.segmentName = registerOutput<String>('segmentName');
    this.state = registerOutput<String>('state');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpnConnectionArn = registerOutput<String>('vpnConnectionArn');
  }
}
