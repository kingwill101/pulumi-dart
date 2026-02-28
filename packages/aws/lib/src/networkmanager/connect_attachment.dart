import 'package:pulumi/pulumi.dart' as pulumi;
import 'connect_attachment_args.dart';
import 'connect_attachment_options.dart';

/// Manages an AWS Network Manager Connect Attachment.
///
/// Use this resource to create a Connect attachment in AWS Network Manager. Connect attachments enable you to connect your on-premises networks to your core network through a VPC or Transit Gateway attachment.
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
/// const example = new aws.networkmanager.VpcAttachment("example", {
///     subnetArns: exampleAwsSubnet.map(__item => __item.arn),
///     coreNetworkId: exampleAwsccNetworkmanagerCoreNetwork.id,
///     vpcArn: exampleAwsVpc.arn,
/// });
/// const exampleConnectAttachment = new aws.networkmanager.ConnectAttachment("example", {
///     coreNetworkId: exampleAwsccNetworkmanagerCoreNetwork.id,
///     transportAttachmentId: example.id,
///     edgeLocation: example.edgeLocation,
///     options: {
///         protocol: "GRE",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmanager.VpcAttachment("example",
///     subnet_arns=[__item["arn"] for __item in example_aws_subnet],
///     core_network_id=example_awscc_networkmanager_core_network["id"],
///     vpc_arn=example_aws_vpc["arn"])
/// example_connect_attachment = aws.networkmanager.ConnectAttachment("example",
///     core_network_id=example_awscc_networkmanager_core_network["id"],
///     transport_attachment_id=example.id,
///     edge_location=example.edge_location,
///     options={
///         "protocol": "GRE",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.NetworkManager.VpcAttachment("example", new()
///     {
///         SubnetArns = exampleAwsSubnet.Select(__item => __item.Arn).ToList(),
///         CoreNetworkId = exampleAwsccNetworkmanagerCoreNetwork.Id,
///         VpcArn = exampleAwsVpc.Arn,
///     });
///
///     var exampleConnectAttachment = new Aws.NetworkManager.ConnectAttachment("example", new()
///     {
///         CoreNetworkId = exampleAwsccNetworkmanagerCoreNetwork.Id,
///         TransportAttachmentId = example.Id,
///         EdgeLocation = example.EdgeLocation,
///         Options = new Aws.NetworkManager.Inputs.ConnectAttachmentOptionsArgs
///         {
///             Protocol = "GRE",
///         },
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
/// var splat0 []interface{}
/// for _, val0 := range exampleAwsSubnet {
/// splat0 = append(splat0, val0.Arn)
/// }
/// example, err := networkmanager.NewVpcAttachment(ctx, "example", &networkmanager.VpcAttachmentArgs{
/// SubnetArns: toPulumiArray(splat0),
/// CoreNetworkId: pulumi.Any(exampleAwsccNetworkmanagerCoreNetwork.Id),
/// VpcArn: pulumi.Any(exampleAwsVpc.Arn),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = networkmanager.NewConnectAttachment(ctx, "example", &networkmanager.ConnectAttachmentArgs{
/// CoreNetworkId: pulumi.Any(exampleAwsccNetworkmanagerCoreNetwork.Id),
/// TransportAttachmentId: example.ID(),
/// EdgeLocation: example.EdgeLocation,
/// Options: &networkmanager.ConnectAttachmentOptionsArgs{
/// Protocol: pulumi.String("GRE"),
/// },
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
/// import com.pulumi.aws.networkmanager.VpcAttachment;
/// import com.pulumi.aws.networkmanager.VpcAttachmentArgs;
/// import com.pulumi.aws.networkmanager.ConnectAttachment;
/// import com.pulumi.aws.networkmanager.ConnectAttachmentArgs;
/// import com.pulumi.aws.networkmanager.inputs.ConnectAttachmentOptionsArgs;
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
///         var example = new VpcAttachment("example", VpcAttachmentArgs.builder()
///             .subnetArns(exampleAwsSubnet.stream().map(element -> element.arn()).collect(toList()))
///             .coreNetworkId(exampleAwsccNetworkmanagerCoreNetwork.id())
///             .vpcArn(exampleAwsVpc.arn())
///             .build());
///
///         var exampleConnectAttachment = new ConnectAttachment("exampleConnectAttachment", ConnectAttachmentArgs.builder()
///             .coreNetworkId(exampleAwsccNetworkmanagerCoreNetwork.id())
///             .transportAttachmentId(example.id())
///             .edgeLocation(example.edgeLocation())
///             .options(ConnectAttachmentOptionsArgs.builder()
///                 .protocol("GRE")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
///
///
/// ### Usage with attachment accepter
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkmanager.VpcAttachment("example", {
///     subnetArns: exampleAwsSubnet.map(__item => __item.arn),
///     coreNetworkId: exampleAwsccNetworkmanagerCoreNetwork.id,
///     vpcArn: exampleAwsVpc.arn,
/// });
/// const exampleAttachmentAccepter = new aws.networkmanager.AttachmentAccepter("example", {
///     attachmentId: example.id,
///     attachmentType: example.attachmentType,
/// });
/// const exampleConnectAttachment = new aws.networkmanager.ConnectAttachment("example", {
///     coreNetworkId: exampleAwsccNetworkmanagerCoreNetwork.id,
///     transportAttachmentId: example.id,
///     edgeLocation: example.edgeLocation,
///     options: {
///         protocol: "GRE",
///     },
/// }, {
///     dependsOn: [exampleAttachmentAccepter],
/// });
/// const example2 = new aws.networkmanager.AttachmentAccepter("example2", {
///     attachmentId: exampleConnectAttachment.id,
///     attachmentType: exampleConnectAttachment.attachmentType,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmanager.VpcAttachment("example",
///     subnet_arns=[__item["arn"] for __item in example_aws_subnet],
///     core_network_id=example_awscc_networkmanager_core_network["id"],
///     vpc_arn=example_aws_vpc["arn"])
/// example_attachment_accepter = aws.networkmanager.AttachmentAccepter("example",
///     attachment_id=example.id,
///     attachment_type=example.attachment_type)
/// example_connect_attachment = aws.networkmanager.ConnectAttachment("example",
///     core_network_id=example_awscc_networkmanager_core_network["id"],
///     transport_attachment_id=example.id,
///     edge_location=example.edge_location,
///     options={
///         "protocol": "GRE",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[example_attachment_accepter]))
/// example2 = aws.networkmanager.AttachmentAccepter("example2",
///     attachment_id=example_connect_attachment.id,
///     attachment_type=example_connect_attachment.attachment_type)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.NetworkManager.VpcAttachment("example", new()
///     {
///         SubnetArns = exampleAwsSubnet.Select(__item => __item.Arn).ToList(),
///         CoreNetworkId = exampleAwsccNetworkmanagerCoreNetwork.Id,
///         VpcArn = exampleAwsVpc.Arn,
///     });
///
///     var exampleAttachmentAccepter = new Aws.NetworkManager.AttachmentAccepter("example", new()
///     {
///         AttachmentId = example.Id,
///         AttachmentType = example.AttachmentType,
///     });
///
///     var exampleConnectAttachment = new Aws.NetworkManager.ConnectAttachment("example", new()
///     {
///         CoreNetworkId = exampleAwsccNetworkmanagerCoreNetwork.Id,
///         TransportAttachmentId = example.Id,
///         EdgeLocation = example.EdgeLocation,
///         Options = new Aws.NetworkManager.Inputs.ConnectAttachmentOptionsArgs
///         {
///             Protocol = "GRE",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleAttachmentAccepter,
///         },
///     });
///
///     var example2 = new Aws.NetworkManager.AttachmentAccepter("example2", new()
///     {
///         AttachmentId = exampleConnectAttachment.Id,
///         AttachmentType = exampleConnectAttachment.AttachmentType,
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
/// var splat0 []interface{}
/// for _, val0 := range exampleAwsSubnet {
/// splat0 = append(splat0, val0.Arn)
/// }
/// example, err := networkmanager.NewVpcAttachment(ctx, "example", &networkmanager.VpcAttachmentArgs{
/// SubnetArns: toPulumiArray(splat0),
/// CoreNetworkId: pulumi.Any(exampleAwsccNetworkmanagerCoreNetwork.Id),
/// VpcArn: pulumi.Any(exampleAwsVpc.Arn),
/// })
/// if err != nil {
/// return err
/// }
/// exampleAttachmentAccepter, err := networkmanager.NewAttachmentAccepter(ctx, "example", &networkmanager.AttachmentAccepterArgs{
/// AttachmentId: example.ID(),
/// AttachmentType: example.AttachmentType,
/// })
/// if err != nil {
/// return err
/// }
/// exampleConnectAttachment, err := networkmanager.NewConnectAttachment(ctx, "example", &networkmanager.ConnectAttachmentArgs{
/// CoreNetworkId: pulumi.Any(exampleAwsccNetworkmanagerCoreNetwork.Id),
/// TransportAttachmentId: example.ID(),
/// EdgeLocation: example.EdgeLocation,
/// Options: &networkmanager.ConnectAttachmentOptionsArgs{
/// Protocol: pulumi.String("GRE"),
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// exampleAttachmentAccepter,
/// }))
/// if err != nil {
/// return err
/// }
/// _, err = networkmanager.NewAttachmentAccepter(ctx, "example2", &networkmanager.AttachmentAccepterArgs{
/// AttachmentId: exampleConnectAttachment.ID(),
/// AttachmentType: exampleConnectAttachment.AttachmentType,
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
/// import com.pulumi.aws.networkmanager.VpcAttachment;
/// import com.pulumi.aws.networkmanager.VpcAttachmentArgs;
/// import com.pulumi.aws.networkmanager.AttachmentAccepter;
/// import com.pulumi.aws.networkmanager.AttachmentAccepterArgs;
/// import com.pulumi.aws.networkmanager.ConnectAttachment;
/// import com.pulumi.aws.networkmanager.ConnectAttachmentArgs;
/// import com.pulumi.aws.networkmanager.inputs.ConnectAttachmentOptionsArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new VpcAttachment("example", VpcAttachmentArgs.builder()
///             .subnetArns(exampleAwsSubnet.stream().map(element -> element.arn()).collect(toList()))
///             .coreNetworkId(exampleAwsccNetworkmanagerCoreNetwork.id())
///             .vpcArn(exampleAwsVpc.arn())
///             .build());
///
///         var exampleAttachmentAccepter = new AttachmentAccepter("exampleAttachmentAccepter", AttachmentAccepterArgs.builder()
///             .attachmentId(example.id())
///             .attachmentType(example.attachmentType())
///             .build());
///
///         var exampleConnectAttachment = new ConnectAttachment("exampleConnectAttachment", ConnectAttachmentArgs.builder()
///             .coreNetworkId(exampleAwsccNetworkmanagerCoreNetwork.id())
///             .transportAttachmentId(example.id())
///             .edgeLocation(example.edgeLocation())
///             .options(ConnectAttachmentOptionsArgs.builder()
///                 .protocol("GRE")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleAttachmentAccepter)
///                 .build());
///
///         var example2 = new AttachmentAccepter("example2", AttachmentAccepterArgs.builder()
///             .attachmentId(exampleConnectAttachment.id())
///             .attachmentType(exampleConnectAttachment.attachmentType())
///             .build());
///
///     }
/// }
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.networkmanager.ConnectAttachment` using the attachment ID. For example:
///
/// ```sh
/// $ pulumi import aws:networkmanager/connectAttachment:ConnectAttachment example attachment-0f8fa60d2238d1bd8
/// ```
class ConnectAttachment extends pulumi.CustomResource {
  /// ARN of the attachment.
  late final pulumi.Output<String> arn;

  /// ID of the attachment.
  late final pulumi.Output<String> attachmentId;

  /// Policy rule number associated with the attachment.
  late final pulumi.Output<int> attachmentPolicyRuleNumber;

  /// Type of attachment.
  late final pulumi.Output<String> attachmentType;

  /// ARN of a core network.
  late final pulumi.Output<String> coreNetworkArn;

  /// ID of a core network where you want to create the attachment.
  late final pulumi.Output<String> coreNetworkId;

  /// Region where the edge is located.
  late final pulumi.Output<String> edgeLocation;

  /// Options block. See options for more information.
  late final pulumi.Output<ConnectAttachmentOptions> options;

  /// ID of the attachment account owner.
  late final pulumi.Output<String> ownerAccountId;

  /// Attachment resource ARN.
  late final pulumi.Output<String> resourceArn;

  /// The routing policy label to apply to the Connect attachment for traffic routing decisions. Maximum length of 256 characters. Changing this value will force recreation of the resource.
  late final pulumi.Output<String?> routingPolicyLabel;

  /// Name of the segment attachment.
  late final pulumi.Output<String> segmentName;

  /// State of the attachment.
  late final pulumi.Output<String> state;

  /// Key-value tags for the attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// ID of the attachment between the two connections.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> transportAttachmentId;

  /// Creates a new [ConnectAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConnectAttachment]. {@macro pulumi_networkmanager_connect_attachment_connect_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConnectAttachment(
    String name, {
    ConnectAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/connectAttachment:ConnectAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.attachmentId = registerOutput<String>('attachmentId');
    this.attachmentPolicyRuleNumber =
        registerOutput<int>('attachmentPolicyRuleNumber');
    this.attachmentType = registerOutput<String>('attachmentType');
    this.coreNetworkArn = registerOutput<String>('coreNetworkArn');
    this.coreNetworkId = registerOutput<String>('coreNetworkId');
    this.edgeLocation = registerOutput<String>('edgeLocation');
    this.options = registerOutput<ConnectAttachmentOptions>('options');
    this.ownerAccountId = registerOutput<String>('ownerAccountId');
    this.resourceArn = registerOutput<String>('resourceArn');
    this.routingPolicyLabel = registerOutput<String?>('routingPolicyLabel');
    this.segmentName = registerOutput<String>('segmentName');
    this.state = registerOutput<String>('state');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.transportAttachmentId =
        registerOutput<String>('transportAttachmentId');
  }
}
