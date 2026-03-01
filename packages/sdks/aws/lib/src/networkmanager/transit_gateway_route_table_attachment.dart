import 'package:pulumi/pulumi.dart' as pulumi;
import 'transit_gateway_route_table_attachment_args.dart';
import 'transit_gateway_route_table_attachment_state.dart';

/// Manages a Network Manager transit gateway route table attachment.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkmanager.TransitGatewayRouteTableAttachment("example", {
///     peeringId: exampleAwsNetworkmanagerTransitGatewayPeering.id,
///     transitGatewayRouteTableArn: exampleAwsEc2TransitGatewayRouteTable.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmanager.TransitGatewayRouteTableAttachment("example",
///     peering_id=example_aws_networkmanager_transit_gateway_peering["id"],
///     transit_gateway_route_table_arn=example_aws_ec2_transit_gateway_route_table["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.NetworkManager.TransitGatewayRouteTableAttachment("example", new()
///     {
///         PeeringId = exampleAwsNetworkmanagerTransitGatewayPeering.Id,
///         TransitGatewayRouteTableArn = exampleAwsEc2TransitGatewayRouteTable.Arn,
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
/// 		_, err := networkmanager.NewTransitGatewayRouteTableAttachment(ctx, "example", &networkmanager.TransitGatewayRouteTableAttachmentArgs{
/// 			PeeringId:                   pulumi.Any(exampleAwsNetworkmanagerTransitGatewayPeering.Id),
/// 			TransitGatewayRouteTableArn: pulumi.Any(exampleAwsEc2TransitGatewayRouteTable.Arn),
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
/// import com.pulumi.aws.networkmanager.TransitGatewayRouteTableAttachment;
/// import com.pulumi.aws.networkmanager.TransitGatewayRouteTableAttachmentArgs;
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
///         var example = new TransitGatewayRouteTableAttachment("example", TransitGatewayRouteTableAttachmentArgs.builder()
///             .peeringId(exampleAwsNetworkmanagerTransitGatewayPeering.id())
///             .transitGatewayRouteTableArn(exampleAwsEc2TransitGatewayRouteTable.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:networkmanager:TransitGatewayRouteTableAttachment
///     properties:
///       peeringId: ${exampleAwsNetworkmanagerTransitGatewayPeering.id}
///       transitGatewayRouteTableArn: ${exampleAwsEc2TransitGatewayRouteTable.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.networkmanager.TransitGatewayRouteTableAttachment` using the attachment ID. For example:
///
/// ```sh
/// $ pulumi import aws:networkmanager/transitGatewayRouteTableAttachment:TransitGatewayRouteTableAttachment example attachment-0f8fa60d2238d1bd8
/// ```
class TransitGatewayRouteTableAttachment extends pulumi.CustomResource {
  /// Attachment ARN.
  late final pulumi.Output<String> arn;
  /// Policy rule number associated with the attachment.
  late final pulumi.Output<int> attachmentPolicyRuleNumber;
  /// Type of attachment.
  late final pulumi.Output<String> attachmentType;
  /// ARN of the core network.
  late final pulumi.Output<String> coreNetworkArn;
  /// ID of the core network.
  late final pulumi.Output<String> coreNetworkId;
  /// Edge location for the peer.
  late final pulumi.Output<String> edgeLocation;
  /// ID of the attachment account owner.
  late final pulumi.Output<String> ownerAccountId;
  /// ID of the peer for the attachment.
  late final pulumi.Output<String> peeringId;
  /// Attachment resource ARN.
  late final pulumi.Output<String> resourceArn;
  /// The routing policy label to apply to the Transit Gateway route table attachment for traffic routing decisions. Maximum length of 256 characters. Changing this value will force recreation of the resource.
  late final pulumi.Output<String?> routingPolicyLabel;
  /// Name of the segment attachment.
  late final pulumi.Output<String> segmentName;
  /// State of the attachment.
  late final pulumi.Output<String> state;
  /// Key-value tags for the attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// ARN of the transit gateway route table for the attachment.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> transitGatewayRouteTableArn;

  /// Creates a new [TransitGatewayRouteTableAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TransitGatewayRouteTableAttachment]. {@macro pulumi_networkmanager_transit_gateway_route_table_attachment_transit_gateway_route_table_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TransitGatewayRouteTableAttachment(
    String name, {
    TransitGatewayRouteTableAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/transitGatewayRouteTableAttachment:TransitGatewayRouteTableAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.attachmentPolicyRuleNumber = registerOutput<int>('attachmentPolicyRuleNumber');
    this.attachmentType = registerOutput<String>('attachmentType');
    this.coreNetworkArn = registerOutput<String>('coreNetworkArn');
    this.coreNetworkId = registerOutput<String>('coreNetworkId');
    this.edgeLocation = registerOutput<String>('edgeLocation');
    this.ownerAccountId = registerOutput<String>('ownerAccountId');
    this.peeringId = registerOutput<String>('peeringId');
    this.resourceArn = registerOutput<String>('resourceArn');
    this.routingPolicyLabel = registerOutput<String?>('routingPolicyLabel');
    this.segmentName = registerOutput<String>('segmentName');
    this.state = registerOutput<String>('state');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.transitGatewayRouteTableArn = registerOutput<String>('transitGatewayRouteTableArn');
  }

  /// Gets an existing [TransitGatewayRouteTableAttachment] resource's state with the given [name] and [id].
  static TransitGatewayRouteTableAttachment get(
    String name,
    pulumi.Input<String> id, {
    TransitGatewayRouteTableAttachmentState? state,
  }) {
    return TransitGatewayRouteTableAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TransitGatewayRouteTableAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/transitGatewayRouteTableAttachment:TransitGatewayRouteTableAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.attachmentPolicyRuleNumber = registerOutput<int>('attachmentPolicyRuleNumber');
    this.attachmentType = registerOutput<String>('attachmentType');
    this.coreNetworkArn = registerOutput<String>('coreNetworkArn');
    this.coreNetworkId = registerOutput<String>('coreNetworkId');
    this.edgeLocation = registerOutput<String>('edgeLocation');
    this.ownerAccountId = registerOutput<String>('ownerAccountId');
    this.peeringId = registerOutput<String>('peeringId');
    this.resourceArn = registerOutput<String>('resourceArn');
    this.routingPolicyLabel = registerOutput<String?>('routingPolicyLabel');
    this.segmentName = registerOutput<String>('segmentName');
    this.state = registerOutput<String>('state');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.transitGatewayRouteTableArn = registerOutput<String>('transitGatewayRouteTableArn');
  }
}
