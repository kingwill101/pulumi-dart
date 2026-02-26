import 'package:pulumi/pulumi.dart';
import '../link_bandwidth/link_bandwidth.dart';
import 'link_args.dart';

/// Manages a Network Manager link. Use this resource to create a link for a site.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkmanager.Link("example", {
/// globalNetworkId: exampleAwsNetworkmanagerGlobalNetwork.id,
/// siteId: exampleAwsNetworkmanagerSite.id,
/// bandwidth: {
/// uploadSpeed: 10,
/// downloadSpeed: 50,
/// },
/// providerName: "MegaCorp",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmanager.Link("example",
/// global_network_id=example_aws_networkmanager_global_network["id"],
/// site_id=example_aws_networkmanager_site["id"],
/// bandwidth={
/// "upload_speed": 10,
/// "download_speed": 50,
/// },
/// provider_name="MegaCorp")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.NetworkManager.Link("example", new()
/// {
/// GlobalNetworkId = exampleAwsNetworkmanagerGlobalNetwork.Id,
/// SiteId = exampleAwsNetworkmanagerSite.Id,
/// Bandwidth = new Aws.NetworkManager.Inputs.LinkBandwidthArgs
/// {
/// UploadSpeed = 10,
/// DownloadSpeed = 50,
/// },
/// ProviderName = "MegaCorp",
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
/// _, err := networkmanager.NewLink(ctx, "example", &networkmanager.LinkArgs{
/// GlobalNetworkId: pulumi.Any(exampleAwsNetworkmanagerGlobalNetwork.Id),
/// SiteId:          pulumi.Any(exampleAwsNetworkmanagerSite.Id),
/// Bandwidth: &networkmanager.LinkBandwidthArgs{
/// UploadSpeed:   pulumi.Int(10),
/// DownloadSpeed: pulumi.Int(50),
/// },
/// ProviderName: pulumi.String("MegaCorp"),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Link("example", LinkArgs.builder()
/// .globalNetworkId(exampleAwsNetworkmanagerGlobalNetwork.id())
/// .siteId(exampleAwsNetworkmanagerSite.id())
/// .bandwidth(LinkBandwidthArgs.builder()
/// .uploadSpeed(10)
/// .downloadSpeed(50)
/// .build())
/// .providerName("MegaCorp")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:networkmanager:Link
/// properties:
/// globalNetworkId: ${exampleAwsNetworkmanagerGlobalNetwork.id}
/// siteId: ${exampleAwsNetworkmanagerSite.id}
/// bandwidth:
/// uploadSpeed: 10
/// downloadSpeed: 50
/// providerName: MegaCorp
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.networkmanager.Link`" pulumi-lang-dotnet="`aws.networkmanager.Link`" pulumi-lang-go="`networkmanager.Link`" pulumi-lang-python="`networkmanager.Link`" pulumi-lang-yaml="`aws.networkmanager.Link`" pulumi-lang-java="`aws.networkmanager.Link`">`aws.networkmanager.Link`</span> using the link ARN. For example:
///
/// ```sh
/// $ pulumi import aws:networkmanager/link:Link example arn:aws:networkmanager::123456789012:link/global-network-0d47f6t230mz46dy4/link-444555aaabbb11223
/// ```
class Link extends CustomResource {
  /// Link ARN.
  late final Output<String> arn;

  /// Upload speed and download speed in Mbps. See below.
  late final Output<LinkBandwidth> bandwidth;

  /// Description of the link.
  late final Output<String?> description;

  /// ID of the global network.
  late final Output<String> globalNetworkId;

  /// Provider of the link.
  late final Output<String?> providerName;

  /// ID of the site.
  ///
  /// The following arguments are optional:
  late final Output<String> siteId;

  /// Key-value tags for the link. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Type of the link.
  late final Output<String?> type;

  Link(
    String name, {
    LinkArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/link:Link',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
