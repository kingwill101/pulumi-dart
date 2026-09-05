import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_args.dart';
import 'connection_state.dart';

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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_networkmanager_connection" "example" {
///   global_network_id   = exampleAwsNetworkmanagerGlobalNetwork.id
///   device_id           = example1.id
///   connected_device_id = example2.id
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
  /// Key-value tags for the connection. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    connectedDeviceId = registerOutput<String>('connectedDeviceId');
    connectedLinkId = registerOutput<String?>('connectedLinkId');
    description = registerOutput<String?>('description');
    deviceId = registerOutput<String>('deviceId');
    globalNetworkId = registerOutput<String>('globalNetworkId');
    linkId = registerOutput<String?>('linkId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [Connection] resource's state with the given [name] and [id].
  static Connection get(
    String name,
    pulumi.Input<String> id, {
    ConnectionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Connection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Connection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/connection:Connection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    connectedDeviceId = registerOutput<String>('connectedDeviceId');
    connectedLinkId = registerOutput<String?>('connectedLinkId');
    description = registerOutput<String?>('description');
    deviceId = registerOutput<String>('deviceId');
    globalNetworkId = registerOutput<String>('globalNetworkId');
    linkId = registerOutput<String?>('linkId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [Connection] resource.
  Connection.reference(String urn)
    : super(
        'aws:networkmanager/connection:Connection',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    connectedDeviceId = registerOutput<String>('connectedDeviceId');
    connectedLinkId = registerOutput<String?>('connectedLinkId');
    description = registerOutput<String?>('description');
    deviceId = registerOutput<String>('deviceId');
    globalNetworkId = registerOutput<String>('globalNetworkId');
    linkId = registerOutput<String?>('linkId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
