import 'package:pulumi/pulumi.dart' as pulumi;
import 'core_network_policy_attachment_args.dart';

/// Manages a Network Manager Core Network Policy Attachment.
///
/// Use this resource to attach a Core Network Policy to an existing Core Network and execute the change set, which deploys changes globally based on the policy submitted (sets the policy to `LIVE`).
///
/// > **NOTE:** Deleting this resource will not delete the current policy defined in this resource. Deleting this resource will also not revert the current `LIVE` policy to the previous version.
///
/// ## Example Usage
///
/// ### Basic
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkmanager.CoreNetwork("example", {globalNetworkId: exampleAwsNetworkmanagerGlobalNetwork.id});
/// const exampleCoreNetworkPolicyAttachment = new aws.networkmanager.CoreNetworkPolicyAttachment("example", {
///     coreNetworkId: example.id,
///     policyDocument: exampleAwsNetworkmanagerCoreNetworkPolicyDocument.json,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmanager.CoreNetwork("example", global_network_id=example_aws_networkmanager_global_network["id"])
/// example_core_network_policy_attachment = aws.networkmanager.CoreNetworkPolicyAttachment("example",
///     core_network_id=example.id,
///     policy_document=example_aws_networkmanager_core_network_policy_document["json"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.NetworkManager.CoreNetwork("example", new()
///     {
///         GlobalNetworkId = exampleAwsNetworkmanagerGlobalNetwork.Id,
///     });
///
///     var exampleCoreNetworkPolicyAttachment = new Aws.NetworkManager.CoreNetworkPolicyAttachment("example", new()
///     {
///         CoreNetworkId = example.Id,
///         PolicyDocument = exampleAwsNetworkmanagerCoreNetworkPolicyDocument.Json,
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
/// 		example, err := networkmanager.NewCoreNetwork(ctx, "example", &networkmanager.CoreNetworkArgs{
/// 			GlobalNetworkId: pulumi.Any(exampleAwsNetworkmanagerGlobalNetwork.Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkmanager.NewCoreNetworkPolicyAttachment(ctx, "example", &networkmanager.CoreNetworkPolicyAttachmentArgs{
/// 			CoreNetworkId:  example.ID(),
/// 			PolicyDocument: pulumi.Any(exampleAwsNetworkmanagerCoreNetworkPolicyDocument.Json),
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
/// import com.pulumi.aws.networkmanager.CoreNetwork;
/// import com.pulumi.aws.networkmanager.CoreNetworkArgs;
/// import com.pulumi.aws.networkmanager.CoreNetworkPolicyAttachment;
/// import com.pulumi.aws.networkmanager.CoreNetworkPolicyAttachmentArgs;
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
///         var example = new CoreNetwork("example", CoreNetworkArgs.builder()
///             .globalNetworkId(exampleAwsNetworkmanagerGlobalNetwork.id())
///             .build());
///
///         var exampleCoreNetworkPolicyAttachment = new CoreNetworkPolicyAttachment("exampleCoreNetworkPolicyAttachment", CoreNetworkPolicyAttachmentArgs.builder()
///             .coreNetworkId(example.id())
///             .policyDocument(exampleAwsNetworkmanagerCoreNetworkPolicyDocument.json())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:networkmanager:CoreNetwork
///     properties:
///       globalNetworkId: ${exampleAwsNetworkmanagerGlobalNetwork.id}
///   exampleCoreNetworkPolicyAttachment:
///     type: aws:networkmanager:CoreNetworkPolicyAttachment
///     name: example
///     properties:
///       coreNetworkId: ${example.id}
///       policyDocument: ${exampleAwsNetworkmanagerCoreNetworkPolicyDocument.json}
/// ```
///
///
/// ### With VPC Attachment (Single Region)
///
/// The example below illustrates the scenario where your policy document has static routes pointing to VPC attachments and you want to attach your VPCs to the core network before applying the desired policy document. Set the `create_base_policy` argument of the `aws.networkmanager.CoreNetwork` resource to `true` if your core network does not currently have any `LIVE` policies (e.g. this is the first `pulumi up` with the core network resource), since a `LIVE` policy is required before VPCs can be attached to the core network. Otherwise, if your core network already has a `LIVE` policy, you may exclude the `create_base_policy` argument. There are 2 options to implement this:
///
/// - Option 1: Use the `base_policy_document` argument in the `aws.networkmanager.CoreNetwork` resource that allows the most customizations to a base policy. Use this to customize the `edge_locations` `asn`. In the example below, `us-west-2` and ASN `65500` are used in the base policy.
/// - Option 2: Use the `create_base_policy` argument only. This creates a base policy in the region specified in the `provider` block.
///
/// ### Option 1 - using base_policy_document
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleGlobalNetwork = new aws.networkmanager.GlobalNetwork("example", {});
/// const base = aws.networkmanager.getCoreNetworkPolicyDocument({
///     coreNetworkConfigurations: [{
///         asnRanges: ["65022-65534"],
///         edgeLocations: [{
///             location: "us-west-2",
///             asn: "65500",
///         }],
///     }],
///     segments: [{
///         name: "segment",
///     }],
/// });
/// const exampleCoreNetwork = new aws.networkmanager.CoreNetwork("example", {
///     globalNetworkId: exampleGlobalNetwork.id,
///     basePolicyDocument: base.then(base => base.json),
///     createBasePolicy: true,
/// });
/// const exampleVpcAttachment = new aws.networkmanager.VpcAttachment("example", {
///     coreNetworkId: exampleCoreNetwork.id,
///     subnetArns: exampleAwsSubnet.map(__item => __item.arn),
///     vpcArn: exampleAwsVpc.arn,
/// });
/// const example = aws.networkmanager.getCoreNetworkPolicyDocumentOutput({
///     coreNetworkConfigurations: [{
///         asnRanges: ["65022-65534"],
///         edgeLocations: [{
///             location: "us-west-2",
///             asn: "65500",
///         }],
///     }],
///     segments: [{
///         name: "segment",
///     }],
///     segmentActions: [{
///         action: "create-route",
///         segment: "segment",
///         destinationCidrBlocks: ["0.0.0.0/0"],
///         destinations: [exampleVpcAttachment.id],
///     }],
/// });
/// const exampleCoreNetworkPolicyAttachment = new aws.networkmanager.CoreNetworkPolicyAttachment("example", {
///     coreNetworkId: exampleCoreNetwork.id,
///     policyDocument: example.apply(example => example.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_global_network = aws.networkmanager.GlobalNetwork("example")
/// base = aws.networkmanager.get_core_network_policy_document(core_network_configurations=[{
///         "asn_ranges": ["65022-65534"],
///         "edge_locations": [{
///             "location": "us-west-2",
///             "asn": "65500",
///         }],
///     }],
///     segments=[{
///         "name": "segment",
///     }])
/// example_core_network = aws.networkmanager.CoreNetwork("example",
///     global_network_id=example_global_network.id,
///     base_policy_document=base.json,
///     create_base_policy=True)
/// example_vpc_attachment = aws.networkmanager.VpcAttachment("example",
///     core_network_id=example_core_network.id,
///     subnet_arns=[__item["arn"] for __item in example_aws_subnet],
///     vpc_arn=example_aws_vpc["arn"])
/// example = aws.networkmanager.get_core_network_policy_document_output(core_network_configurations=[{
///         "asn_ranges": ["65022-65534"],
///         "edge_locations": [{
///             "location": "us-west-2",
///             "asn": "65500",
///         }],
///     }],
///     segments=[{
///         "name": "segment",
///     }],
///     segment_actions=[{
///         "action": "create-route",
///         "segment": "segment",
///         "destination_cidr_blocks": ["0.0.0.0/0"],
///         "destinations": [example_vpc_attachment.id],
///     }])
/// example_core_network_policy_attachment = aws.networkmanager.CoreNetworkPolicyAttachment("example",
///     core_network_id=example_core_network.id,
///     policy_document=example.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleGlobalNetwork = new Aws.NetworkManager.GlobalNetwork("example");
///
///     var @base = Aws.NetworkManager.GetCoreNetworkPolicyDocument.Invoke(new()
///     {
///         CoreNetworkConfigurations = new[]
///         {
///             new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationInputArgs
///             {
///                 AsnRanges = new[]
///                 {
///                     "65022-65534",
///                 },
///                 EdgeLocations = new[]
///                 {
///                     new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationInputArgs
///                     {
///                         Location = "us-west-2",
///                         Asn = "65500",
///                     },
///                 },
///             },
///         },
///         Segments = new[]
///         {
///             new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentSegmentInputArgs
///             {
///                 Name = "segment",
///             },
///         },
///     });
///
///     var exampleCoreNetwork = new Aws.NetworkManager.CoreNetwork("example", new()
///     {
///         GlobalNetworkId = exampleGlobalNetwork.Id,
///         BasePolicyDocument = @base.Apply(@base => @base.Apply(getCoreNetworkPolicyDocumentResult => getCoreNetworkPolicyDocumentResult.Json)),
///         CreateBasePolicy = true,
///     });
///
///     var exampleVpcAttachment = new Aws.NetworkManager.VpcAttachment("example", new()
///     {
///         CoreNetworkId = exampleCoreNetwork.Id,
///         SubnetArns = exampleAwsSubnet.Select(__item => __item.Arn).ToList(),
///         VpcArn = exampleAwsVpc.Arn,
///     });
///
///     var example = Aws.NetworkManager.GetCoreNetworkPolicyDocument.Invoke(new()
///     {
///         CoreNetworkConfigurations = new[]
///         {
///             new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationInputArgs
///             {
///                 AsnRanges = new[]
///                 {
///                     "65022-65534",
///                 },
///                 EdgeLocations = new[]
///                 {
///                     new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationInputArgs
///                     {
///                         Location = "us-west-2",
///                         Asn = "65500",
///                     },
///                 },
///             },
///         },
///         Segments = new[]
///         {
///             new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentSegmentInputArgs
///             {
///                 Name = "segment",
///             },
///         },
///         SegmentActions = new[]
///         {
///             new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentSegmentActionInputArgs
///             {
///                 Action = "create-route",
///                 Segment = "segment",
///                 DestinationCidrBlocks = new[]
///                 {
///                     "0.0.0.0/0",
///                 },
///                 Destinations = new[]
///                 {
///                     exampleVpcAttachment.Id,
///                 },
///             },
///         },
///     });
///
///     var exampleCoreNetworkPolicyAttachment = new Aws.NetworkManager.CoreNetworkPolicyAttachment("example", new()
///     {
///         CoreNetworkId = exampleCoreNetwork.Id,
///         PolicyDocument = example.Apply(getCoreNetworkPolicyDocumentResult => getCoreNetworkPolicyDocumentResult.Json),
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
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// exampleGlobalNetwork, err := networkmanager.NewGlobalNetwork(ctx, "example", nil)
/// if err != nil {
/// return err
/// }
/// base, err := networkmanager.GetCoreNetworkPolicyDocument(ctx, &networkmanager.GetCoreNetworkPolicyDocumentArgs{
/// CoreNetworkConfigurations: []networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfiguration{
/// {
/// AsnRanges: []string{
/// "65022-65534",
/// },
/// EdgeLocations: []networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocation{
/// {
/// Location: "us-west-2",
/// Asn: pulumi.StringRef("65500"),
/// },
/// },
/// },
/// },
/// Segments: []networkmanager.GetCoreNetworkPolicyDocumentSegment{
/// {
/// Name: "segment",
/// },
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// exampleCoreNetwork, err := networkmanager.NewCoreNetwork(ctx, "example", &networkmanager.CoreNetworkArgs{
/// GlobalNetworkId: exampleGlobalNetwork.ID(),
/// BasePolicyDocument: pulumi.String(base.Json),
/// CreateBasePolicy: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// var splat0 []interface{}
/// for _, val0 := range exampleAwsSubnet {
/// splat0 = append(splat0, val0.Arn)
/// }
/// exampleVpcAttachment, err := networkmanager.NewVpcAttachment(ctx, "example", &networkmanager.VpcAttachmentArgs{
/// CoreNetworkId: exampleCoreNetwork.ID(),
/// SubnetArns: toPulumiArray(splat0),
/// VpcArn: pulumi.Any(exampleAwsVpc.Arn),
/// })
/// if err != nil {
/// return err
/// }
/// example := networkmanager.GetCoreNetworkPolicyDocumentOutput(ctx, networkmanager.GetCoreNetworkPolicyDocumentOutputArgs{
/// CoreNetworkConfigurations: networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationArray{
/// &networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationArgs{
/// AsnRanges: pulumi.StringArray{
/// pulumi.String("65022-65534"),
/// },
/// EdgeLocations: networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationArray{
/// &networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationArgs{
/// Location: pulumi.String("us-west-2"),
/// Asn: pulumi.String("65500"),
/// },
/// },
/// },
/// },
/// Segments: networkmanager.GetCoreNetworkPolicyDocumentSegmentArray{
/// &networkmanager.GetCoreNetworkPolicyDocumentSegmentArgs{
/// Name: pulumi.String("segment"),
/// },
/// },
/// SegmentActions: networkmanager.GetCoreNetworkPolicyDocumentSegmentActionArray{
/// &networkmanager.GetCoreNetworkPolicyDocumentSegmentActionArgs{
/// Action: pulumi.String("create-route"),
/// Segment: pulumi.String("segment"),
/// DestinationCidrBlocks: pulumi.StringArray{
/// pulumi.String("0.0.0.0/0"),
/// },
/// Destinations: pulumi.StringArray{
/// exampleVpcAttachment.ID(),
/// },
/// },
/// },
/// }, nil);
/// _, err = networkmanager.NewCoreNetworkPolicyAttachment(ctx, "example", &networkmanager.CoreNetworkPolicyAttachmentArgs{
/// CoreNetworkId: exampleCoreNetwork.ID(),
/// PolicyDocument: pulumi.String(example.ApplyT(func(example networkmanager.GetCoreNetworkPolicyDocumentResult) (*string, error) {
/// return &example.Json, nil
/// }).(pulumi.StringPtrOutput)),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// func toPulumiArray(arr []) pulumi.Array {
/// var pulumiArr pulumi.Array
/// for _, v := range arr {
/// pulumiArr = append(pulumiArr, pulumi.(v))
/// }
/// return pulumiArr
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkmanager.GlobalNetwork;
/// import com.pulumi.aws.networkmanager.NetworkmanagerFunctions;
/// import com.pulumi.aws.networkmanager.inputs.GetCoreNetworkPolicyDocumentArgs;
/// import com.pulumi.aws.networkmanager.CoreNetwork;
/// import com.pulumi.aws.networkmanager.CoreNetworkArgs;
/// import com.pulumi.aws.networkmanager.VpcAttachment;
/// import com.pulumi.aws.networkmanager.VpcAttachmentArgs;
/// import com.pulumi.aws.networkmanager.CoreNetworkPolicyAttachment;
/// import com.pulumi.aws.networkmanager.CoreNetworkPolicyAttachmentArgs;
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
///         var exampleGlobalNetwork = new GlobalNetwork("exampleGlobalNetwork");
///
///         final var base = NetworkmanagerFunctions.getCoreNetworkPolicyDocument(GetCoreNetworkPolicyDocumentArgs.builder()
///             .coreNetworkConfigurations(GetCoreNetworkPolicyDocumentCoreNetworkConfigurationArgs.builder()
///                 .asnRanges("65022-65534")
///                 .edgeLocations(GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationArgs.builder()
///                     .location("us-west-2")
///                     .asn("65500")
///                     .build())
///                 .build())
///             .segments(GetCoreNetworkPolicyDocumentSegmentArgs.builder()
///                 .name("segment")
///                 .build())
///             .build());
///
///         var exampleCoreNetwork = new CoreNetwork("exampleCoreNetwork", CoreNetworkArgs.builder()
///             .globalNetworkId(exampleGlobalNetwork.id())
///             .basePolicyDocument(base.json())
///             .createBasePolicy(true)
///             .build());
///
///         var exampleVpcAttachment = new VpcAttachment("exampleVpcAttachment", VpcAttachmentArgs.builder()
///             .coreNetworkId(exampleCoreNetwork.id())
///             .subnetArns(exampleAwsSubnet.stream().map(element -> element.arn()).collect(toList()))
///             .vpcArn(exampleAwsVpc.arn())
///             .build());
///
///         final var example = NetworkmanagerFunctions.getCoreNetworkPolicyDocument(GetCoreNetworkPolicyDocumentArgs.builder()
///             .coreNetworkConfigurations(GetCoreNetworkPolicyDocumentCoreNetworkConfigurationArgs.builder()
///                 .asnRanges("65022-65534")
///                 .edgeLocations(GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationArgs.builder()
///                     .location("us-west-2")
///                     .asn("65500")
///                     .build())
///                 .build())
///             .segments(GetCoreNetworkPolicyDocumentSegmentArgs.builder()
///                 .name("segment")
///                 .build())
///             .segmentActions(GetCoreNetworkPolicyDocumentSegmentActionArgs.builder()
///                 .action("create-route")
///                 .segment("segment")
///                 .destinationCidrBlocks("0.0.0.0/0")
///                 .destinations(exampleVpcAttachment.id())
///                 .build())
///             .build());
///
///         var exampleCoreNetworkPolicyAttachment = new CoreNetworkPolicyAttachment("exampleCoreNetworkPolicyAttachment", CoreNetworkPolicyAttachmentArgs.builder()
///             .coreNetworkId(exampleCoreNetwork.id())
///             .policyDocument(example.applyValue(_example -> _example.json()))
///             .build());
///
///     }
/// }
/// ```
///
///
/// ### Option 2 - create_base_policy only
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleGlobalNetwork = new aws.networkmanager.GlobalNetwork("example", {});
/// const exampleCoreNetwork = new aws.networkmanager.CoreNetwork("example", {
///     globalNetworkId: exampleGlobalNetwork.id,
///     createBasePolicy: true,
/// });
/// const exampleVpcAttachment = new aws.networkmanager.VpcAttachment("example", {
///     coreNetworkId: exampleCoreNetwork.id,
///     subnetArns: exampleAwsSubnet.map(__item => __item.arn),
///     vpcArn: exampleAwsVpc.arn,
/// });
/// const example = aws.networkmanager.getCoreNetworkPolicyDocumentOutput({
///     coreNetworkConfigurations: [{
///         asnRanges: ["65022-65534"],
///         edgeLocations: [{
///             location: "us-west-2",
///         }],
///     }],
///     segments: [{
///         name: "segment",
///     }],
///     segmentActions: [{
///         action: "create-route",
///         segment: "segment",
///         destinationCidrBlocks: ["0.0.0.0/0"],
///         destinations: [exampleVpcAttachment.id],
///     }],
/// });
/// const exampleCoreNetworkPolicyAttachment = new aws.networkmanager.CoreNetworkPolicyAttachment("example", {
///     coreNetworkId: exampleCoreNetwork.id,
///     policyDocument: example.apply(example => example.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_global_network = aws.networkmanager.GlobalNetwork("example")
/// example_core_network = aws.networkmanager.CoreNetwork("example",
///     global_network_id=example_global_network.id,
///     create_base_policy=True)
/// example_vpc_attachment = aws.networkmanager.VpcAttachment("example",
///     core_network_id=example_core_network.id,
///     subnet_arns=[__item["arn"] for __item in example_aws_subnet],
///     vpc_arn=example_aws_vpc["arn"])
/// example = aws.networkmanager.get_core_network_policy_document_output(core_network_configurations=[{
///         "asn_ranges": ["65022-65534"],
///         "edge_locations": [{
///             "location": "us-west-2",
///         }],
///     }],
///     segments=[{
///         "name": "segment",
///     }],
///     segment_actions=[{
///         "action": "create-route",
///         "segment": "segment",
///         "destination_cidr_blocks": ["0.0.0.0/0"],
///         "destinations": [example_vpc_attachment.id],
///     }])
/// example_core_network_policy_attachment = aws.networkmanager.CoreNetworkPolicyAttachment("example",
///     core_network_id=example_core_network.id,
///     policy_document=example.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleGlobalNetwork = new Aws.NetworkManager.GlobalNetwork("example");
///
///     var exampleCoreNetwork = new Aws.NetworkManager.CoreNetwork("example", new()
///     {
///         GlobalNetworkId = exampleGlobalNetwork.Id,
///         CreateBasePolicy = true,
///     });
///
///     var exampleVpcAttachment = new Aws.NetworkManager.VpcAttachment("example", new()
///     {
///         CoreNetworkId = exampleCoreNetwork.Id,
///         SubnetArns = exampleAwsSubnet.Select(__item => __item.Arn).ToList(),
///         VpcArn = exampleAwsVpc.Arn,
///     });
///
///     var example = Aws.NetworkManager.GetCoreNetworkPolicyDocument.Invoke(new()
///     {
///         CoreNetworkConfigurations = new[]
///         {
///             new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationInputArgs
///             {
///                 AsnRanges = new[]
///                 {
///                     "65022-65534",
///                 },
///                 EdgeLocations = new[]
///                 {
///                     new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationInputArgs
///                     {
///                         Location = "us-west-2",
///                     },
///                 },
///             },
///         },
///         Segments = new[]
///         {
///             new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentSegmentInputArgs
///             {
///                 Name = "segment",
///             },
///         },
///         SegmentActions = new[]
///         {
///             new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentSegmentActionInputArgs
///             {
///                 Action = "create-route",
///                 Segment = "segment",
///                 DestinationCidrBlocks = new[]
///                 {
///                     "0.0.0.0/0",
///                 },
///                 Destinations = new[]
///                 {
///                     exampleVpcAttachment.Id,
///                 },
///             },
///         },
///     });
///
///     var exampleCoreNetworkPolicyAttachment = new Aws.NetworkManager.CoreNetworkPolicyAttachment("example", new()
///     {
///         CoreNetworkId = exampleCoreNetwork.Id,
///         PolicyDocument = example.Apply(getCoreNetworkPolicyDocumentResult => getCoreNetworkPolicyDocumentResult.Json),
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
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// exampleGlobalNetwork, err := networkmanager.NewGlobalNetwork(ctx, "example", nil)
/// if err != nil {
/// return err
/// }
/// exampleCoreNetwork, err := networkmanager.NewCoreNetwork(ctx, "example", &networkmanager.CoreNetworkArgs{
/// GlobalNetworkId: exampleGlobalNetwork.ID(),
/// CreateBasePolicy: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// var splat0 []interface{}
/// for _, val0 := range exampleAwsSubnet {
/// splat0 = append(splat0, val0.Arn)
/// }
/// exampleVpcAttachment, err := networkmanager.NewVpcAttachment(ctx, "example", &networkmanager.VpcAttachmentArgs{
/// CoreNetworkId: exampleCoreNetwork.ID(),
/// SubnetArns: toPulumiArray(splat0),
/// VpcArn: pulumi.Any(exampleAwsVpc.Arn),
/// })
/// if err != nil {
/// return err
/// }
/// example := networkmanager.GetCoreNetworkPolicyDocumentOutput(ctx, networkmanager.GetCoreNetworkPolicyDocumentOutputArgs{
/// CoreNetworkConfigurations: networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationArray{
/// &networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationArgs{
/// AsnRanges: pulumi.StringArray{
/// pulumi.String("65022-65534"),
/// },
/// EdgeLocations: networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationArray{
/// &networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationArgs{
/// Location: pulumi.String("us-west-2"),
/// },
/// },
/// },
/// },
/// Segments: networkmanager.GetCoreNetworkPolicyDocumentSegmentArray{
/// &networkmanager.GetCoreNetworkPolicyDocumentSegmentArgs{
/// Name: pulumi.String("segment"),
/// },
/// },
/// SegmentActions: networkmanager.GetCoreNetworkPolicyDocumentSegmentActionArray{
/// &networkmanager.GetCoreNetworkPolicyDocumentSegmentActionArgs{
/// Action: pulumi.String("create-route"),
/// Segment: pulumi.String("segment"),
/// DestinationCidrBlocks: pulumi.StringArray{
/// pulumi.String("0.0.0.0/0"),
/// },
/// Destinations: pulumi.StringArray{
/// exampleVpcAttachment.ID(),
/// },
/// },
/// },
/// }, nil);
/// _, err = networkmanager.NewCoreNetworkPolicyAttachment(ctx, "example", &networkmanager.CoreNetworkPolicyAttachmentArgs{
/// CoreNetworkId: exampleCoreNetwork.ID(),
/// PolicyDocument: pulumi.String(example.ApplyT(func(example networkmanager.GetCoreNetworkPolicyDocumentResult) (*string, error) {
/// return &example.Json, nil
/// }).(pulumi.StringPtrOutput)),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// func toPulumiArray(arr []) pulumi.Array {
/// var pulumiArr pulumi.Array
/// for _, v := range arr {
/// pulumiArr = append(pulumiArr, pulumi.(v))
/// }
/// return pulumiArr
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkmanager.GlobalNetwork;
/// import com.pulumi.aws.networkmanager.CoreNetwork;
/// import com.pulumi.aws.networkmanager.CoreNetworkArgs;
/// import com.pulumi.aws.networkmanager.VpcAttachment;
/// import com.pulumi.aws.networkmanager.VpcAttachmentArgs;
/// import com.pulumi.aws.networkmanager.NetworkmanagerFunctions;
/// import com.pulumi.aws.networkmanager.inputs.GetCoreNetworkPolicyDocumentArgs;
/// import com.pulumi.aws.networkmanager.CoreNetworkPolicyAttachment;
/// import com.pulumi.aws.networkmanager.CoreNetworkPolicyAttachmentArgs;
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
///         var exampleGlobalNetwork = new GlobalNetwork("exampleGlobalNetwork");
///
///         var exampleCoreNetwork = new CoreNetwork("exampleCoreNetwork", CoreNetworkArgs.builder()
///             .globalNetworkId(exampleGlobalNetwork.id())
///             .createBasePolicy(true)
///             .build());
///
///         var exampleVpcAttachment = new VpcAttachment("exampleVpcAttachment", VpcAttachmentArgs.builder()
///             .coreNetworkId(exampleCoreNetwork.id())
///             .subnetArns(exampleAwsSubnet.stream().map(element -> element.arn()).collect(toList()))
///             .vpcArn(exampleAwsVpc.arn())
///             .build());
///
///         final var example = NetworkmanagerFunctions.getCoreNetworkPolicyDocument(GetCoreNetworkPolicyDocumentArgs.builder()
///             .coreNetworkConfigurations(GetCoreNetworkPolicyDocumentCoreNetworkConfigurationArgs.builder()
///                 .asnRanges("65022-65534")
///                 .edgeLocations(GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationArgs.builder()
///                     .location("us-west-2")
///                     .build())
///                 .build())
///             .segments(GetCoreNetworkPolicyDocumentSegmentArgs.builder()
///                 .name("segment")
///                 .build())
///             .segmentActions(GetCoreNetworkPolicyDocumentSegmentActionArgs.builder()
///                 .action("create-route")
///                 .segment("segment")
///                 .destinationCidrBlocks("0.0.0.0/0")
///                 .destinations(exampleVpcAttachment.id())
///                 .build())
///             .build());
///
///         var exampleCoreNetworkPolicyAttachment = new CoreNetworkPolicyAttachment("exampleCoreNetworkPolicyAttachment", CoreNetworkPolicyAttachmentArgs.builder()
///             .coreNetworkId(exampleCoreNetwork.id())
///             .policyDocument(example.applyValue(_example -> _example.json()))
///             .build());
///
///     }
/// }
/// ```
///
///
/// ### With VPC Attachment (Multi-Region)
///
/// The example below illustrates the scenario where your policy document has static routes pointing to VPC attachments and you want to attach your VPCs to the core network before applying the desired policy document. Set the `create_base_policy` argument of the `aws.networkmanager.CoreNetwork` resource to `true` if your core network does not currently have any `LIVE` policies (e.g. this is the first `pulumi up` with the core network resource), since a `LIVE` policy is required before VPCs can be attached to the core network. Otherwise, if your core network already has a `LIVE` policy, you may exclude the `create_base_policy` argument. For multi-region in a core network that does not yet have a `LIVE` policy, there are 2 options:
///
/// - Option 1: Use the `base_policy_document` argument that allows the most customizations to a base policy. Use this to customize the `edge_locations` `asn`. In the example below, `us-west-2`, `us-east-1` and specific ASNs are used in the base policy.
/// - Option 2: Pass a list of regions to the `aws.networkmanager.CoreNetwork` resource `base_policy_regions` argument. In the example below, `us-west-2` and `us-east-1` are specified in the base policy.
///
/// ### Option 1 - using base_policy_document
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleGlobalNetwork = new aws.networkmanager.GlobalNetwork("example", {});
/// const base = aws.networkmanager.getCoreNetworkPolicyDocument({
///     coreNetworkConfigurations: [{
///         asnRanges: ["65022-65534"],
///         edgeLocations: [
///             {
///                 location: "us-west-2",
///                 asn: "65500",
///             },
///             {
///                 location: "us-east-1",
///                 asn: "65501",
///             },
///         ],
///     }],
///     segments: [{
///         name: "segment",
///     }],
/// });
/// const exampleCoreNetwork = new aws.networkmanager.CoreNetwork("example", {
///     globalNetworkId: exampleGlobalNetwork.id,
///     basePolicyDocument: base.then(base => base.json),
///     createBasePolicy: true,
/// });
/// const exampleUsWest2 = new aws.networkmanager.VpcAttachment("example_us_west_2", {
///     coreNetworkId: exampleCoreNetwork.id,
///     subnetArns: exampleUsWest2AwsSubnet.map(__item => __item.arn),
///     vpcArn: exampleUsWest2AwsVpc.arn,
/// });
/// const exampleUsEast1 = new aws.networkmanager.VpcAttachment("example_us_east_1", {
///     coreNetworkId: exampleCoreNetwork.id,
///     subnetArns: exampleUsEast1AwsSubnet.map(__item => __item.arn),
///     vpcArn: exampleUsEast1AwsVpc.arn,
/// });
/// const example = aws.networkmanager.getCoreNetworkPolicyDocumentOutput({
///     coreNetworkConfigurations: [{
///         asnRanges: ["65022-65534"],
///         edgeLocations: [
///             {
///                 location: "us-west-2",
///                 asn: "65500",
///             },
///             {
///                 location: "us-east-1",
///                 asn: "65501",
///             },
///         ],
///     }],
///     segments: [
///         {
///             name: "segment",
///         },
///         {
///             name: "segment2",
///         },
///     ],
///     segmentActions: [
///         {
///             action: "create-route",
///             segment: "segment",
///             destinationCidrBlocks: ["10.0.0.0/16"],
///             destinations: [exampleUsWest2.id],
///         },
///         {
///             action: "create-route",
///             segment: "segment",
///             destinationCidrBlocks: ["10.1.0.0/16"],
///             destinations: [exampleUsEast1.id],
///         },
///     ],
/// });
/// const exampleCoreNetworkPolicyAttachment = new aws.networkmanager.CoreNetworkPolicyAttachment("example", {
///     coreNetworkId: exampleCoreNetwork.id,
///     policyDocument: example.apply(example => example.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_global_network = aws.networkmanager.GlobalNetwork("example")
/// base = aws.networkmanager.get_core_network_policy_document(core_network_configurations=[{
///         "asn_ranges": ["65022-65534"],
///         "edge_locations": [
///             {
///                 "location": "us-west-2",
///                 "asn": "65500",
///             },
///             {
///                 "location": "us-east-1",
///                 "asn": "65501",
///             },
///         ],
///     }],
///     segments=[{
///         "name": "segment",
///     }])
/// example_core_network = aws.networkmanager.CoreNetwork("example",
///     global_network_id=example_global_network.id,
///     base_policy_document=base.json,
///     create_base_policy=True)
/// example_us_west2 = aws.networkmanager.VpcAttachment("example_us_west_2",
///     core_network_id=example_core_network.id,
///     subnet_arns=[__item["arn"] for __item in example_us_west2_aws_subnet],
///     vpc_arn=example_us_west2_aws_vpc["arn"])
/// example_us_east1 = aws.networkmanager.VpcAttachment("example_us_east_1",
///     core_network_id=example_core_network.id,
///     subnet_arns=[__item["arn"] for __item in example_us_east1_aws_subnet],
///     vpc_arn=example_us_east1_aws_vpc["arn"])
/// example = aws.networkmanager.get_core_network_policy_document_output(core_network_configurations=[{
///         "asn_ranges": ["65022-65534"],
///         "edge_locations": [
///             {
///                 "location": "us-west-2",
///                 "asn": "65500",
///             },
///             {
///                 "location": "us-east-1",
///                 "asn": "65501",
///             },
///         ],
///     }],
///     segments=[
///         {
///             "name": "segment",
///         },
///         {
///             "name": "segment2",
///         },
///     ],
///     segment_actions=[
///         {
///             "action": "create-route",
///             "segment": "segment",
///             "destination_cidr_blocks": ["10.0.0.0/16"],
///             "destinations": [example_us_west2.id],
///         },
///         {
///             "action": "create-route",
///             "segment": "segment",
///             "destination_cidr_blocks": ["10.1.0.0/16"],
///             "destinations": [example_us_east1.id],
///         },
///     ])
/// example_core_network_policy_attachment = aws.networkmanager.CoreNetworkPolicyAttachment("example",
///     core_network_id=example_core_network.id,
///     policy_document=example.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleGlobalNetwork = new Aws.NetworkManager.GlobalNetwork("example");
///
///     var @base = Aws.NetworkManager.GetCoreNetworkPolicyDocument.Invoke(new()
///     {
///         CoreNetworkConfigurations = new[]
///         {
///             new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationInputArgs
///             {
///                 AsnRanges = new[]
///                 {
///                     "65022-65534",
///                 },
///                 EdgeLocations = new[]
///                 {
///                     new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationInputArgs
///                     {
///                         Location = "us-west-2",
///                         Asn = "65500",
///                     },
///                     new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationInputArgs
///                     {
///                         Location = "us-east-1",
///                         Asn = "65501",
///                     },
///                 },
///             },
///         },
///         Segments = new[]
///         {
///             new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentSegmentInputArgs
///             {
///                 Name = "segment",
///             },
///         },
///     });
///
///     var exampleCoreNetwork = new Aws.NetworkManager.CoreNetwork("example", new()
///     {
///         GlobalNetworkId = exampleGlobalNetwork.Id,
///         BasePolicyDocument = @base.Apply(@base => @base.Apply(getCoreNetworkPolicyDocumentResult => getCoreNetworkPolicyDocumentResult.Json)),
///         CreateBasePolicy = true,
///     });
///
///     var exampleUsWest2 = new Aws.NetworkManager.VpcAttachment("example_us_west_2", new()
///     {
///         CoreNetworkId = exampleCoreNetwork.Id,
///         SubnetArns = exampleUsWest2AwsSubnet.Select(__item => __item.Arn).ToList(),
///         VpcArn = exampleUsWest2AwsVpc.Arn,
///     });
///
///     var exampleUsEast1 = new Aws.NetworkManager.VpcAttachment("example_us_east_1", new()
///     {
///         CoreNetworkId = exampleCoreNetwork.Id,
///         SubnetArns = exampleUsEast1AwsSubnet.Select(__item => __item.Arn).ToList(),
///         VpcArn = exampleUsEast1AwsVpc.Arn,
///     });
///
///     var example = Aws.NetworkManager.GetCoreNetworkPolicyDocument.Invoke(new()
///     {
///         CoreNetworkConfigurations = new[]
///         {
///             new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationInputArgs
///             {
///                 AsnRanges = new[]
///                 {
///                     "65022-65534",
///                 },
///                 EdgeLocations = new[]
///                 {
///                     new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationInputArgs
///                     {
///                         Location = "us-west-2",
///                         Asn = "65500",
///                     },
///                     new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationInputArgs
///                     {
///                         Location = "us-east-1",
///                         Asn = "65501",
///                     },
///                 },
///             },
///         },
///         Segments = new[]
///         {
///             new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentSegmentInputArgs
///             {
///                 Name = "segment",
///             },
///             new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentSegmentInputArgs
///             {
///                 Name = "segment2",
///             },
///         },
///         SegmentActions = new[]
///         {
///             new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentSegmentActionInputArgs
///             {
///                 Action = "create-route",
///                 Segment = "segment",
///                 DestinationCidrBlocks = new[]
///                 {
///                     "10.0.0.0/16",
///                 },
///                 Destinations = new[]
///                 {
///                     exampleUsWest2.Id,
///                 },
///             },
///             new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentSegmentActionInputArgs
///             {
///                 Action = "create-route",
///                 Segment = "segment",
///                 DestinationCidrBlocks = new[]
///                 {
///                     "10.1.0.0/16",
///                 },
///                 Destinations = new[]
///                 {
///                     exampleUsEast1.Id,
///                 },
///             },
///         },
///     });
///
///     var exampleCoreNetworkPolicyAttachment = new Aws.NetworkManager.CoreNetworkPolicyAttachment("example", new()
///     {
///         CoreNetworkId = exampleCoreNetwork.Id,
///         PolicyDocument = example.Apply(getCoreNetworkPolicyDocumentResult => getCoreNetworkPolicyDocumentResult.Json),
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
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// exampleGlobalNetwork, err := networkmanager.NewGlobalNetwork(ctx, "example", nil)
/// if err != nil {
/// return err
/// }
/// base, err := networkmanager.GetCoreNetworkPolicyDocument(ctx, &networkmanager.GetCoreNetworkPolicyDocumentArgs{
/// CoreNetworkConfigurations: []networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfiguration{
/// {
/// AsnRanges: []string{
/// "65022-65534",
/// },
/// EdgeLocations: []networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocation{
/// {
/// Location: "us-west-2",
/// Asn: pulumi.StringRef("65500"),
/// },
/// {
/// Location: "us-east-1",
/// Asn: pulumi.StringRef("65501"),
/// },
/// },
/// },
/// },
/// Segments: []networkmanager.GetCoreNetworkPolicyDocumentSegment{
/// {
/// Name: "segment",
/// },
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// exampleCoreNetwork, err := networkmanager.NewCoreNetwork(ctx, "example", &networkmanager.CoreNetworkArgs{
/// GlobalNetworkId: exampleGlobalNetwork.ID(),
/// BasePolicyDocument: pulumi.String(base.Json),
/// CreateBasePolicy: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// var splat0 []interface{}
/// for _, val0 := range exampleUsWest2AwsSubnet {
/// splat0 = append(splat0, val0.Arn)
/// }
/// exampleUsWest2, err := networkmanager.NewVpcAttachment(ctx, "example_us_west_2", &networkmanager.VpcAttachmentArgs{
/// CoreNetworkId: exampleCoreNetwork.ID(),
/// SubnetArns: toPulumiArray(splat0),
/// VpcArn: pulumi.Any(exampleUsWest2AwsVpc.Arn),
/// })
/// if err != nil {
/// return err
/// }
/// var splat1 []interface{}
/// for _, val0 := range exampleUsEast1AwsSubnet {
/// splat1 = append(splat1, val0.Arn)
/// }
/// exampleUsEast1, err := networkmanager.NewVpcAttachment(ctx, "example_us_east_1", &networkmanager.VpcAttachmentArgs{
/// CoreNetworkId: exampleCoreNetwork.ID(),
/// SubnetArns: toPulumiArray(splat1),
/// VpcArn: pulumi.Any(exampleUsEast1AwsVpc.Arn),
/// })
/// if err != nil {
/// return err
/// }
/// example := networkmanager.GetCoreNetworkPolicyDocumentOutput(ctx, networkmanager.GetCoreNetworkPolicyDocumentOutputArgs{
/// CoreNetworkConfigurations: networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationArray{
/// &networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationArgs{
/// AsnRanges: pulumi.StringArray{
/// pulumi.String("65022-65534"),
/// },
/// EdgeLocations: networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationArray{
/// &networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationArgs{
/// Location: pulumi.String("us-west-2"),
/// Asn: pulumi.String("65500"),
/// },
/// &networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationArgs{
/// Location: pulumi.String("us-east-1"),
/// Asn: pulumi.String("65501"),
/// },
/// },
/// },
/// },
/// Segments: networkmanager.GetCoreNetworkPolicyDocumentSegmentArray{
/// &networkmanager.GetCoreNetworkPolicyDocumentSegmentArgs{
/// Name: pulumi.String("segment"),
/// },
/// &networkmanager.GetCoreNetworkPolicyDocumentSegmentArgs{
/// Name: pulumi.String("segment2"),
/// },
/// },
/// SegmentActions: networkmanager.GetCoreNetworkPolicyDocumentSegmentActionArray{
/// &networkmanager.GetCoreNetworkPolicyDocumentSegmentActionArgs{
/// Action: pulumi.String("create-route"),
/// Segment: pulumi.String("segment"),
/// DestinationCidrBlocks: pulumi.StringArray{
/// pulumi.String("10.0.0.0/16"),
/// },
/// Destinations: pulumi.StringArray{
/// exampleUsWest2.ID(),
/// },
/// },
/// &networkmanager.GetCoreNetworkPolicyDocumentSegmentActionArgs{
/// Action: pulumi.String("create-route"),
/// Segment: pulumi.String("segment"),
/// DestinationCidrBlocks: pulumi.StringArray{
/// pulumi.String("10.1.0.0/16"),
/// },
/// Destinations: pulumi.StringArray{
/// exampleUsEast1.ID(),
/// },
/// },
/// },
/// }, nil);
/// _, err = networkmanager.NewCoreNetworkPolicyAttachment(ctx, "example", &networkmanager.CoreNetworkPolicyAttachmentArgs{
/// CoreNetworkId: exampleCoreNetwork.ID(),
/// PolicyDocument: pulumi.String(example.ApplyT(func(example networkmanager.GetCoreNetworkPolicyDocumentResult) (*string, error) {
/// return &example.Json, nil
/// }).(pulumi.StringPtrOutput)),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// func toPulumiArray(arr []) pulumi.Array {
/// var pulumiArr pulumi.Array
/// for _, v := range arr {
/// pulumiArr = append(pulumiArr, pulumi.(v))
/// }
/// return pulumiArr
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkmanager.GlobalNetwork;
/// import com.pulumi.aws.networkmanager.NetworkmanagerFunctions;
/// import com.pulumi.aws.networkmanager.inputs.GetCoreNetworkPolicyDocumentArgs;
/// import com.pulumi.aws.networkmanager.CoreNetwork;
/// import com.pulumi.aws.networkmanager.CoreNetworkArgs;
/// import com.pulumi.aws.networkmanager.VpcAttachment;
/// import com.pulumi.aws.networkmanager.VpcAttachmentArgs;
/// import com.pulumi.aws.networkmanager.CoreNetworkPolicyAttachment;
/// import com.pulumi.aws.networkmanager.CoreNetworkPolicyAttachmentArgs;
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
///         var exampleGlobalNetwork = new GlobalNetwork("exampleGlobalNetwork");
///
///         final var base = NetworkmanagerFunctions.getCoreNetworkPolicyDocument(GetCoreNetworkPolicyDocumentArgs.builder()
///             .coreNetworkConfigurations(GetCoreNetworkPolicyDocumentCoreNetworkConfigurationArgs.builder()
///                 .asnRanges("65022-65534")
///                 .edgeLocations(
///                     GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationArgs.builder()
///                         .location("us-west-2")
///                         .asn("65500")
///                         .build(),
///                     GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationArgs.builder()
///                         .location("us-east-1")
///                         .asn("65501")
///                         .build())
///                 .build())
///             .segments(GetCoreNetworkPolicyDocumentSegmentArgs.builder()
///                 .name("segment")
///                 .build())
///             .build());
///
///         var exampleCoreNetwork = new CoreNetwork("exampleCoreNetwork", CoreNetworkArgs.builder()
///             .globalNetworkId(exampleGlobalNetwork.id())
///             .basePolicyDocument(base.json())
///             .createBasePolicy(true)
///             .build());
///
///         var exampleUsWest2 = new VpcAttachment("exampleUsWest2", VpcAttachmentArgs.builder()
///             .coreNetworkId(exampleCoreNetwork.id())
///             .subnetArns(exampleUsWest2AwsSubnet.stream().map(element -> element.arn()).collect(toList()))
///             .vpcArn(exampleUsWest2AwsVpc.arn())
///             .build());
///
///         var exampleUsEast1 = new VpcAttachment("exampleUsEast1", VpcAttachmentArgs.builder()
///             .coreNetworkId(exampleCoreNetwork.id())
///             .subnetArns(exampleUsEast1AwsSubnet.stream().map(element -> element.arn()).collect(toList()))
///             .vpcArn(exampleUsEast1AwsVpc.arn())
///             .build());
///
///         final var example = NetworkmanagerFunctions.getCoreNetworkPolicyDocument(GetCoreNetworkPolicyDocumentArgs.builder()
///             .coreNetworkConfigurations(GetCoreNetworkPolicyDocumentCoreNetworkConfigurationArgs.builder()
///                 .asnRanges("65022-65534")
///                 .edgeLocations(
///                     GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationArgs.builder()
///                         .location("us-west-2")
///                         .asn("65500")
///                         .build(),
///                     GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationArgs.builder()
///                         .location("us-east-1")
///                         .asn("65501")
///                         .build())
///                 .build())
///             .segments(
///                 GetCoreNetworkPolicyDocumentSegmentArgs.builder()
///                     .name("segment")
///                     .build(),
///                 GetCoreNetworkPolicyDocumentSegmentArgs.builder()
///                     .name("segment2")
///                     .build())
///             .segmentActions(
///                 GetCoreNetworkPolicyDocumentSegmentActionArgs.builder()
///                     .action("create-route")
///                     .segment("segment")
///                     .destinationCidrBlocks("10.0.0.0/16")
///                     .destinations(exampleUsWest2.id())
///                     .build(),
///                 GetCoreNetworkPolicyDocumentSegmentActionArgs.builder()
///                     .action("create-route")
///                     .segment("segment")
///                     .destinationCidrBlocks("10.1.0.0/16")
///                     .destinations(exampleUsEast1.id())
///                     .build())
///             .build());
///
///         var exampleCoreNetworkPolicyAttachment = new CoreNetworkPolicyAttachment("exampleCoreNetworkPolicyAttachment", CoreNetworkPolicyAttachmentArgs.builder()
///             .coreNetworkId(exampleCoreNetwork.id())
///             .policyDocument(example.applyValue(_example -> _example.json()))
///             .build());
///
///     }
/// }
/// ```
///
///
/// ### Option 2 - using base_policy_regions
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleGlobalNetwork = new aws.networkmanager.GlobalNetwork("example", {});
/// const exampleCoreNetwork = new aws.networkmanager.CoreNetwork("example", {
///     globalNetworkId: exampleGlobalNetwork.id,
///     basePolicyRegions: [
///         "us-west-2",
///         "us-east-1",
///     ],
///     createBasePolicy: true,
/// });
/// const exampleUsWest2 = new aws.networkmanager.VpcAttachment("example_us_west_2", {
///     coreNetworkId: exampleCoreNetwork.id,
///     subnetArns: exampleUsWest2AwsSubnet.map(__item => __item.arn),
///     vpcArn: exampleUsWest2AwsVpc.arn,
/// });
/// const exampleUsEast1 = new aws.networkmanager.VpcAttachment("example_us_east_1", {
///     coreNetworkId: exampleCoreNetwork.id,
///     subnetArns: exampleUsEast1AwsSubnet.map(__item => __item.arn),
///     vpcArn: exampleUsEast1AwsVpc.arn,
/// });
/// const example = aws.networkmanager.getCoreNetworkPolicyDocumentOutput({
///     coreNetworkConfigurations: [{
///         asnRanges: ["65022-65534"],
///         edgeLocations: [
///             {
///                 location: "us-west-2",
///             },
///             {
///                 location: "us-east-1",
///             },
///         ],
///     }],
///     segments: [
///         {
///             name: "segment",
///         },
///         {
///             name: "segment2",
///         },
///     ],
///     segmentActions: [
///         {
///             action: "create-route",
///             segment: "segment",
///             destinationCidrBlocks: ["10.0.0.0/16"],
///             destinations: [exampleUsWest2.id],
///         },
///         {
///             action: "create-route",
///             segment: "segment",
///             destinationCidrBlocks: ["10.1.0.0/16"],
///             destinations: [exampleUsEast1.id],
///         },
///     ],
/// });
/// const exampleCoreNetworkPolicyAttachment = new aws.networkmanager.CoreNetworkPolicyAttachment("example", {
///     coreNetworkId: exampleCoreNetwork.id,
///     policyDocument: example.apply(example => example.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_global_network = aws.networkmanager.GlobalNetwork("example")
/// example_core_network = aws.networkmanager.CoreNetwork("example",
///     global_network_id=example_global_network.id,
///     base_policy_regions=[
///         "us-west-2",
///         "us-east-1",
///     ],
///     create_base_policy=True)
/// example_us_west2 = aws.networkmanager.VpcAttachment("example_us_west_2",
///     core_network_id=example_core_network.id,
///     subnet_arns=[__item["arn"] for __item in example_us_west2_aws_subnet],
///     vpc_arn=example_us_west2_aws_vpc["arn"])
/// example_us_east1 = aws.networkmanager.VpcAttachment("example_us_east_1",
///     core_network_id=example_core_network.id,
///     subnet_arns=[__item["arn"] for __item in example_us_east1_aws_subnet],
///     vpc_arn=example_us_east1_aws_vpc["arn"])
/// example = aws.networkmanager.get_core_network_policy_document_output(core_network_configurations=[{
///         "asn_ranges": ["65022-65534"],
///         "edge_locations": [
///             {
///                 "location": "us-west-2",
///             },
///             {
///                 "location": "us-east-1",
///             },
///         ],
///     }],
///     segments=[
///         {
///             "name": "segment",
///         },
///         {
///             "name": "segment2",
///         },
///     ],
///     segment_actions=[
///         {
///             "action": "create-route",
///             "segment": "segment",
///             "destination_cidr_blocks": ["10.0.0.0/16"],
///             "destinations": [example_us_west2.id],
///         },
///         {
///             "action": "create-route",
///             "segment": "segment",
///             "destination_cidr_blocks": ["10.1.0.0/16"],
///             "destinations": [example_us_east1.id],
///         },
///     ])
/// example_core_network_policy_attachment = aws.networkmanager.CoreNetworkPolicyAttachment("example",
///     core_network_id=example_core_network.id,
///     policy_document=example.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleGlobalNetwork = new Aws.NetworkManager.GlobalNetwork("example");
///
///     var exampleCoreNetwork = new Aws.NetworkManager.CoreNetwork("example", new()
///     {
///         GlobalNetworkId = exampleGlobalNetwork.Id,
///         BasePolicyRegions = new[]
///         {
///             "us-west-2",
///             "us-east-1",
///         },
///         CreateBasePolicy = true,
///     });
///
///     var exampleUsWest2 = new Aws.NetworkManager.VpcAttachment("example_us_west_2", new()
///     {
///         CoreNetworkId = exampleCoreNetwork.Id,
///         SubnetArns = exampleUsWest2AwsSubnet.Select(__item => __item.Arn).ToList(),
///         VpcArn = exampleUsWest2AwsVpc.Arn,
///     });
///
///     var exampleUsEast1 = new Aws.NetworkManager.VpcAttachment("example_us_east_1", new()
///     {
///         CoreNetworkId = exampleCoreNetwork.Id,
///         SubnetArns = exampleUsEast1AwsSubnet.Select(__item => __item.Arn).ToList(),
///         VpcArn = exampleUsEast1AwsVpc.Arn,
///     });
///
///     var example = Aws.NetworkManager.GetCoreNetworkPolicyDocument.Invoke(new()
///     {
///         CoreNetworkConfigurations = new[]
///         {
///             new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationInputArgs
///             {
///                 AsnRanges = new[]
///                 {
///                     "65022-65534",
///                 },
///                 EdgeLocations = new[]
///                 {
///                     new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationInputArgs
///                     {
///                         Location = "us-west-2",
///                     },
///                     new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationInputArgs
///                     {
///                         Location = "us-east-1",
///                     },
///                 },
///             },
///         },
///         Segments = new[]
///         {
///             new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentSegmentInputArgs
///             {
///                 Name = "segment",
///             },
///             new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentSegmentInputArgs
///             {
///                 Name = "segment2",
///             },
///         },
///         SegmentActions = new[]
///         {
///             new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentSegmentActionInputArgs
///             {
///                 Action = "create-route",
///                 Segment = "segment",
///                 DestinationCidrBlocks = new[]
///                 {
///                     "10.0.0.0/16",
///                 },
///                 Destinations = new[]
///                 {
///                     exampleUsWest2.Id,
///                 },
///             },
///             new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentSegmentActionInputArgs
///             {
///                 Action = "create-route",
///                 Segment = "segment",
///                 DestinationCidrBlocks = new[]
///                 {
///                     "10.1.0.0/16",
///                 },
///                 Destinations = new[]
///                 {
///                     exampleUsEast1.Id,
///                 },
///             },
///         },
///     });
///
///     var exampleCoreNetworkPolicyAttachment = new Aws.NetworkManager.CoreNetworkPolicyAttachment("example", new()
///     {
///         CoreNetworkId = exampleCoreNetwork.Id,
///         PolicyDocument = example.Apply(getCoreNetworkPolicyDocumentResult => getCoreNetworkPolicyDocumentResult.Json),
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
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// exampleGlobalNetwork, err := networkmanager.NewGlobalNetwork(ctx, "example", nil)
/// if err != nil {
/// return err
/// }
/// exampleCoreNetwork, err := networkmanager.NewCoreNetwork(ctx, "example", &networkmanager.CoreNetworkArgs{
/// GlobalNetworkId: exampleGlobalNetwork.ID(),
/// BasePolicyRegions: pulumi.StringArray{
/// pulumi.String("us-west-2"),
/// pulumi.String("us-east-1"),
/// },
/// CreateBasePolicy: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// var splat0 []interface{}
/// for _, val0 := range exampleUsWest2AwsSubnet {
/// splat0 = append(splat0, val0.Arn)
/// }
/// exampleUsWest2, err := networkmanager.NewVpcAttachment(ctx, "example_us_west_2", &networkmanager.VpcAttachmentArgs{
/// CoreNetworkId: exampleCoreNetwork.ID(),
/// SubnetArns: toPulumiArray(splat0),
/// VpcArn: pulumi.Any(exampleUsWest2AwsVpc.Arn),
/// })
/// if err != nil {
/// return err
/// }
/// var splat1 []interface{}
/// for _, val0 := range exampleUsEast1AwsSubnet {
/// splat1 = append(splat1, val0.Arn)
/// }
/// exampleUsEast1, err := networkmanager.NewVpcAttachment(ctx, "example_us_east_1", &networkmanager.VpcAttachmentArgs{
/// CoreNetworkId: exampleCoreNetwork.ID(),
/// SubnetArns: toPulumiArray(splat1),
/// VpcArn: pulumi.Any(exampleUsEast1AwsVpc.Arn),
/// })
/// if err != nil {
/// return err
/// }
/// example := networkmanager.GetCoreNetworkPolicyDocumentOutput(ctx, networkmanager.GetCoreNetworkPolicyDocumentOutputArgs{
/// CoreNetworkConfigurations: networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationArray{
/// &networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationArgs{
/// AsnRanges: pulumi.StringArray{
/// pulumi.String("65022-65534"),
/// },
/// EdgeLocations: networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationArray{
/// &networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationArgs{
/// Location: pulumi.String("us-west-2"),
/// },
/// &networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationArgs{
/// Location: pulumi.String("us-east-1"),
/// },
/// },
/// },
/// },
/// Segments: networkmanager.GetCoreNetworkPolicyDocumentSegmentArray{
/// &networkmanager.GetCoreNetworkPolicyDocumentSegmentArgs{
/// Name: pulumi.String("segment"),
/// },
/// &networkmanager.GetCoreNetworkPolicyDocumentSegmentArgs{
/// Name: pulumi.String("segment2"),
/// },
/// },
/// SegmentActions: networkmanager.GetCoreNetworkPolicyDocumentSegmentActionArray{
/// &networkmanager.GetCoreNetworkPolicyDocumentSegmentActionArgs{
/// Action: pulumi.String("create-route"),
/// Segment: pulumi.String("segment"),
/// DestinationCidrBlocks: pulumi.StringArray{
/// pulumi.String("10.0.0.0/16"),
/// },
/// Destinations: pulumi.StringArray{
/// exampleUsWest2.ID(),
/// },
/// },
/// &networkmanager.GetCoreNetworkPolicyDocumentSegmentActionArgs{
/// Action: pulumi.String("create-route"),
/// Segment: pulumi.String("segment"),
/// DestinationCidrBlocks: pulumi.StringArray{
/// pulumi.String("10.1.0.0/16"),
/// },
/// Destinations: pulumi.StringArray{
/// exampleUsEast1.ID(),
/// },
/// },
/// },
/// }, nil);
/// _, err = networkmanager.NewCoreNetworkPolicyAttachment(ctx, "example", &networkmanager.CoreNetworkPolicyAttachmentArgs{
/// CoreNetworkId: exampleCoreNetwork.ID(),
/// PolicyDocument: pulumi.String(example.ApplyT(func(example networkmanager.GetCoreNetworkPolicyDocumentResult) (*string, error) {
/// return &example.Json, nil
/// }).(pulumi.StringPtrOutput)),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// func toPulumiArray(arr []) pulumi.Array {
/// var pulumiArr pulumi.Array
/// for _, v := range arr {
/// pulumiArr = append(pulumiArr, pulumi.(v))
/// }
/// return pulumiArr
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkmanager.GlobalNetwork;
/// import com.pulumi.aws.networkmanager.CoreNetwork;
/// import com.pulumi.aws.networkmanager.CoreNetworkArgs;
/// import com.pulumi.aws.networkmanager.VpcAttachment;
/// import com.pulumi.aws.networkmanager.VpcAttachmentArgs;
/// import com.pulumi.aws.networkmanager.NetworkmanagerFunctions;
/// import com.pulumi.aws.networkmanager.inputs.GetCoreNetworkPolicyDocumentArgs;
/// import com.pulumi.aws.networkmanager.CoreNetworkPolicyAttachment;
/// import com.pulumi.aws.networkmanager.CoreNetworkPolicyAttachmentArgs;
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
///         var exampleGlobalNetwork = new GlobalNetwork("exampleGlobalNetwork");
///
///         var exampleCoreNetwork = new CoreNetwork("exampleCoreNetwork", CoreNetworkArgs.builder()
///             .globalNetworkId(exampleGlobalNetwork.id())
///             .basePolicyRegions(
///                 "us-west-2",
///                 "us-east-1")
///             .createBasePolicy(true)
///             .build());
///
///         var exampleUsWest2 = new VpcAttachment("exampleUsWest2", VpcAttachmentArgs.builder()
///             .coreNetworkId(exampleCoreNetwork.id())
///             .subnetArns(exampleUsWest2AwsSubnet.stream().map(element -> element.arn()).collect(toList()))
///             .vpcArn(exampleUsWest2AwsVpc.arn())
///             .build());
///
///         var exampleUsEast1 = new VpcAttachment("exampleUsEast1", VpcAttachmentArgs.builder()
///             .coreNetworkId(exampleCoreNetwork.id())
///             .subnetArns(exampleUsEast1AwsSubnet.stream().map(element -> element.arn()).collect(toList()))
///             .vpcArn(exampleUsEast1AwsVpc.arn())
///             .build());
///
///         final var example = NetworkmanagerFunctions.getCoreNetworkPolicyDocument(GetCoreNetworkPolicyDocumentArgs.builder()
///             .coreNetworkConfigurations(GetCoreNetworkPolicyDocumentCoreNetworkConfigurationArgs.builder()
///                 .asnRanges("65022-65534")
///                 .edgeLocations(
///                     GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationArgs.builder()
///                         .location("us-west-2")
///                         .build(),
///                     GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationArgs.builder()
///                         .location("us-east-1")
///                         .build())
///                 .build())
///             .segments(
///                 GetCoreNetworkPolicyDocumentSegmentArgs.builder()
///                     .name("segment")
///                     .build(),
///                 GetCoreNetworkPolicyDocumentSegmentArgs.builder()
///                     .name("segment2")
///                     .build())
///             .segmentActions(
///                 GetCoreNetworkPolicyDocumentSegmentActionArgs.builder()
///                     .action("create-route")
///                     .segment("segment")
///                     .destinationCidrBlocks("10.0.0.0/16")
///                     .destinations(exampleUsWest2.id())
///                     .build(),
///                 GetCoreNetworkPolicyDocumentSegmentActionArgs.builder()
///                     .action("create-route")
///                     .segment("segment")
///                     .destinationCidrBlocks("10.1.0.0/16")
///                     .destinations(exampleUsEast1.id())
///                     .build())
///             .build());
///
///         var exampleCoreNetworkPolicyAttachment = new CoreNetworkPolicyAttachment("exampleCoreNetworkPolicyAttachment", CoreNetworkPolicyAttachmentArgs.builder()
///             .coreNetworkId(exampleCoreNetwork.id())
///             .policyDocument(example.applyValue(_example -> _example.json()))
///             .build());
///
///     }
/// }
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.networkmanager.CoreNetworkPolicyAttachment` using the core network ID. For example:
///
/// ```sh
/// $ pulumi import aws:networkmanager/coreNetworkPolicyAttachment:CoreNetworkPolicyAttachment example core-network-0d47f6t230mz46dy4
/// ```
class CoreNetworkPolicyAttachment extends pulumi.CustomResource {
  /// ID of the core network that a policy will be attached to and made `LIVE`.
  late final pulumi.Output<String> coreNetworkId;

  /// Policy document for creating a core network. Note that updating this argument will result in the new policy document version being set as the `LATEST` and `LIVE` policy document. Refer to the [Core network policies documentation](https://docs.aws.amazon.com/network-manager/latest/cloudwan/cloudwan-policy-change-sets.html) for more information.
  late final pulumi.Output<String> policyDocument;

  /// Current state of a core network.
  late final pulumi.Output<String> state;

  /// Creates a new [CoreNetworkPolicyAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CoreNetworkPolicyAttachment]. {@macro pulumi_networkmanager_core_network_policy_attachment_core_network_policy_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CoreNetworkPolicyAttachment(
    String name, {
    CoreNetworkPolicyAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:networkmanager/coreNetworkPolicyAttachment:CoreNetworkPolicyAttachment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.coreNetworkId = registerOutput<String>('coreNetworkId');
    this.policyDocument = registerOutput<String>('policyDocument');
    this.state = registerOutput<String>('state');
  }
}
