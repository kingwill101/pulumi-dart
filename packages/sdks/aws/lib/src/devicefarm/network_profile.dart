import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_profile_args.dart';
import 'network_profile_state.dart';

/// Provides a resource to manage AWS Device Farm Network Profiles.
/// ∂
/// &gt; **NOTE:** AWS currently has limited regional support for Device Farm (e.g., `us-west-2`). See [AWS Device Farm endpoints and quotas](https://docs.aws.amazon.com/general/latest/gr/devicefarm.html) for information on supported regions.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.devicefarm.Project("example", {name: "example"});
/// const exampleNetworkProfile = new aws.devicefarm.NetworkProfile("example", {
///     name: "example",
///     projectArn: example.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.devicefarm.Project("example", name="example")
/// example_network_profile = aws.devicefarm.NetworkProfile("example",
///     name="example",
///     project_arn=example.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DeviceFarm.Project("example", new()
///     {
///         Name = "example",
///     });
///
///     var exampleNetworkProfile = new Aws.DeviceFarm.NetworkProfile("example", new()
///     {
///         Name = "example",
///         ProjectArn = example.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/devicefarm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := devicefarm.NewProject(ctx, "example", &devicefarm.ProjectArgs{
/// 			Name: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = devicefarm.NewNetworkProfile(ctx, "example", &devicefarm.NetworkProfileArgs{
/// 			Name:       pulumi.String("example"),
/// 			ProjectArn: example.Arn,
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new Project("example", ProjectArgs.builder()
///             .name("example")
///             .build());
///
///         var exampleNetworkProfile = new NetworkProfile("exampleNetworkProfile", NetworkProfileArgs.builder()
///             .name("example")
///             .projectArn(example.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:devicefarm:Project
///     properties:
///       name: example
///   exampleNetworkProfile:
///     type: aws:devicefarm:NetworkProfile
///     name: example
///     properties:
///       name: example
///       projectArn: ${example.arn}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Device Farm network profile.
///
///
/// Using `pulumi import`, import DeviceFarm Network Profiles using their ARN. For example:
///
/// ```sh
/// $ pulumi import aws:devicefarm/networkProfile:NetworkProfile example arn:aws:devicefarm:us-west-2:123456789012:networkprofile:4fa784c7-ccb4-4dbf-ba4f-02198320daa1
/// ```
class NetworkProfile extends pulumi.CustomResource {
  /// The Amazon Resource Name of this network profile.
  late final pulumi.Output<String> arn;
  /// The description of the network profile.
  late final pulumi.Output<String?> description;
  /// The data throughput rate in bits per second, as an integer from `0` to `104857600`. Default value is `104857600`.
  late final pulumi.Output<int?> downlinkBandwidthBits;
  /// Delay time for all packets to destination in milliseconds as an integer from `0` to `2000`.
  late final pulumi.Output<int?> downlinkDelayMs;
  /// Time variation in the delay of received packets in milliseconds as an integer from `0` to `2000`.
  late final pulumi.Output<int?> downlinkJitterMs;
  /// Proportion of received packets that fail to arrive from `0` to `100` percent.
  late final pulumi.Output<int?> downlinkLossPercent;
  /// The name for the network profile.
  late final pulumi.Output<String> name;
  /// The ARN of the project for the network profile.
  late final pulumi.Output<String> projectArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The type of network profile to create. Valid values are listed are `PRIVATE` and `CURATED`.
  late final pulumi.Output<String?> type;
  /// The data throughput rate in bits per second, as an integer from `0` to `104857600`. Default value is `104857600`.
  late final pulumi.Output<int?> uplinkBandwidthBits;
  /// Delay time for all packets to destination in milliseconds as an integer from `0` to `2000`.
  late final pulumi.Output<int?> uplinkDelayMs;
  /// Time variation in the delay of received packets in milliseconds as an integer from `0` to `2000`.
  late final pulumi.Output<int?> uplinkJitterMs;
  /// Proportion of received packets that fail to arrive from `0` to `100` percent.
  late final pulumi.Output<int?> uplinkLossPercent;

  /// Creates a new [NetworkProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkProfile]. {@macro pulumi_devicefarm_network_profile_network_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkProfile(
    String name, {
    NetworkProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:devicefarm/networkProfile:NetworkProfile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    downlinkBandwidthBits = registerOutput<int?>('downlinkBandwidthBits');
    downlinkDelayMs = registerOutput<int?>('downlinkDelayMs');
    downlinkJitterMs = registerOutput<int?>('downlinkJitterMs');
    downlinkLossPercent = registerOutput<int?>('downlinkLossPercent');
    this.name = registerOutput<String>('name');
    projectArn = registerOutput<String>('projectArn');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    type = registerOutput<String?>('type');
    uplinkBandwidthBits = registerOutput<int?>('uplinkBandwidthBits');
    uplinkDelayMs = registerOutput<int?>('uplinkDelayMs');
    uplinkJitterMs = registerOutput<int?>('uplinkJitterMs');
    uplinkLossPercent = registerOutput<int?>('uplinkLossPercent');
  }

  /// Gets an existing [NetworkProfile] resource's state with the given [name] and [id].
  static NetworkProfile get(
    String name,
    pulumi.Input<String> id, {
    NetworkProfileState? state,
  }) {
    return NetworkProfile._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkProfile._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:devicefarm/networkProfile:NetworkProfile',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    downlinkBandwidthBits = registerOutput<int?>('downlinkBandwidthBits');
    downlinkDelayMs = registerOutput<int?>('downlinkDelayMs');
    downlinkJitterMs = registerOutput<int?>('downlinkJitterMs');
    downlinkLossPercent = registerOutput<int?>('downlinkLossPercent');
    this.name = registerOutput<String>('name');
    projectArn = registerOutput<String>('projectArn');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    type = registerOutput<String?>('type');
    uplinkBandwidthBits = registerOutput<int?>('uplinkBandwidthBits');
    uplinkDelayMs = registerOutput<int?>('uplinkDelayMs');
    uplinkJitterMs = registerOutput<int?>('uplinkJitterMs');
    uplinkLossPercent = registerOutput<int?>('uplinkLossPercent');
  }
}
