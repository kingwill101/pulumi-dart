import 'package:pulumi/pulumi.dart' as pulumi;
import 'link_association_args.dart';
import 'link_association_state.dart';

/// Manages a Network Manager link association. Associates a link to a device. A device can be associated to multiple links and a link can be associated to multiple devices. The device and link must be in the same global network and the same site.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkmanager.LinkAssociation("example", {
///     globalNetworkId: exampleAwsNetworkmanagerGlobalNetwork.id,
///     linkId: exampleAwsNetworkmanagerLink.id,
///     deviceId: exampleAwsNetworkmanagerDevice.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmanager.LinkAssociation("example",
///     global_network_id=example_aws_networkmanager_global_network["id"],
///     link_id=example_aws_networkmanager_link["id"],
///     device_id=example_aws_networkmanager_device["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.NetworkManager.LinkAssociation("example", new()
///     {
///         GlobalNetworkId = exampleAwsNetworkmanagerGlobalNetwork.Id,
///         LinkId = exampleAwsNetworkmanagerLink.Id,
///         DeviceId = exampleAwsNetworkmanagerDevice.Id,
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
/// 		_, err := networkmanager.NewLinkAssociation(ctx, "example", &networkmanager.LinkAssociationArgs{
/// 			GlobalNetworkId: pulumi.Any(exampleAwsNetworkmanagerGlobalNetwork.Id),
/// 			LinkId:          pulumi.Any(exampleAwsNetworkmanagerLink.Id),
/// 			DeviceId:        pulumi.Any(exampleAwsNetworkmanagerDevice.Id),
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
/// resource "aws_networkmanager_linkassociation" "example" {
///   global_network_id = exampleAwsNetworkmanagerGlobalNetwork.id
///   link_id           = exampleAwsNetworkmanagerLink.id
///   device_id         = exampleAwsNetworkmanagerDevice.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkmanager.LinkAssociation;
/// import com.pulumi.aws.networkmanager.LinkAssociationArgs;
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
///         var example = new LinkAssociation("example", LinkAssociationArgs.builder()
///             .globalNetworkId(exampleAwsNetworkmanagerGlobalNetwork.id())
///             .linkId(exampleAwsNetworkmanagerLink.id())
///             .deviceId(exampleAwsNetworkmanagerDevice.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:networkmanager:LinkAssociation
///     properties:
///       globalNetworkId: ${exampleAwsNetworkmanagerGlobalNetwork.id}
///       linkId: ${exampleAwsNetworkmanagerLink.id}
///       deviceId: ${exampleAwsNetworkmanagerDevice.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.networkmanager.LinkAssociation` using the global network ID, link ID and device ID. For example:
///
/// ```sh
/// $ pulumi import aws:networkmanager/linkAssociation:LinkAssociation example global-network-0d47f6t230mz46dy4,link-444555aaabbb11223,device-07f6fd08867abc123
/// ```
class LinkAssociation extends pulumi.CustomResource {
  /// ID of the device.
  late final pulumi.Output<String> deviceId;
  /// ID of the global network.
  late final pulumi.Output<String> globalNetworkId;
  /// ID of the link.
  late final pulumi.Output<String> linkId;

  /// Creates a new [LinkAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LinkAssociation]. {@macro pulumi_networkmanager_link_association_link_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LinkAssociation(
    String name, {
    LinkAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/linkAssociation:LinkAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deviceId = registerOutput<String>('deviceId');
    globalNetworkId = registerOutput<String>('globalNetworkId');
    linkId = registerOutput<String>('linkId');
  }

  /// Gets an existing [LinkAssociation] resource's state with the given [name] and [id].
  static LinkAssociation get(
    String name,
    pulumi.Input<String> id, {
    LinkAssociationState? state,
  }) {
    return LinkAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LinkAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/linkAssociation:LinkAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deviceId = registerOutput<String>('deviceId');
    globalNetworkId = registerOutput<String>('globalNetworkId');
    linkId = registerOutput<String>('linkId');
  }
}
