import 'package:pulumi/pulumi.dart';
import '../site_location/site_location.dart';
import 'site_args.dart';

/// Manages a Network Manager site. Use this resource to create a site in a global network.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkmanager.GlobalNetwork("example", {});
/// const exampleSite = new aws.networkmanager.Site("example", {globalNetworkId: example.id});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmanager.GlobalNetwork("example")
/// example_site = aws.networkmanager.Site("example", global_network_id=example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.NetworkManager.GlobalNetwork("example");
///
/// var exampleSite = new Aws.NetworkManager.Site("example", new()
/// {
/// GlobalNetworkId = example.Id,
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
/// example, err := networkmanager.NewGlobalNetwork(ctx, "example", nil)
/// if err != nil {
/// return err
/// }
/// _, err = networkmanager.NewSite(ctx, "example", &networkmanager.SiteArgs{
/// GlobalNetworkId: example.ID(),
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
/// import com.pulumi.aws.networkmanager.GlobalNetwork;
/// import com.pulumi.aws.networkmanager.Site;
/// import com.pulumi.aws.networkmanager.SiteArgs;
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
/// var example = new GlobalNetwork("example");
///
/// var exampleSite = new Site("exampleSite", SiteArgs.builder()
/// .globalNetworkId(example.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:networkmanager:GlobalNetwork
/// exampleSite:
/// type: aws:networkmanager:Site
/// name: example
/// properties:
/// globalNetworkId: ${example.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.networkmanager.Site`" pulumi-lang-dotnet="`aws.networkmanager.Site`" pulumi-lang-go="`networkmanager.Site`" pulumi-lang-python="`networkmanager.Site`" pulumi-lang-yaml="`aws.networkmanager.Site`" pulumi-lang-java="`aws.networkmanager.Site`">`aws.networkmanager.Site`</span> using the site ARN. For example:
///
/// ```sh
/// $ pulumi import aws:networkmanager/site:Site example arn:aws:networkmanager::123456789012:site/global-network-0d47f6t230mz46dy4/site-444555aaabbb11223
/// ```
class Site extends CustomResource {
  /// Site ARN.
  late final Output<String> arn;

  /// Description of the Site.
  late final Output<String?> description;

  /// ID of the Global Network to create the site in.
  ///
  /// The following arguments are optional:
  late final Output<String> globalNetworkId;

  /// Site location. See below.
  late final Output<SiteLocation?> location;

  /// Key-value tags for the Site. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  Site(
    String name, {
    SiteArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/site:Site',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.globalNetworkId = Output.createUnknown<String>();
    this.location = Output.createUnknown<SiteLocation?>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
