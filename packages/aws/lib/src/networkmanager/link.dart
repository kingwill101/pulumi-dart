import 'package:pulumi/pulumi.dart' as pulumi;
import 'link_args.dart';
import 'link_bandwidth.dart';

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
///     globalNetworkId: exampleAwsNetworkmanagerGlobalNetwork.id,
///     siteId: exampleAwsNetworkmanagerSite.id,
///     bandwidth: {
///         uploadSpeed: 10,
///         downloadSpeed: 50,
///     },
///     providerName: "MegaCorp",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmanager.Link("example",
///     global_network_id=example_aws_networkmanager_global_network["id"],
///     site_id=example_aws_networkmanager_site["id"],
///     bandwidth={
///         "upload_speed": 10,
///         "download_speed": 50,
///     },
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
///         GlobalNetworkId = exampleAwsNetworkmanagerGlobalNetwork.Id,
///         SiteId = exampleAwsNetworkmanagerSite.Id,
///         Bandwidth = new Aws.NetworkManager.Inputs.LinkBandwidthArgs
///         {
///             UploadSpeed = 10,
///             DownloadSpeed = 50,
///         },
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
/// 			GlobalNetworkId: pulumi.Any(exampleAwsNetworkmanagerGlobalNetwork.Id),
/// 			SiteId:          pulumi.Any(exampleAwsNetworkmanagerSite.Id),
/// 			Bandwidth: &networkmanager.LinkBandwidthArgs{
/// 				UploadSpeed:   pulumi.Int(10),
/// 				DownloadSpeed: pulumi.Int(50),
/// 			},
/// 			ProviderName: pulumi.String("MegaCorp"),
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
/// import com.pulumi.aws.networkmanager.Link;
/// import com.pulumi.aws.networkmanager.LinkArgs;
/// import com.pulumi.aws.networkmanager.inputs.LinkBandwidthArgs;
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
///         var example = new Link("example", LinkArgs.builder()
///             .globalNetworkId(exampleAwsNetworkmanagerGlobalNetwork.id())
///             .siteId(exampleAwsNetworkmanagerSite.id())
///             .bandwidth(LinkBandwidthArgs.builder()
///                 .uploadSpeed(10)
///                 .downloadSpeed(50)
///                 .build())
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
///       globalNetworkId: ${exampleAwsNetworkmanagerGlobalNetwork.id}
///       siteId: ${exampleAwsNetworkmanagerSite.id}
///       bandwidth:
///         uploadSpeed: 10
///         downloadSpeed: 50
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

  /// Key-value tags for the link. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Type of the link.
  late final pulumi.Output<String?> type;

  /// Creates a new [Link].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Link]. {@macro pulumi_networkmanager_link_link_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Link(String name, {LinkArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'aws:networkmanager/link:Link',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    this.arn = registerOutput<String>('arn');
    this.bandwidth = registerOutput<LinkBandwidth>('bandwidth');
    this.description = registerOutput<String?>('description');
    this.globalNetworkId = registerOutput<String>('globalNetworkId');
    this.providerName = registerOutput<String?>('providerName');
    this.siteId = registerOutput<String>('siteId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String?>('type');
  }
}
