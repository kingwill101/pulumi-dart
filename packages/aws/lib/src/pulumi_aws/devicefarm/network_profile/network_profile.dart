import 'package:pulumi/pulumi.dart';
import 'network_profile_args.dart';

/// Provides a resource to manage AWS Device Farm Network Profiles.
/// ∂
/// > **NOTE:** AWS currently has limited regional support for Device Farm (e.g., `us-west-2`). See [AWS Device Farm endpoints and quotas](https://docs.aws.amazon.com/general/latest/gr/devicefarm.html) for information on supported regions.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.devicefarm.Project("example", {name: "example"});
/// const exampleNetworkProfile = new aws.devicefarm.NetworkProfile("example", {
/// name: "example",
/// projectArn: example.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.devicefarm.Project("example", name="example")
/// example_network_profile = aws.devicefarm.NetworkProfile("example",
/// name="example",
/// project_arn=example.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.DeviceFarm.Project("example", new()
/// {
/// Name = "example",
/// });
///
/// var exampleNetworkProfile = new Aws.DeviceFarm.NetworkProfile("example", new()
/// {
/// Name = "example",
/// ProjectArn = example.Arn,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/devicefarm"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := devicefarm.NewProject(ctx, "example", &devicefarm.ProjectArgs{
/// Name: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = devicefarm.NewNetworkProfile(ctx, "example", &devicefarm.NetworkProfileArgs{
/// Name:       pulumi.String("example"),
/// ProjectArn: example.Arn,
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
/// import com.pulumi.aws.devicefarm.Project;
/// import com.pulumi.aws.devicefarm.ProjectArgs;
/// import com.pulumi.aws.devicefarm.NetworkProfile;
/// import com.pulumi.aws.devicefarm.NetworkProfileArgs;
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
/// var example = new Project("example", ProjectArgs.builder()
/// .name("example")
/// .build());
///
/// var exampleNetworkProfile = new NetworkProfile("exampleNetworkProfile", NetworkProfileArgs.builder()
/// .name("example")
/// .projectArn(example.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:devicefarm:Project
/// properties:
/// name: example
/// exampleNetworkProfile:
/// type: aws:devicefarm:NetworkProfile
/// name: example
/// properties:
/// name: example
/// projectArn: ${example.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) Amazon Resource Name (ARN) of the Device Farm network profile.
///
///
/// Using `pulumi import`, import DeviceFarm Network Profiles using their ARN. For example:
///
/// ```sh
/// $ pulumi import aws:devicefarm/networkProfile:NetworkProfile example arn:aws:devicefarm:us-west-2:123456789012:networkprofile:4fa784c7-ccb4-4dbf-ba4f-02198320daa1
/// ```
class NetworkProfile extends CustomResource {
  /// The Amazon Resource Name of this network profile.
  late final Output<String> arn;

  /// The description of the network profile.
  late final Output<String?> description;

  /// The data throughput rate in bits per second, as an integer from <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> to <span pulumi-lang-nodejs="`104857600`" pulumi-lang-dotnet="`104857600`" pulumi-lang-go="`104857600`" pulumi-lang-python="`104857600`" pulumi-lang-yaml="`104857600`" pulumi-lang-java="`104857600`">`104857600`</span>. Default value is <span pulumi-lang-nodejs="`104857600`" pulumi-lang-dotnet="`104857600`" pulumi-lang-go="`104857600`" pulumi-lang-python="`104857600`" pulumi-lang-yaml="`104857600`" pulumi-lang-java="`104857600`">`104857600`</span>.
  late final Output<int?> downlinkBandwidthBits;

  /// Delay time for all packets to destination in milliseconds as an integer from <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> to <span pulumi-lang-nodejs="`2000`" pulumi-lang-dotnet="`2000`" pulumi-lang-go="`2000`" pulumi-lang-python="`2000`" pulumi-lang-yaml="`2000`" pulumi-lang-java="`2000`">`2000`</span>.
  late final Output<int?> downlinkDelayMs;

  /// Time variation in the delay of received packets in milliseconds as an integer from <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> to <span pulumi-lang-nodejs="`2000`" pulumi-lang-dotnet="`2000`" pulumi-lang-go="`2000`" pulumi-lang-python="`2000`" pulumi-lang-yaml="`2000`" pulumi-lang-java="`2000`">`2000`</span>.
  late final Output<int?> downlinkJitterMs;

  /// Proportion of received packets that fail to arrive from <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> to <span pulumi-lang-nodejs="`100`" pulumi-lang-dotnet="`100`" pulumi-lang-go="`100`" pulumi-lang-python="`100`" pulumi-lang-yaml="`100`" pulumi-lang-java="`100`">`100`</span> percent.
  late final Output<int?> downlinkLossPercent;

  /// The name for the network profile.
  late final Output<String> name;

  /// The ARN of the project for the network profile.
  late final Output<String> projectArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The type of network profile to create. Valid values are listed are `PRIVATE` and `CURATED`.
  late final Output<String?> type;

  /// The data throughput rate in bits per second, as an integer from <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> to <span pulumi-lang-nodejs="`104857600`" pulumi-lang-dotnet="`104857600`" pulumi-lang-go="`104857600`" pulumi-lang-python="`104857600`" pulumi-lang-yaml="`104857600`" pulumi-lang-java="`104857600`">`104857600`</span>. Default value is <span pulumi-lang-nodejs="`104857600`" pulumi-lang-dotnet="`104857600`" pulumi-lang-go="`104857600`" pulumi-lang-python="`104857600`" pulumi-lang-yaml="`104857600`" pulumi-lang-java="`104857600`">`104857600`</span>.
  late final Output<int?> uplinkBandwidthBits;

  /// Delay time for all packets to destination in milliseconds as an integer from <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> to <span pulumi-lang-nodejs="`2000`" pulumi-lang-dotnet="`2000`" pulumi-lang-go="`2000`" pulumi-lang-python="`2000`" pulumi-lang-yaml="`2000`" pulumi-lang-java="`2000`">`2000`</span>.
  late final Output<int?> uplinkDelayMs;

  /// Time variation in the delay of received packets in milliseconds as an integer from <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> to <span pulumi-lang-nodejs="`2000`" pulumi-lang-dotnet="`2000`" pulumi-lang-go="`2000`" pulumi-lang-python="`2000`" pulumi-lang-yaml="`2000`" pulumi-lang-java="`2000`">`2000`</span>.
  late final Output<int?> uplinkJitterMs;

  /// Proportion of received packets that fail to arrive from <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> to <span pulumi-lang-nodejs="`100`" pulumi-lang-dotnet="`100`" pulumi-lang-go="`100`" pulumi-lang-python="`100`" pulumi-lang-yaml="`100`" pulumi-lang-java="`100`">`100`</span> percent.
  late final Output<int?> uplinkLossPercent;

  NetworkProfile(
    String name, {
    NetworkProfileArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:devicefarm/networkProfile:NetworkProfile',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.downlinkBandwidthBits = Output.createUnknown<int?>();
    this.downlinkDelayMs = Output.createUnknown<int?>();
    this.downlinkJitterMs = Output.createUnknown<int?>();
    this.downlinkLossPercent = Output.createUnknown<int?>();
    this.name = Output.createUnknown<String>();
    this.projectArn = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.type = Output.createUnknown<String?>();
    this.uplinkBandwidthBits = Output.createUnknown<int?>();
    this.uplinkDelayMs = Output.createUnknown<int?>();
    this.uplinkJitterMs = Output.createUnknown<int?>();
    this.uplinkLossPercent = Output.createUnknown<int?>();
  }
}
