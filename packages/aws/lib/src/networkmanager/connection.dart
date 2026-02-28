import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_args.dart';

/// Manages a Network Manager Connection.
///
/// Use this resource to create a connection between two devices in your global network.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkmanager.Connection("example", {
///     globalNetworkId: exampleAwsNetworkmanagerGlobalNetwork.id,
///     deviceId: example1.id,
///     connectedDeviceId: example2.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmanager.Connection("example",
///     global_network_id=example_aws_networkmanager_global_network["id"],
///     device_id=example1["id"],
///     connected_device_id=example2["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.NetworkManager.Connection("example", new()
///     {
///         GlobalNetworkId = exampleAwsNetworkmanagerGlobalNetwork.Id,
///         DeviceId = example1.Id,
///         ConnectedDeviceId = example2.Id,
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
/// 		_, err := networkmanager.NewConnection(ctx, "example", &networkmanager.ConnectionArgs{
/// 			GlobalNetworkId:   pulumi.Any(exampleAwsNetworkmanagerGlobalNetwork.Id),
/// 			DeviceId:          pulumi.Any(example1.Id),
/// 			ConnectedDeviceId: pulumi.Any(example2.Id),
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
/// import com.pulumi.aws.networkmanager.Connection;
/// import com.pulumi.aws.networkmanager.ConnectionArgs;
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
///         var example = new Connection("example", ConnectionArgs.builder()
///             .globalNetworkId(exampleAwsNetworkmanagerGlobalNetwork.id())
///             .deviceId(example1.id())
///             .connectedDeviceId(example2.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:networkmanager:Connection
///     properties:
///       globalNetworkId: ${exampleAwsNetworkmanagerGlobalNetwork.id}
///       deviceId: ${example1.id}
///       connectedDeviceId: ${example2.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.networkmanager.Connection` using the connection ARN. For example:
///
/// ```sh
/// $ pulumi import aws:networkmanager/connection:Connection example arn:aws:networkmanager::123456789012:device/global-network-0d47f6t230mz46dy4/connection-07f6fd08867abc123
/// ```
class Connection extends pulumi.CustomResource {
  /// ARN of the connection.
  late final pulumi.Output<String> arn;
  /// ID of the second device in the connection.
  late final pulumi.Output<String> connectedDeviceId;
  /// ID of the link for the second device.
  late final pulumi.Output<String?> connectedLinkId;
  /// Description of the connection.
  late final pulumi.Output<String?> description;
  /// ID of the first device in the connection.
  late final pulumi.Output<String> deviceId;
  /// ID of the global network.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> globalNetworkId;
  /// ID of the link for the first device.
  late final pulumi.Output<String?> linkId;
  /// Key-value tags for the connection. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Connection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Connection]. {@macro pulumi_networkmanager_connection_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Connection(
    String name, {
    ConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/connection:Connection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.connectedDeviceId = registerOutput<String>('connectedDeviceId');
    this.connectedLinkId = registerOutput<String?>('connectedLinkId');
    this.description = registerOutput<String?>('description');
    this.deviceId = registerOutput<String>('deviceId');
    this.globalNetworkId = registerOutput<String>('globalNetworkId');
    this.linkId = registerOutput<String?>('linkId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
