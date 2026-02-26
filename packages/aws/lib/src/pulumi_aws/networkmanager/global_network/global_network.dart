import 'package:pulumi/pulumi.dart';
import 'global_network_args.dart';

/// Manages a Network Manager Global Network.
///
/// Use this resource to create and manage a global network, which is a single private network that acts as the high-level container for your network objects.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkmanager.GlobalNetwork("example", {description: "example"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmanager.GlobalNetwork("example", description="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.NetworkManager.GlobalNetwork("example", new()
/// {
/// Description = "example",
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
/// _, err := networkmanager.NewGlobalNetwork(ctx, "example", &networkmanager.GlobalNetworkArgs{
/// Description: pulumi.String("example"),
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
/// import com.pulumi.aws.networkmanager.GlobalNetworkArgs;
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
/// var example = new GlobalNetwork("example", GlobalNetworkArgs.builder()
/// .description("example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:networkmanager:GlobalNetwork
/// properties:
/// description: example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.networkmanager.GlobalNetwork`" pulumi-lang-dotnet="`aws.networkmanager.GlobalNetwork`" pulumi-lang-go="`networkmanager.GlobalNetwork`" pulumi-lang-python="`networkmanager.GlobalNetwork`" pulumi-lang-yaml="`aws.networkmanager.GlobalNetwork`" pulumi-lang-java="`aws.networkmanager.GlobalNetwork`">`aws.networkmanager.GlobalNetwork`</span> using the global network ID. For example:
///
/// ```sh
/// $ pulumi import aws:networkmanager/globalNetwork:GlobalNetwork example global-network-0d47f6t230mz46dy4
/// ```
class GlobalNetwork extends CustomResource {
  /// Global Network ARN.
  late final Output<String> arn;

  /// Description of the Global Network.
  late final Output<String?> description;

  /// Key-value tags for the Global Network. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  GlobalNetwork(
    String name, {
    GlobalNetworkArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/globalNetwork:GlobalNetwork',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
