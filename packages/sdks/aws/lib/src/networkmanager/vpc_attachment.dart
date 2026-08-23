import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_attachment_args.dart';
import 'vpc_attachment_options.dart';
import 'vpc_attachment_state.dart';

/// Manages a Network Manager VPC attachment.
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
///     subnetArns: [exampleAwsSubnet.arn],
///     coreNetworkId: exampleAwsccNetworkmanagerCoreNetwork.id,
///     vpcArn: exampleAwsVpc.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmanager.VpcAttachment("example",
///     subnet_arns=[example_aws_subnet["arn"]],
///     core_network_id=example_awscc_networkmanager_core_network["id"],
///     vpc_arn=example_aws_vpc["arn"])
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
///         SubnetArns = new[]
///         {
///             exampleAwsSubnet.Arn,
///         },
///         CoreNetworkId = exampleAwsccNetworkmanagerCoreNetwork.Id,
///         VpcArn = exampleAwsVpc.Arn,
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
/// 		_, err := networkmanager.NewVpcAttachment(ctx, "example", &networkmanager.VpcAttachmentArgs{
/// 			SubnetArns: pulumi.StringArray{
/// 				exampleAwsSubnet.Arn,
/// 			},
/// 			CoreNetworkId: pulumi.Any(exampleAwsccNetworkmanagerCoreNetwork.Id),
/// 			VpcArn:        pulumi.Any(exampleAwsVpc.Arn),
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
/// resource "aws_networkmanager_vpcattachment" "example" {
///   subnet_arns     = [exampleAwsSubnet.arn]
///   core_network_id = exampleAwsccNetworkmanagerCoreNetwork.id
///   vpc_arn         = exampleAwsVpc.arn
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
///         var example = new VpcAttachment("example", VpcAttachmentArgs.builder()
///             .subnetArns(exampleAwsSubnet.arn())
///             .coreNetworkId(exampleAwsccNetworkmanagerCoreNetwork.id())
///             .vpcArn(exampleAwsVpc.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:networkmanager:VpcAttachment
///     properties:
///       subnetArns:
///         - ${exampleAwsSubnet.arn}
///       coreNetworkId: ${exampleAwsccNetworkmanagerCoreNetwork.id}
///       vpcArn: ${exampleAwsVpc.arn}
/// ```
///
///
/// ### Usage with Options
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkmanager.VpcAttachment("example", {
///     subnetArns: [exampleAwsSubnet.arn],
///     coreNetworkId: exampleAwsccNetworkmanagerCoreNetwork.id,
///     vpcArn: exampleAwsVpc.arn,
///     options: {
///         applianceModeSupport: false,
///         dnsSupport: true,
///         ipv6Support: false,
///         securityGroupReferencingSupport: true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmanager.VpcAttachment("example",
///     subnet_arns=[example_aws_subnet["arn"]],
///     core_network_id=example_awscc_networkmanager_core_network["id"],
///     vpc_arn=example_aws_vpc["arn"],
///     options={
///         "appliance_mode_support": False,
///         "dns_support": True,
///         "ipv6_support": False,
///         "security_group_referencing_support": True,
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
///         SubnetArns = new[]
///         {
///             exampleAwsSubnet.Arn,
///         },
///         CoreNetworkId = exampleAwsccNetworkmanagerCoreNetwork.Id,
///         VpcArn = exampleAwsVpc.Arn,
///         Options = new Aws.NetworkManager.Inputs.VpcAttachmentOptionsArgs
///         {
///             ApplianceModeSupport = false,
///             DnsSupport = true,
///             Ipv6Support = false,
///             SecurityGroupReferencingSupport = true,
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
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkmanager.NewVpcAttachment(ctx, "example", &networkmanager.VpcAttachmentArgs{
/// 			SubnetArns: pulumi.StringArray{
/// 				exampleAwsSubnet.Arn,
/// 			},
/// 			CoreNetworkId: pulumi.Any(exampleAwsccNetworkmanagerCoreNetwork.Id),
/// 			VpcArn:        pulumi.Any(exampleAwsVpc.Arn),
/// 			Options: &networkmanager.VpcAttachmentOptionsArgs{
/// 				ApplianceModeSupport:            pulumi.Bool(false),
/// 				DnsSupport:                      pulumi.Bool(true),
/// 				Ipv6Support:                     pulumi.Bool(false),
/// 				SecurityGroupReferencingSupport: pulumi.Bool(true),
/// 			},
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
/// resource "aws_networkmanager_vpcattachment" "example" {
///   subnet_arns     = [exampleAwsSubnet.arn]
///   core_network_id = exampleAwsccNetworkmanagerCoreNetwork.id
///   vpc_arn         = exampleAwsVpc.arn
///   options = {
///     appliance_mode_support             = false
///     dns_support                        = true
///     ipv6_support                       = false
///     security_group_referencing_support = true
///   }
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
///         var example = new VpcAttachment("example", VpcAttachmentArgs.builder()
///             .subnetArns(exampleAwsSubnet.arn())
///             .coreNetworkId(exampleAwsccNetworkmanagerCoreNetwork.id())
///             .vpcArn(exampleAwsVpc.arn())
///             .options(VpcAttachmentOptionsArgs.builder()
///                 .applianceModeSupport(false)
///                 .dnsSupport(true)
///                 .ipv6Support(false)
///                 .securityGroupReferencingSupport(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:networkmanager:VpcAttachment
///     properties:
///       subnetArns:
///         - ${exampleAwsSubnet.arn}
///       coreNetworkId: ${exampleAwsccNetworkmanagerCoreNetwork.id}
///       vpcArn: ${exampleAwsVpc.arn}
///       options:
///         applianceModeSupport: false
///         dnsSupport: true
///         ipv6Support: false
///         securityGroupReferencingSupport: true
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.networkmanager.VpcAttachment` using the attachment ID. For example:
///
/// ```sh
/// $ pulumi import aws:networkmanager/vpcAttachment:VpcAttachment example attachment-0f8fa60d2238d1bd8
/// ```
class VpcAttachment extends pulumi.CustomResource {
  /// ARN of the attachment.
  late final pulumi.Output<String> arn;
  /// Policy rule number associated with the attachment.
  late final pulumi.Output<int> attachmentPolicyRuleNumber;
  /// Type of attachment.
  late final pulumi.Output<String> attachmentType;
  /// ARN of a core network.
  late final pulumi.Output<String> coreNetworkArn;
  /// ID of a core network for the VPC attachment.
  late final pulumi.Output<String> coreNetworkId;
  /// Region where the edge is located.
  late final pulumi.Output<String> edgeLocation;
  /// Options for the VPC attachment. See below.
  late final pulumi.Output<VpcAttachmentOptions> options;
  /// ID of the attachment account owner.
  late final pulumi.Output<String> ownerAccountId;
  /// Attachment resource ARN.
  late final pulumi.Output<String> resourceArn;
  /// The routing policy label to apply to the VPC attachment for traffic routing decisions. Maximum length of 256 characters.
  late final pulumi.Output<String?> routingPolicyLabel;
  /// Name of the segment attachment.
  late final pulumi.Output<String> segmentName;
  /// State of the attachment.
  late final pulumi.Output<String> state;
  /// Subnet ARNs of the VPC attachment.
  late final pulumi.Output<List<String>> subnetArns;
  /// Key-value tags for the attachment. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// ARN of the VPC.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> vpcArn;

  /// Creates a new [VpcAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpcAttachment]. {@macro pulumi_networkmanager_vpc_attachment_vpc_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpcAttachment(
    String name, {
    VpcAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/vpcAttachment:VpcAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    attachmentPolicyRuleNumber = registerOutput<int>('attachmentPolicyRuleNumber');
    attachmentType = registerOutput<String>('attachmentType');
    coreNetworkArn = registerOutput<String>('coreNetworkArn');
    coreNetworkId = registerOutput<String>('coreNetworkId');
    edgeLocation = registerOutput<String>('edgeLocation');
    this.options = registerOutput<VpcAttachmentOptions>('options', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VpcAttachmentOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ownerAccountId = registerOutput<String>('ownerAccountId');
    resourceArn = registerOutput<String>('resourceArn');
    routingPolicyLabel = registerOutput<String?>('routingPolicyLabel');
    segmentName = registerOutput<String>('segmentName');
    state = registerOutput<String>('state');
    subnetArns = registerOutput<List<String>>('subnetArns');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    vpcArn = registerOutput<String>('vpcArn');
  }

  /// Gets an existing [VpcAttachment] resource's state with the given [name] and [id].
  static VpcAttachment get(
    String name,
    pulumi.Input<String> id, {
    VpcAttachmentState? state,
  }) {
    return VpcAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VpcAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/vpcAttachment:VpcAttachment',
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
    this.options = registerOutput<VpcAttachmentOptions>('options', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VpcAttachmentOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ownerAccountId = registerOutput<String>('ownerAccountId');
    resourceArn = registerOutput<String>('resourceArn');
    routingPolicyLabel = registerOutput<String?>('routingPolicyLabel');
    segmentName = registerOutput<String>('segmentName');
    this.state = registerOutput<String>('state');
    subnetArns = registerOutput<List<String>>('subnetArns');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    vpcArn = registerOutput<String>('vpcArn');
  }
}
