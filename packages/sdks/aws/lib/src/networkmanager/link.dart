import 'package:pulumi/pulumi.dart' as pulumi;
import 'link_args.dart';
import 'link_bandwidth.dart';
import 'link_state.dart';

/// Manages a Network Manager link. Use this resource to create a link for a site.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkmanager.Link("example", {
///     bandwidth: {
///         uploadSpeed: 10,
///         downloadSpeed: 50,
///     },
///     globalNetworkId: exampleAwsNetworkmanagerGlobalNetwork.id,
///     siteId: exampleAwsNetworkmanagerSite.id,
///     providerName: "MegaCorp",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmanager.Link("example",
///     bandwidth={
///         "upload_speed": 10,
///         "download_speed": 50,
///     },
///     global_network_id=example_aws_networkmanager_global_network["id"],
///     site_id=example_aws_networkmanager_site["id"],
///     provider_name="MegaCorp")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.NetworkManager.Link("example", new()
///     {
///         Bandwidth = new Aws.NetworkManager.Inputs.LinkBandwidthArgs
///         {
///             UploadSpeed = 10,
///             DownloadSpeed = 50,
///         },
///         GlobalNetworkId = exampleAwsNetworkmanagerGlobalNetwork.Id,
///         SiteId = exampleAwsNetworkmanagerSite.Id,
///         ProviderName = "MegaCorp",
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
/// 		_, err := networkmanager.NewLink(ctx, "example", &networkmanager.LinkArgs{
/// 			Bandwidth: &networkmanager.LinkBandwidthArgs{
/// 				UploadSpeed:   pulumi.Int(10),
/// 				DownloadSpeed: pulumi.Int(50),
/// 			},
/// 			GlobalNetworkId: pulumi.Any(exampleAwsNetworkmanagerGlobalNetwork.Id),
/// 			SiteId:          pulumi.Any(exampleAwsNetworkmanagerSite.Id),
/// 			ProviderName:    pulumi.String("MegaCorp"),
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
/// resource "aws_networkmanager_link" "example" {
///   bandwidth = {
///     upload_speed   = 10
///     download_speed = 50
///   }
///   global_network_id = exampleAwsNetworkmanagerGlobalNetwork.id
///   site_id           = exampleAwsNetworkmanagerSite.id
///   provider_name     = "MegaCorp"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkmanager.Link;
/// import com.pulumi.aws.networkmanager.LinkArgs;
/// import com.pulumi.aws.networkmanager.inputs.LinkBandwidthArgs;
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
///         var example = new Link("example", LinkArgs.builder()
///             .bandwidth(LinkBandwidthArgs.builder()
///                 .uploadSpeed(10)
///                 .downloadSpeed(50)
///                 .build())
///             .globalNetworkId(exampleAwsNetworkmanagerGlobalNetwork.id())
///             .siteId(exampleAwsNetworkmanagerSite.id())
///             .providerName("MegaCorp")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:networkmanager:Link
///     properties:
///       bandwidth:
///         uploadSpeed: 10
///         downloadSpeed: 50
///       globalNetworkId: ${exampleAwsNetworkmanagerGlobalNetwork.id}
///       siteId: ${exampleAwsNetworkmanagerSite.id}
///       providerName: MegaCorp
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.networkmanager.Link` using the link ARN. For example:
///
/// ```sh
/// $ pulumi import aws:networkmanager/link:Link example arn:aws:networkmanager::123456789012:link/global-network-0d47f6t230mz46dy4/link-444555aaabbb11223
/// ```
class Link extends pulumi.CustomResource {
  /// Link ARN.
  late final pulumi.Output<String> arn;
  /// Upload speed and download speed in Mbps. See below.
  late final pulumi.Output<LinkBandwidth> bandwidth;
  /// Description of the link.
  late final pulumi.Output<String?> description;
  /// ID of the global network.
  late final pulumi.Output<String> globalNetworkId;
  /// Provider of the link.
  late final pulumi.Output<String?> providerName;
  /// ID of the site.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> siteId;
  /// Key-value tags for the link. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Type of the link.
  late final pulumi.Output<String?> type;

  /// Creates a new [Link].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Link]. {@macro pulumi_networkmanager_link_link_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Link(
    String name, {
    LinkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/link:Link',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    bandwidth = registerOutput<LinkBandwidth>('bandwidth', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinkBandwidth.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    globalNetworkId = registerOutput<String>('globalNetworkId');
    providerName = registerOutput<String?>('providerName');
    siteId = registerOutput<String>('siteId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String?>('type');
  }

  /// Gets an existing [Link] resource's state with the given [name] and [id].
  static Link get(
    String name,
    pulumi.Input<String> id, {
    LinkState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Link._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Link._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/link:Link',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    bandwidth = registerOutput<LinkBandwidth>('bandwidth', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinkBandwidth.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    globalNetworkId = registerOutput<String>('globalNetworkId');
    providerName = registerOutput<String?>('providerName');
    siteId = registerOutput<String>('siteId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String?>('type');
  }

  /// Creates a typed reference to an existing [Link] resource.
  Link.reference(String urn)
    : super(
        'aws:networkmanager/link:Link',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    bandwidth = registerOutput<LinkBandwidth>('bandwidth', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinkBandwidth.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    globalNetworkId = registerOutput<String>('globalNetworkId');
    providerName = registerOutput<String?>('providerName');
    siteId = registerOutput<String>('siteId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String?>('type');
  }
}
