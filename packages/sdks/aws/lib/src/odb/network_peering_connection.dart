import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_peering_connection_args.dart';
import 'network_peering_connection_state.dart';
import 'network_peering_connection_timeouts.dart';

/// Terraform  resource for managing oracle database network peering resource in AWS. If underlying odb network is shared, ARN must be used while creating network peering.
///
/// You can find out more about Oracle Database@AWS from [User Guide](https://docs.aws.amazon.com/odb/latest/UserGuide/what-is-odb.html).
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.odb.NetworkPeeringConnection("example", {
///     displayName: "example",
///     odbNetworkId: "my-odb-network-id",
///     peerNetworkId: "my-vpc-id",
///     tags: {
///         env: "dev",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.odb.NetworkPeeringConnection("example",
///     display_name="example",
///     odb_network_id="my-odb-network-id",
///     peer_network_id="my-vpc-id",
///     tags={
///         "env": "dev",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Odb.NetworkPeeringConnection("example", new()
///     {
///         DisplayName = "example",
///         OdbNetworkId = "my-odb-network-id",
///         PeerNetworkId = "my-vpc-id",
///         Tags =
///         {
///             { "env", "dev" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/odb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := odb.NewNetworkPeeringConnection(ctx, "example", &odb.NetworkPeeringConnectionArgs{
/// 			DisplayName:   pulumi.String("example"),
/// 			OdbNetworkId:  pulumi.String("my-odb-network-id"),
/// 			PeerNetworkId: pulumi.String("my-vpc-id"),
/// 			Tags: pulumi.StringMap{
/// 				"env": pulumi.String("dev"),
/// 			},
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
/// resource "aws_odb_networkpeeringconnection" "example" {
///   display_name    = "example"
///   odb_network_id  = "my-odb-network-id"
///   peer_network_id = "my-vpc-id"
///   tags = {
///     "env" = "dev"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.odb.NetworkPeeringConnection;
/// import com.pulumi.aws.odb.NetworkPeeringConnectionArgs;
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
///         var example = new NetworkPeeringConnection("example", NetworkPeeringConnectionArgs.builder()
///             .displayName("example")
///             .odbNetworkId("my-odb-network-id")
///             .peerNetworkId("my-vpc-id")
///             .tags(Map.of("env", "dev"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:odb:NetworkPeeringConnection
///     properties:
///       displayName: example
///       odbNetworkId: my-odb-network-id
///       peerNetworkId: my-vpc-id
///       tags:
///         env: dev
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import odb network peering using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:odb/networkPeeringConnection:NetworkPeeringConnection example example
/// ```
class NetworkPeeringConnection extends pulumi.CustomResource {
  /// ARN of the ODB network peering connection.
  late final pulumi.Output<String> arn;
  /// Created time of the ODB network peering connection.
  late final pulumi.Output<String> createdAt;
  /// Display name of the ODB network peering connection. Changing this will force Terraform to create a new resource.
  late final pulumi.Output<String> displayName;
  /// ARN of the ODB network that initiates the peering connection. Changing this will force Terraform to create a new resource. Either odbNetworkId or odbNetworkArn should be used.
  late final pulumi.Output<String> odbNetworkArn;
  /// Unique identifier of the ODB network that initiates the peering connection. A sample ID is `odbpcx-abcdefgh12345678`. Changing this will force Terraform to create a new resource.
  late final pulumi.Output<String> odbNetworkId;
  /// Type of the ODB peering connection.
  late final pulumi.Output<String> odbPeeringConnectionType;
  /// ARN of the peer network peering connection.
  late final pulumi.Output<String> peerNetworkArn;
  /// Set of peer network cidrs. Add remove is only supported during update operation. During create this attribute is compute only.
  late final pulumi.Output<List<String>> peerNetworkCidrs;
  /// Unique identifier of the ODB peering connection. Changing this will force Terraform to create a new resource. Either odbNetworkId or odbNetworkArn should be used.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> peerNetworkId;
  /// Progress of the ODB network peering connection.
  late final pulumi.Output<double> percentProgress;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Status of the ODB network peering connection.
  late final pulumi.Output<String> status;
  /// Reason for the current status of the ODB peering connection.
  late final pulumi.Output<String> statusReason;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including inherited tags.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<NetworkPeeringConnectionTimeouts?> timeouts;

  /// Creates a new [NetworkPeeringConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkPeeringConnection]. {@macro pulumi_odb_network_peering_connection_network_peering_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkPeeringConnection(
    String name, {
    NetworkPeeringConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:odb/networkPeeringConnection:NetworkPeeringConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    createdAt = registerOutput<String>('createdAt');
    displayName = registerOutput<String>('displayName');
    odbNetworkArn = registerOutput<String>('odbNetworkArn');
    odbNetworkId = registerOutput<String>('odbNetworkId');
    odbPeeringConnectionType = registerOutput<String>('odbPeeringConnectionType');
    peerNetworkArn = registerOutput<String>('peerNetworkArn');
    peerNetworkCidrs = registerOutput<List<String>>('peerNetworkCidrs');
    peerNetworkId = registerOutput<String>('peerNetworkId');
    percentProgress = registerOutput<double>('percentProgress');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    statusReason = registerOutput<String>('statusReason');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<NetworkPeeringConnectionTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkPeeringConnectionTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [NetworkPeeringConnection] resource's state with the given [name] and [id].
  static NetworkPeeringConnection get(
    String name,
    pulumi.Input<String> id, {
    NetworkPeeringConnectionState? state,
  }) {
    return NetworkPeeringConnection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkPeeringConnection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:odb/networkPeeringConnection:NetworkPeeringConnection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    createdAt = registerOutput<String>('createdAt');
    displayName = registerOutput<String>('displayName');
    odbNetworkArn = registerOutput<String>('odbNetworkArn');
    odbNetworkId = registerOutput<String>('odbNetworkId');
    odbPeeringConnectionType = registerOutput<String>('odbPeeringConnectionType');
    peerNetworkArn = registerOutput<String>('peerNetworkArn');
    peerNetworkCidrs = registerOutput<List<String>>('peerNetworkCidrs');
    peerNetworkId = registerOutput<String>('peerNetworkId');
    percentProgress = registerOutput<double>('percentProgress');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    statusReason = registerOutput<String>('statusReason');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<NetworkPeeringConnectionTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkPeeringConnectionTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
