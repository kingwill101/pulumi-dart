import 'package:pulumi/pulumi.dart';
import '../network_peering_connection_timeouts/network_peering_connection_timeouts.dart';
import 'network_peering_connection_args.dart';

/// Terraform  resource for managing oracle database network peering resource in AWS. If underlying odb network is shared, ARN must be used while creating network peering.
///
/// You can find out more about Oracle Database@AWS from [User Guide](https://docs.aws.amazon.com/odb/latest/UserGuide/what-is-odb.html).
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.odb.NetworkPeeringConnection("example", {
/// displayName: "example",
/// odbNetworkId: "my-odb-network-id",
/// peerNetworkId: "my-vpc-id",
/// tags: {
/// env: "dev",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.odb.NetworkPeeringConnection("example",
/// display_name="example",
/// odb_network_id="my-odb-network-id",
/// peer_network_id="my-vpc-id",
/// tags={
/// "env": "dev",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Odb.NetworkPeeringConnection("example", new()
/// {
/// DisplayName = "example",
/// OdbNetworkId = "my-odb-network-id",
/// PeerNetworkId = "my-vpc-id",
/// Tags =
/// {
/// { "env", "dev" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/odb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := odb.NewNetworkPeeringConnection(ctx, "example", &odb.NetworkPeeringConnectionArgs{
/// DisplayName:   pulumi.String("example"),
/// OdbNetworkId:  pulumi.String("my-odb-network-id"),
/// PeerNetworkId: pulumi.String("my-vpc-id"),
/// Tags: pulumi.StringMap{
/// "env": pulumi.String("dev"),
/// },
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
/// import com.pulumi.aws.odb.NetworkPeeringConnection;
/// import com.pulumi.aws.odb.NetworkPeeringConnectionArgs;
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
/// var example = new NetworkPeeringConnection("example", NetworkPeeringConnectionArgs.builder()
/// .displayName("example")
/// .odbNetworkId("my-odb-network-id")
/// .peerNetworkId("my-vpc-id")
/// .tags(Map.of("env", "dev"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:odb:NetworkPeeringConnection
/// properties:
/// displayName: example
/// odbNetworkId: my-odb-network-id
/// peerNetworkId: my-vpc-id
/// tags:
/// env: dev
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import odb network peering using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:odb/networkPeeringConnection:NetworkPeeringConnection example example
/// ```
class NetworkPeeringConnection extends CustomResource {
  late final Output<String> arn;

  /// Created time of the ODB network peering connection.
  late final Output<String> createdAt;

  /// Display name of the ODB network peering connection. Changing this will force Terraform to create a new resource.
  ///
  /// The following arguments are optional:
  late final Output<String> displayName;

  /// ARN of the ODB network that initiates the peering connection. Changing this will force Terraform to create a new resource. Either<span pulumi-lang-nodejs=" odbNetworkId " pulumi-lang-dotnet=" OdbNetworkId " pulumi-lang-go=" odbNetworkId " pulumi-lang-python=" odb_network_id " pulumi-lang-yaml=" odbNetworkId " pulumi-lang-java=" odbNetworkId "> odb_network_id </span>or<span pulumi-lang-nodejs=" odbNetworkArn " pulumi-lang-dotnet=" OdbNetworkArn " pulumi-lang-go=" odbNetworkArn " pulumi-lang-python=" odb_network_arn " pulumi-lang-yaml=" odbNetworkArn " pulumi-lang-java=" odbNetworkArn "> odb_network_arn </span>should be used.
  late final Output<String> odbNetworkArn;

  /// The unique identifier of the ODB network that initiates the peering connection. A sample ID is `odbpcx-abcdefgh12345678`. Changing this will force Terraform to create a new resource.
  late final Output<String> odbNetworkId;

  /// Type of the ODB peering connection.
  late final Output<String> odbPeeringConnectionType;

  /// ARN of the peer network peering connection.
  late final Output<String> peerNetworkArn;

  /// The unique identifier of the ODB peering connection. Changing this will force Terraform to create a new resource. Either<span pulumi-lang-nodejs=" odbNetworkId " pulumi-lang-dotnet=" OdbNetworkId " pulumi-lang-go=" odbNetworkId " pulumi-lang-python=" odb_network_id " pulumi-lang-yaml=" odbNetworkId " pulumi-lang-java=" odbNetworkId "> odb_network_id </span>or<span pulumi-lang-nodejs=" odbNetworkArn " pulumi-lang-dotnet=" OdbNetworkArn " pulumi-lang-go=" odbNetworkArn " pulumi-lang-python=" odb_network_arn " pulumi-lang-yaml=" odbNetworkArn " pulumi-lang-java=" odbNetworkArn "> odb_network_arn </span>should be used.
  late final Output<String> peerNetworkId;

  /// Progress of the ODB network peering connection.
  late final Output<double> percentProgress;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Status of the ODB network peering connection.
  late final Output<String> status;

  /// The reason for the current status of the ODB peering connection.
  late final Output<String> statusReason;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including inherited tags.
  late final Output<Map<String, String>> tagsAll;
  late final Output<NetworkPeeringConnectionTimeouts?> timeouts;

  NetworkPeeringConnection(
    String name, {
    NetworkPeeringConnectionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:odb/networkPeeringConnection:NetworkPeeringConnection',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.createdAt = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.odbNetworkArn = Output.createUnknown<String>();
    this.odbNetworkId = Output.createUnknown<String>();
    this.odbPeeringConnectionType = Output.createUnknown<String>();
    this.peerNetworkArn = Output.createUnknown<String>();
    this.peerNetworkId = Output.createUnknown<String>();
    this.percentProgress = Output.createUnknown<double>();
    this.region = Output.createUnknown<String>();
    this.status = Output.createUnknown<String>();
    this.statusReason = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.timeouts = Output.createUnknown<NetworkPeeringConnectionTimeouts?>();
  }
}
