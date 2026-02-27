import 'package:pulumi/pulumi.dart' as pulumi;
import 'attachment_routing_policy_label_args.dart';

/// Associates a routing policy label to a Network Manager Cloud WAN's attachment outside of the attachment creation. This is useful in multi-account environments where only the Cloud WAN core network owner account can apply a routing policy label.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.networkmanager.AttachmentRoutingPolicyLabel` using the core network ID and attachment ID separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:networkmanager/attachmentRoutingPolicyLabel:AttachmentRoutingPolicyLabel example core-network-0fab1c1e1e1e1e1e1,attachment-0fab2c2e2e2e2e2e2
/// ```
class AttachmentRoutingPolicyLabel extends pulumi.CustomResource {
  /// The ID of the attachment to apply the routing policy label to.
  late final pulumi.Output<String> attachmentId;

  /// The ID of the core network containing the attachment.
  late final pulumi.Output<String> coreNetworkId;

  /// The routing policy label to apply to the attachment.
  late final pulumi.Output<String> routingPolicyLabel;

  AttachmentRoutingPolicyLabel(
    String name, {
    AttachmentRoutingPolicyLabelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/attachmentRoutingPolicyLabel:AttachmentRoutingPolicyLabel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.attachmentId = registerOutput<String>('attachmentId');
    this.coreNetworkId = registerOutput<String>('coreNetworkId');
    this.routingPolicyLabel = registerOutput<String>('routingPolicyLabel');
  }
}
