import 'package:pulumi/pulumi.dart';
import '../vpc_attachment_options/vpc_attachment_options.dart';
import 'vpc_attachment_args2.dart';

/// Manages a Network Manager VPC attachment.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkmanager.VpcAttachment("example", {
/// subnetArns: [exampleAwsSubnet.arn],
/// coreNetworkId: exampleAwsccNetworkmanagerCoreNetwork.id,
/// vpcArn: exampleAwsVpc.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmanager.VpcAttachment("example",
/// subnet_arns=[example_aws_subnet["arn"]],
/// core_network_id=example_awscc_networkmanager_core_network["id"],
/// vpc_arn=example_aws_vpc["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.NetworkManager.VpcAttachment("example", new()
/// {
/// SubnetArns = new[]
/// {
/// exampleAwsSubnet.Arn,
/// },
/// CoreNetworkId = exampleAwsccNetworkmanagerCoreNetwork.Id,
/// VpcArn = exampleAwsVpc.Arn,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := networkmanager.NewVpcAttachment(ctx, "example", &networkmanager.VpcAttachmentArgs{
/// SubnetArns: pulumi.StringArray{
/// exampleAwsSubnet.Arn,
/// },
/// CoreNetworkId: pulumi.Any(exampleAwsccNetworkmanagerCoreNetwork.Id),
/// VpcArn:        pulumi.Any(exampleAwsVpc.Arn),
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
/// import com.pulumi.aws.networkmanager.VpcAttachment;
/// import com.pulumi.aws.networkmanager.VpcAttachmentArgs;
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
/// var example = new VpcAttachment("example", VpcAttachmentArgs.builder()
/// .subnetArns(exampleAwsSubnet.arn())
/// .coreNetworkId(exampleAwsccNetworkmanagerCoreNetwork.id())
/// .vpcArn(exampleAwsVpc.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:networkmanager:VpcAttachment
/// properties:
/// subnetArns:
/// - ${exampleAwsSubnet.arn}
/// coreNetworkId: ${exampleAwsccNetworkmanagerCoreNetwork.id}
/// vpcArn: ${exampleAwsVpc.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Usage with Options
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkmanager.VpcAttachment("example", {
/// subnetArns: [exampleAwsSubnet.arn],
/// coreNetworkId: exampleAwsccNetworkmanagerCoreNetwork.id,
/// vpcArn: exampleAwsVpc.arn,
/// options: {
/// applianceModeSupport: false,
/// dnsSupport: true,
/// ipv6Support: false,
/// securityGroupReferencingSupport: true,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmanager.VpcAttachment("example",
/// subnet_arns=[example_aws_subnet["arn"]],
/// core_network_id=example_awscc_networkmanager_core_network["id"],
/// vpc_arn=example_aws_vpc["arn"],
/// options={
/// "appliance_mode_support": False,
/// "dns_support": True,
/// "ipv6_support": False,
/// "security_group_referencing_support": True,
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.NetworkManager.VpcAttachment("example", new()
/// {
/// SubnetArns = new[]
/// {
/// exampleAwsSubnet.Arn,
/// },
/// CoreNetworkId = exampleAwsccNetworkmanagerCoreNetwork.Id,
/// VpcArn = exampleAwsVpc.Arn,
/// Options = new Aws.NetworkManager.Inputs.VpcAttachmentOptionsArgs
/// {
/// ApplianceModeSupport = false,
/// DnsSupport = true,
/// Ipv6Support = false,
/// SecurityGroupReferencingSupport = true,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := networkmanager.NewVpcAttachment(ctx, "example", &networkmanager.VpcAttachmentArgs{
/// SubnetArns: pulumi.StringArray{
/// exampleAwsSubnet.Arn,
/// },
/// CoreNetworkId: pulumi.Any(exampleAwsccNetworkmanagerCoreNetwork.Id),
/// VpcArn:        pulumi.Any(exampleAwsVpc.Arn),
/// Options: &networkmanager.VpcAttachmentOptionsArgs{
/// ApplianceModeSupport:            pulumi.Bool(false),
/// DnsSupport:                      pulumi.Bool(true),
/// Ipv6Support:                     pulumi.Bool(false),
/// SecurityGroupReferencingSupport: pulumi.Bool(true),
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
/// import com.pulumi.aws.networkmanager.VpcAttachment;
/// import com.pulumi.aws.networkmanager.VpcAttachmentArgs;
/// import com.pulumi.aws.networkmanager.inputs.VpcAttachmentOptionsArgs;
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
/// var example = new VpcAttachment("example", VpcAttachmentArgs.builder()
/// .subnetArns(exampleAwsSubnet.arn())
/// .coreNetworkId(exampleAwsccNetworkmanagerCoreNetwork.id())
/// .vpcArn(exampleAwsVpc.arn())
/// .options(VpcAttachmentOptionsArgs.builder()
/// .applianceModeSupport(false)
/// .dnsSupport(true)
/// .ipv6Support(false)
/// .securityGroupReferencingSupport(true)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:networkmanager:VpcAttachment
/// properties:
/// subnetArns:
/// - ${exampleAwsSubnet.arn}
/// coreNetworkId: ${exampleAwsccNetworkmanagerCoreNetwork.id}
/// vpcArn: ${exampleAwsVpc.arn}
/// options:
/// applianceModeSupport: false
/// dnsSupport: true
/// ipv6Support: false
/// securityGroupReferencingSupport: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.networkmanager.VpcAttachment`" pulumi-lang-dotnet="`aws.networkmanager.VpcAttachment`" pulumi-lang-go="`networkmanager.VpcAttachment`" pulumi-lang-python="`networkmanager.VpcAttachment`" pulumi-lang-yaml="`aws.networkmanager.VpcAttachment`" pulumi-lang-java="`aws.networkmanager.VpcAttachment`">`aws.networkmanager.VpcAttachment`</span> using the attachment ID. For example:
///
/// ```sh
/// $ pulumi import aws:networkmanager/vpcAttachment:VpcAttachment example attachment-0f8fa60d2238d1bd8
/// ```
class VpcAttachment2 extends CustomResource {
  /// ARN of the attachment.
  late final Output<String> arn;

  /// Policy rule number associated with the attachment.
  late final Output<int> attachmentPolicyRuleNumber;

  /// Type of attachment.
  late final Output<String> attachmentType;

  /// ARN of a core network.
  late final Output<String> coreNetworkArn;

  /// ID of a core network for the VPC attachment.
  late final Output<String> coreNetworkId;

  /// Region where the edge is located.
  late final Output<String> edgeLocation;

  /// Options for the VPC attachment. See below.
  late final Output<VpcAttachmentOptions> options;

  /// ID of the attachment account owner.
  late final Output<String> ownerAccountId;

  /// Attachment resource ARN.
  late final Output<String> resourceArn;

  /// The routing policy label to apply to the VPC attachment for traffic routing decisions. Maximum length of 256 characters.
  late final Output<String?> routingPolicyLabel;

  /// Name of the segment attachment.
  late final Output<String> segmentName;

  /// State of the attachment.
  late final Output<String> state;

  /// Subnet ARNs of the VPC attachment.
  late final Output<List<String>> subnetArns;

  /// Key-value tags for the attachment. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// ARN of the VPC.
  ///
  /// The following arguments are optional:
  late final Output<String> vpcArn;

  VpcAttachment2(
    String name, {
    VpcAttachmentArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/vpcAttachment:VpcAttachment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.attachmentPolicyRuleNumber =
        registerOutput<int>('attachmentPolicyRuleNumber');
    this.attachmentType = registerOutput<String>('attachmentType');
    this.coreNetworkArn = registerOutput<String>('coreNetworkArn');
    this.coreNetworkId = registerOutput<String>('coreNetworkId');
    this.edgeLocation = registerOutput<String>('edgeLocation');
    this.options = registerOutput<VpcAttachmentOptions>('options');
    this.ownerAccountId = registerOutput<String>('ownerAccountId');
    this.resourceArn = registerOutput<String>('resourceArn');
    this.routingPolicyLabel = registerOutput<String?>('routingPolicyLabel');
    this.segmentName = registerOutput<String>('segmentName');
    this.state = registerOutput<String>('state');
    this.subnetArns = registerOutput<List<String>>('subnetArns');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcArn = registerOutput<String>('vpcArn');
  }
}
