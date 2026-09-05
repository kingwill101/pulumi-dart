import 'package:pulumi/pulumi.dart' as pulumi;
import 'site_to_site_vpn_attachment_args.dart';
import 'site_to_site_vpn_attachment_state.dart';

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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_networkmanager_sitetositevpnattachment" "example" {
///   core_network_id    = exampleAwsccNetworkmanagerCoreNetwork.id
///   vpn_connection_arn = exampleAwsVpnConnection.arn
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
///     attachmentPolicies: [{
///         action: {
///             associationMethod: "constant",
///             segment: "shared",
///         },
///         conditions: [{
///             type: "tag-value",
///             operator: "equals",
///             key: "segment",
///             value: "shared",
///         }],
///         ruleNumber: 1,
///         conditionLogic: "or",
///     }],
///     coreNetworkConfigurations: [{
///         edgeLocations: [{
///             location: current.region,
///             asn: "64512",
///         }],
///         vpnEcmpSupport: false,
///         asnRanges: ["64512-64555"],
///     }],
///     segmentActions: [{
///         action: "share",
///         mode: "attachment-route",
///         segment: "shared",
///         shareWiths: ["*"],
///     }],
///     segments: [{
///         name: "shared",
///         description: "SegmentForSharedServices",
///         requireAttachmentAcceptance: true,
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
/// test = aws.networkmanager.get_core_network_policy_document(attachment_policies=[{
///         "action": {
///             "association_method": "constant",
///             "segment": "shared",
///         },
///         "conditions": [{
///             "type": "tag-value",
///             "operator": "equals",
///             "key": "segment",
///             "value": "shared",
///         }],
///         "rule_number": 1,
///         "condition_logic": "or",
///     }],
///     core_network_configurations=[{
///         "edge_locations": [{
///             "location": current["region"],
///             "asn": "64512",
///         }],
///         "vpn_ecmp_support": False,
///         "asn_ranges": ["64512-64555"],
///     }],
///     segment_actions=[{
///         "action": "share",
///         "mode": "attachment-route",
///         "segment": "shared",
///         "share_withs": ["*"],
///     }],
///     segments=[{
///         "name": "shared",
///         "description": "SegmentForSharedServices",
///         "require_attachment_acceptance": True,
///     }])
/// test_networkmanager_core_network = awscc.NetworkmanagerCoreNetwork("test",
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
///         AttachmentPolicies = new[]
///         {
///             new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentAttachmentPolicyInputArgs
///             {
///                 Action = new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentAttachmentPolicyActionInputArgs
///                 {
///                     AssociationMethod = "constant",
///                     Segment = "shared",
///                 },
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
///                 RuleNumber = 1,
///                 ConditionLogic = "or",
///             },
///         },
///         CoreNetworkConfigurations = new[]
///         {
///             new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationInputArgs
///             {
///                 EdgeLocations = new[]
///                 {
///                     new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationInputArgs
///                     {
///                         Location = current.Region,
///                         Asn = "64512",
///                     },
///                 },
///                 VpnEcmpSupport = false,
///                 AsnRanges = new[]
///                 {
///                     "64512-64555",
///                 },
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
///         Segments = new[]
///         {
///             new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentSegmentInputArgs
///             {
///                 Name = "shared",
///                 Description = "SegmentForSharedServices",
///                 RequireAttachmentAcceptance = true,
///             },
///         },
///     });
///
///     var testNetworkmanagerCoreNetwork = new Awscc.NetworkmanagerCoreNetwork("test", new()
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
/// CustomerGatewayId: testCustomerGateway.ID().ToIDOutput().ToStringOutput(),
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
/// AttachmentPolicies: []networkmanager.GetCoreNetworkPolicyDocumentAttachmentPolicy{
/// {
/// Action: {
/// AssociationMethod: pulumi.StringRef("constant"),
/// Segment: pulumi.StringRef("shared"),
/// },
/// Conditions: []networkmanager.GetCoreNetworkPolicyDocumentAttachmentPolicyCondition{
/// {
/// Type: "tag-value",
/// Operator: pulumi.StringRef("equals"),
/// Key: pulumi.StringRef("segment"),
/// Value: pulumi.StringRef("shared"),
/// },
/// },
/// RuleNumber: 1,
/// ConditionLogic: pulumi.StringRef("or"),
/// },
/// },
/// CoreNetworkConfigurations: []networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfiguration{
/// {
/// EdgeLocations: []networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocation{
/// {
/// Location: current.Region,
/// Asn: pulumi.StringRef("64512"),
/// },
/// },
/// VpnEcmpSupport: pulumi.BoolRef(false),
/// AsnRanges: []string{
/// "64512-64555",
/// },
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
/// Segments: []networkmanager.GetCoreNetworkPolicyDocumentSegment{
/// {
/// Name: "shared",
/// Description: pulumi.StringRef("SegmentForSharedServices"),
/// RequireAttachmentAcceptance: pulumi.BoolRef(true),
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
/// AttachmentId: testSiteToSiteVpnAttachment.ID().ToIDOutput().ToStringOutput(),
/// AttachmentType: testSiteToSiteVpnAttachment.AttachmentType,
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// data "aws_networkmanager_getcorenetworkpolicydocument" "test" {
///   attachment_policies {
///     action = {
///       association_method = "constant"
///       segment            = "shared"
///     }
///     conditions {
///       type     = "tag-value"
///       operator = "equals"
///       key      = "segment"
///       value    = "shared"
///     }
///     rule_number     = 1
///     condition_logic = "or"
///   }
///   core_network_configurations {
///     edge_locations {
///       location = current.region
///       asn      = 64512
///     }
///     vpn_ecmp_support = false
///     asn_ranges       = ["64512-64555"]
///   }
///   segment_actions {
///     action      = "share"
///     mode        = "attachment-route"
///     segment     = "shared"
///     share_withs = ["*"]
///   }
///   segments {
///     name                          = "shared"
///     description                   = "SegmentForSharedServices"
///     require_attachment_acceptance = true
///   }
/// }
///
/// resource "aws_ec2_customergateway" "test" {
///   bgp_asn    = 65000
///   ip_address = "172.0.0.1"
///   type       = "ipsec.1"
/// }
/// resource "aws_ec2_vpnconnection" "test" {
///   customer_gateway_id = aws_ec2_customergateway.test.id
///   type                = "ipsec.1"
///   tags = {
///     "Name" = "test"
///   }
/// }
/// resource "aws_networkmanager_globalnetwork" "test" {
///   tags = {
///     "Name" = "test"
///   }
/// }
/// resource "awscc_networkmanagercorenetwork" "test" {
///   global_network_id = aws_networkmanager_globalnetwork.test.id
///   policy_document   = jsonencode(jsondecode(data.aws_networkmanager_getcorenetworkpolicydocument.test.json))
/// }
/// resource "aws_networkmanager_sitetositevpnattachment" "test" {
///   core_network_id    = awscc_networkmanagercorenetwork.test.id
///   vpn_connection_arn = aws_ec2_vpnconnection.test.arn
///   tags = {
///     "segment" = "shared"
///   }
/// }
/// resource "aws_networkmanager_attachmentaccepter" "test" {
///   attachment_id   = aws_networkmanager_sitetositevpnattachment.test.id
///   attachment_type = aws_networkmanager_sitetositevpnattachment.test.attachment_type
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
/// import com.pulumi.aws.networkmanager.inputs.GetCoreNetworkPolicyDocumentAttachmentPolicyArgs;
/// import com.pulumi.aws.networkmanager.inputs.GetCoreNetworkPolicyDocumentAttachmentPolicyActionArgs;
/// import com.pulumi.aws.networkmanager.inputs.GetCoreNetworkPolicyDocumentAttachmentPolicyConditionArgs;
/// import com.pulumi.aws.networkmanager.inputs.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationArgs;
/// import com.pulumi.aws.networkmanager.inputs.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationArgs;
/// import com.pulumi.aws.networkmanager.inputs.GetCoreNetworkPolicyDocumentSegmentActionArgs;
/// import com.pulumi.aws.networkmanager.inputs.GetCoreNetworkPolicyDocumentSegmentArgs;
/// import com.pulumi.awscc.NetworkmanagerCoreNetwork;
/// import com.pulumi.awscc.NetworkmanagerCoreNetworkArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.JsondecodeArgs;
/// import com.pulumi.aws.networkmanager.SiteToSiteVpnAttachment;
/// import com.pulumi.aws.networkmanager.SiteToSiteVpnAttachmentArgs;
/// import com.pulumi.aws.networkmanager.AttachmentAccepter;
/// import com.pulumi.aws.networkmanager.AttachmentAccepterArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///             .attachmentPolicies(GetCoreNetworkPolicyDocumentAttachmentPolicyArgs.builder()
///                 .action(GetCoreNetworkPolicyDocumentAttachmentPolicyActionArgs.builder()
///                     .associationMethod("constant")
///                     .segment("shared")
///                     .build())
///                 .conditions(GetCoreNetworkPolicyDocumentAttachmentPolicyConditionArgs.builder()
///                     .type("tag-value")
///                     .operator("equals")
///                     .key("segment")
///                     .value("shared")
///                     .build())
///                 .ruleNumber(1)
///                 .conditionLogic("or")
///                 .build())
///             .coreNetworkConfigurations(GetCoreNetworkPolicyDocumentCoreNetworkConfigurationArgs.builder()
///                 .edgeLocations(GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationArgs.builder()
///                     .location(current.region())
///                     .asn("64512")
///                     .build())
///                 .vpnEcmpSupport(false)
///                 .asnRanges("64512-64555")
///                 .build())
///             .segmentActions(GetCoreNetworkPolicyDocumentSegmentActionArgs.builder()
///                 .action("share")
///                 .mode("attachment-route")
///                 .segment("shared")
///                 .shareWiths("*")
///                 .build())
///             .segments(GetCoreNetworkPolicyDocumentSegmentArgs.builder()
///                 .name("shared")
///                 .description("SegmentForSharedServices")
///                 .requireAttachmentAcceptance(true)
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
///         attachmentPolicies:
///           - action:
///               associationMethod: constant
///               segment: shared
///             conditions:
///               - type: tag-value
///                 operator: equals
///                 key: segment
///                 value: shared
///             ruleNumber: 1
///             conditionLogic: or
///         coreNetworkConfigurations:
///           - edgeLocations:
///               - location: ${current.region}
///                 asn: 64512
///             vpnEcmpSupport: false
///             asnRanges:
///               - 64512-64555
///         segmentActions:
///           - action: share
///             mode: attachment-route
///             segment: shared
///             shareWiths:
///               - '*'
///         segments:
///           - name: shared
///             description: SegmentForSharedServices
///             requireAttachmentAcceptance: true
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
  /// Key-value tags for the attachment. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    attachmentPolicyRuleNumber = registerOutput<int>('attachmentPolicyRuleNumber');
    attachmentType = registerOutput<String>('attachmentType');
    coreNetworkArn = registerOutput<String>('coreNetworkArn');
    coreNetworkId = registerOutput<String>('coreNetworkId');
    edgeLocation = registerOutput<String>('edgeLocation');
    ownerAccountId = registerOutput<String>('ownerAccountId');
    resourceArn = registerOutput<String>('resourceArn');
    routingPolicyLabel = registerOutput<String?>('routingPolicyLabel');
    segmentName = registerOutput<String>('segmentName');
    state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vpnConnectionArn = registerOutput<String>('vpnConnectionArn');
  }

  /// Gets an existing [SiteToSiteVpnAttachment] resource's state with the given [name] and [id].
  static SiteToSiteVpnAttachment get(
    String name,
    pulumi.Input<String> id, {
    SiteToSiteVpnAttachmentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SiteToSiteVpnAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SiteToSiteVpnAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/siteToSiteVpnAttachment:SiteToSiteVpnAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    attachmentPolicyRuleNumber = registerOutput<int>('attachmentPolicyRuleNumber');
    attachmentType = registerOutput<String>('attachmentType');
    coreNetworkArn = registerOutput<String>('coreNetworkArn');
    coreNetworkId = registerOutput<String>('coreNetworkId');
    edgeLocation = registerOutput<String>('edgeLocation');
    ownerAccountId = registerOutput<String>('ownerAccountId');
    resourceArn = registerOutput<String>('resourceArn');
    routingPolicyLabel = registerOutput<String?>('routingPolicyLabel');
    segmentName = registerOutput<String>('segmentName');
    this.state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vpnConnectionArn = registerOutput<String>('vpnConnectionArn');
  }

  /// Creates a typed reference to an existing [SiteToSiteVpnAttachment] resource.
  SiteToSiteVpnAttachment.reference(String urn)
    : super(
        'aws:networkmanager/siteToSiteVpnAttachment:SiteToSiteVpnAttachment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    attachmentPolicyRuleNumber = registerOutput<int>('attachmentPolicyRuleNumber');
    attachmentType = registerOutput<String>('attachmentType');
    coreNetworkArn = registerOutput<String>('coreNetworkArn');
    coreNetworkId = registerOutput<String>('coreNetworkId');
    edgeLocation = registerOutput<String>('edgeLocation');
    ownerAccountId = registerOutput<String>('ownerAccountId');
    resourceArn = registerOutput<String>('resourceArn');
    routingPolicyLabel = registerOutput<String?>('routingPolicyLabel');
    segmentName = registerOutput<String>('segmentName');
    state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vpnConnectionArn = registerOutput<String>('vpnConnectionArn');
  }
}
