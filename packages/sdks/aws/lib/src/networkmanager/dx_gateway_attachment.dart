import 'package:pulumi/pulumi.dart' as pulumi;
import 'dx_gateway_attachment_args.dart';
import 'dx_gateway_attachment_state.dart';
import 'dx_gateway_attachment_timeouts.dart';

/// Manages a Network Manager Direct Connect Gateway Attachment.
///
/// Use this resource to create and manage a Direct Connect Gateway attachment to a Cloud WAN core network.
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
/// const test = new aws.networkmanager.DxGatewayAttachment("test", {
///     coreNetworkId: testAwsNetworkmanagerCoreNetworkPolicyAttachment.coreNetworkId,
///     directConnectGatewayArn: `arn:aws:directconnect::${current.accountId}:dx-gateway/${testAwsDxGateway.id}`,
///     edgeLocations: [currentAwsRegion.region],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.networkmanager.DxGatewayAttachment("test",
///     core_network_id=test_aws_networkmanager_core_network_policy_attachment["coreNetworkId"],
///     direct_connect_gateway_arn=f"arn:aws:directconnect::{current['accountId']}:dx-gateway/{test_aws_dx_gateway['id']}",
///     edge_locations=[current_aws_region["region"]])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.NetworkManager.DxGatewayAttachment("test", new()
///     {
///         CoreNetworkId = testAwsNetworkmanagerCoreNetworkPolicyAttachment.CoreNetworkId,
///         DirectConnectGatewayArn = $"arn:aws:directconnect::{current.AccountId}:dx-gateway/{testAwsDxGateway.Id}",
///         EdgeLocations = new[]
///         {
///             currentAwsRegion.Region,
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
/// 		_, err := networkmanager.NewDxGatewayAttachment(ctx, "test", &networkmanager.DxGatewayAttachmentArgs{
/// 			CoreNetworkId:           pulumi.Any(testAwsNetworkmanagerCoreNetworkPolicyAttachment.CoreNetworkId),
/// 			DirectConnectGatewayArn: pulumi.Sprintf("arn:aws:directconnect::%v:dx-gateway/%v", current.AccountId, testAwsDxGateway.Id),
/// 			EdgeLocations: pulumi.StringArray{
/// 				currentAwsRegion.Region,
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
/// import com.pulumi.aws.networkmanager.DxGatewayAttachment;
/// import com.pulumi.aws.networkmanager.DxGatewayAttachmentArgs;
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
///         var test = new DxGatewayAttachment("test", DxGatewayAttachmentArgs.builder()
///             .coreNetworkId(testAwsNetworkmanagerCoreNetworkPolicyAttachment.coreNetworkId())
///             .directConnectGatewayArn(String.format("arn:aws:directconnect::%s:dx-gateway/%s", current.accountId(),testAwsDxGateway.id()))
///             .edgeLocations(currentAwsRegion.region())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:networkmanager:DxGatewayAttachment
///     properties:
///       coreNetworkId: ${testAwsNetworkmanagerCoreNetworkPolicyAttachment.coreNetworkId}
///       directConnectGatewayArn: arn:aws:directconnect::${current.accountId}:dx-gateway/${testAwsDxGateway.id}
///       edgeLocations:
///         - ${currentAwsRegion.region}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Network Manager DX Gateway Attachment using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:networkmanager/dxGatewayAttachment:DxGatewayAttachment example attachment-1a2b3c4d5e6f7g
/// ```
class DxGatewayAttachment extends pulumi.CustomResource {
  /// ARN of the attachment.
  late final pulumi.Output<String> arn;
  /// Policy rule number associated with the attachment.
  late final pulumi.Output<int> attachmentPolicyRuleNumber;
  /// Type of attachment.
  late final pulumi.Output<String> attachmentType;
  /// ARN of the core network for the attachment.
  late final pulumi.Output<String> coreNetworkArn;
  /// ID of the Cloud WAN core network to which the Direct Connect gateway attachment should be attached.
  late final pulumi.Output<String> coreNetworkId;
  /// ARN of the Direct Connect gateway attachment.
  late final pulumi.Output<String> directConnectGatewayArn;
  /// One or more core network edge locations to associate with the Direct Connect gateway attachment.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<String>> edgeLocations;
  /// ID of the attachment account owner.
  late final pulumi.Output<String> ownerAccountId;
  /// The routing policy label to apply to the Direct Connect Gateway attachment for traffic routing decisions. Maximum length of 256 characters. Changing this value will force recreation of the resource.
  late final pulumi.Output<String?> routingPolicyLabel;
  /// Name of the segment attachment.
  late final pulumi.Output<String> segmentName;
  /// State of the attachment.
  late final pulumi.Output<String> state;
  /// Key-value tags for the attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<DxGatewayAttachmentTimeouts?> timeouts;

  /// Creates a new [DxGatewayAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DxGatewayAttachment]. {@macro pulumi_networkmanager_dx_gateway_attachment_dx_gateway_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DxGatewayAttachment(
    String name, {
    DxGatewayAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/dxGatewayAttachment:DxGatewayAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    attachmentPolicyRuleNumber = registerOutput<int>('attachmentPolicyRuleNumber');
    attachmentType = registerOutput<String>('attachmentType');
    coreNetworkArn = registerOutput<String>('coreNetworkArn');
    coreNetworkId = registerOutput<String>('coreNetworkId');
    directConnectGatewayArn = registerOutput<String>('directConnectGatewayArn');
    edgeLocations = registerOutput<List<String>>('edgeLocations');
    ownerAccountId = registerOutput<String>('ownerAccountId');
    routingPolicyLabel = registerOutput<String?>('routingPolicyLabel');
    segmentName = registerOutput<String>('segmentName');
    state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<DxGatewayAttachmentTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DxGatewayAttachmentTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [DxGatewayAttachment] resource's state with the given [name] and [id].
  static DxGatewayAttachment get(
    String name,
    pulumi.Input<String> id, {
    DxGatewayAttachmentState? state,
  }) {
    return DxGatewayAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DxGatewayAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/dxGatewayAttachment:DxGatewayAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    attachmentPolicyRuleNumber = registerOutput<int>('attachmentPolicyRuleNumber');
    attachmentType = registerOutput<String>('attachmentType');
    coreNetworkArn = registerOutput<String>('coreNetworkArn');
    coreNetworkId = registerOutput<String>('coreNetworkId');
    directConnectGatewayArn = registerOutput<String>('directConnectGatewayArn');
    edgeLocations = registerOutput<List<String>>('edgeLocations');
    ownerAccountId = registerOutput<String>('ownerAccountId');
    routingPolicyLabel = registerOutput<String?>('routingPolicyLabel');
    segmentName = registerOutput<String>('segmentName');
    this.state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<DxGatewayAttachmentTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DxGatewayAttachmentTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
