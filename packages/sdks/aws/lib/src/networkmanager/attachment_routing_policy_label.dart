import 'package:pulumi/pulumi.dart' as pulumi;
import 'attachment_routing_policy_label_args.dart';
import 'attachment_routing_policy_label_state.dart';

/// Associates a routing policy label to a Network Manager Cloud WAN's attachment outside of the attachment creation. This is useful in multi-account environments where only the Cloud WAN core network owner account can apply a routing policy label.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkmanager.AttachmentRoutingPolicyLabel("example", {
///     coreNetworkId: exampleAwsNetworkmanagerCoreNetwork.id,
///     attachmentId: exampleAwsNetworkmanagerVpcAttachment.id,
///     routingPolicyLabel: "attachmentPolicyLabel",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmanager.AttachmentRoutingPolicyLabel("example",
///     core_network_id=example_aws_networkmanager_core_network["id"],
///     attachment_id=example_aws_networkmanager_vpc_attachment["id"],
///     routing_policy_label="attachmentPolicyLabel")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.NetworkManager.AttachmentRoutingPolicyLabel("example", new()
///     {
///         CoreNetworkId = exampleAwsNetworkmanagerCoreNetwork.Id,
///         AttachmentId = exampleAwsNetworkmanagerVpcAttachment.Id,
///         RoutingPolicyLabel = "attachmentPolicyLabel",
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
/// 		_, err := networkmanager.NewAttachmentRoutingPolicyLabel(ctx, "example", &networkmanager.AttachmentRoutingPolicyLabelArgs{
/// 			CoreNetworkId:      pulumi.Any(exampleAwsNetworkmanagerCoreNetwork.Id),
/// 			AttachmentId:       pulumi.Any(exampleAwsNetworkmanagerVpcAttachment.Id),
/// 			RoutingPolicyLabel: pulumi.String("attachmentPolicyLabel"),
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
/// import com.pulumi.aws.networkmanager.AttachmentRoutingPolicyLabel;
/// import com.pulumi.aws.networkmanager.AttachmentRoutingPolicyLabelArgs;
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
///         var example = new AttachmentRoutingPolicyLabel("example", AttachmentRoutingPolicyLabelArgs.builder()
///             .coreNetworkId(exampleAwsNetworkmanagerCoreNetwork.id())
///             .attachmentId(exampleAwsNetworkmanagerVpcAttachment.id())
///             .routingPolicyLabel("attachmentPolicyLabel")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:networkmanager:AttachmentRoutingPolicyLabel
///     properties:
///       coreNetworkId: ${exampleAwsNetworkmanagerCoreNetwork.id}
///       attachmentId: ${exampleAwsNetworkmanagerVpcAttachment.id}
///       routingPolicyLabel: attachmentPolicyLabel
/// ```
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

  /// Creates a new [AttachmentRoutingPolicyLabel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AttachmentRoutingPolicyLabel]. {@macro pulumi_networkmanager_attachment_routing_policy_label_attachment_routing_policy_label_args_doc}
  /// [options] Resource options controlling this resource's behavior.
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
    attachmentId = registerOutput<String>('attachmentId');
    coreNetworkId = registerOutput<String>('coreNetworkId');
    routingPolicyLabel = registerOutput<String>('routingPolicyLabel');
  }

  /// Gets an existing [AttachmentRoutingPolicyLabel] resource's state with the given [name] and [id].
  static AttachmentRoutingPolicyLabel get(
    String name,
    pulumi.Input<String> id, {
    AttachmentRoutingPolicyLabelState? state,
  }) {
    return AttachmentRoutingPolicyLabel._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AttachmentRoutingPolicyLabel._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/attachmentRoutingPolicyLabel:AttachmentRoutingPolicyLabel',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    attachmentId = registerOutput<String>('attachmentId');
    coreNetworkId = registerOutput<String>('coreNetworkId');
    routingPolicyLabel = registerOutput<String>('routingPolicyLabel');
  }
}
