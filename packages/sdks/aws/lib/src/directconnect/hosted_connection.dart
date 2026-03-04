import 'package:pulumi/pulumi.dart' as pulumi;
import 'hosted_connection_args.dart';
import 'hosted_connection_state.dart';

/// Provides a hosted connection on the specified interconnect or a link aggregation group (LAG) of interconnects. Intended for use by AWS Direct Connect Partners only.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const hosted = new aws.directconnect.HostedConnection("hosted", {
///     connectionId: "dxcon-ffabc123",
///     bandwidth: "100Mbps",
///     name: "tf-dx-hosted-connection",
///     ownerAccountId: "123456789012",
///     vlan: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// hosted = aws.directconnect.HostedConnection("hosted",
///     connection_id="dxcon-ffabc123",
///     bandwidth="100Mbps",
///     name="tf-dx-hosted-connection",
///     owner_account_id="123456789012",
///     vlan=1)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var hosted = new Aws.DirectConnect.HostedConnection("hosted", new()
///     {
///         ConnectionId = "dxcon-ffabc123",
///         Bandwidth = "100Mbps",
///         Name = "tf-dx-hosted-connection",
///         OwnerAccountId = "123456789012",
///         Vlan = 1,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/directconnect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := directconnect.NewHostedConnection(ctx, "hosted", &directconnect.HostedConnectionArgs{
/// 			ConnectionId:   pulumi.String("dxcon-ffabc123"),
/// 			Bandwidth:      pulumi.String("100Mbps"),
/// 			Name:           pulumi.String("tf-dx-hosted-connection"),
/// 			OwnerAccountId: pulumi.String("123456789012"),
/// 			Vlan:           pulumi.Int(1),
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
/// import com.pulumi.aws.directconnect.HostedConnection;
/// import com.pulumi.aws.directconnect.HostedConnectionArgs;
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
///         var hosted = new HostedConnection("hosted", HostedConnectionArgs.builder()
///             .connectionId("dxcon-ffabc123")
///             .bandwidth("100Mbps")
///             .name("tf-dx-hosted-connection")
///             .ownerAccountId("123456789012")
///             .vlan(1)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   hosted:
///     type: aws:directconnect:HostedConnection
///     properties:
///       connectionId: dxcon-ffabc123
///       bandwidth: 100Mbps
///       name: tf-dx-hosted-connection
///       ownerAccountId: '123456789012'
///       vlan: 1
/// ```
class HostedConnection extends pulumi.CustomResource {
  /// The Direct Connect endpoint on which the physical connection terminates.
  late final pulumi.Output<String> awsDevice;

  /// The bandwidth of the connection. Valid values for dedicated connections: 1Gbps, 10Gbps. Valid values for hosted connections: 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, 500Mbps, 1Gbps, 2Gbps, 5Gbps, 10Gbps, and 25Gbps. Case sensitive. Refer to the AWS Direct Connection supported bandwidths for [Hosted Connections](https://docs.aws.amazon.com/directconnect/latest/UserGuide/hosted_connection.html).
  late final pulumi.Output<String> bandwidth;

  /// The ID of the interconnect or LAG.
  late final pulumi.Output<String> connectionId;

  /// The AWS Region where the connection is located.
  late final pulumi.Output<String> connectionRegion;

  /// Indicates whether the connection supports a secondary BGP peer in the same address family (IPv4/IPv6).
  late final pulumi.Output<String> hasLogicalRedundancy;

  /// Boolean value representing if jumbo frames have been enabled for this connection.
  late final pulumi.Output<bool> jumboFrameCapable;

  /// The ID of the LAG.
  late final pulumi.Output<String> lagId;

  /// The time of the most recent call to [DescribeLoa](https://docs.aws.amazon.com/directconnect/latest/APIReference/API_DescribeLoa.html) for this connection.
  late final pulumi.Output<String> loaIssueTime;

  /// The location of the connection.
  late final pulumi.Output<String> location;

  /// The name of the connection.
  late final pulumi.Output<String> name;

  /// The ID of the AWS account of the customer for the connection.
  late final pulumi.Output<String> ownerAccountId;

  /// The name of the AWS Direct Connect service provider associated with the connection.
  late final pulumi.Output<String> partnerName;

  /// The name of the service provider associated with the connection.
  late final pulumi.Output<String> providerName;

  /// (**Deprecated**) The AWS Region where the connection is located. Use `connection_region` instead.
  late final pulumi.Output<String> region;

  /// The state of the connection. Possible values include: ordering, requested, pending, available, down, deleting, deleted, rejected, unknown. See [AllocateHostedConnection](https://docs.aws.amazon.com/directconnect/latest/APIReference/API_AllocateHostedConnection.html) for a description of each connection state.
  late final pulumi.Output<String> state;

  /// The dedicated VLAN provisioned to the hosted connection.
  late final pulumi.Output<int> vlan;

  /// Creates a new [HostedConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HostedConnection]. {@macro pulumi_directconnect_hosted_connection_hosted_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HostedConnection(
    String name, {
    HostedConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:directconnect/hostedConnection:HostedConnection',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    awsDevice = registerOutput<String>('awsDevice');
    bandwidth = registerOutput<String>('bandwidth');
    connectionId = registerOutput<String>('connectionId');
    connectionRegion = registerOutput<String>('connectionRegion');
    hasLogicalRedundancy = registerOutput<String>('hasLogicalRedundancy');
    jumboFrameCapable = registerOutput<bool>('jumboFrameCapable');
    lagId = registerOutput<String>('lagId');
    loaIssueTime = registerOutput<String>('loaIssueTime');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    ownerAccountId = registerOutput<String>('ownerAccountId');
    partnerName = registerOutput<String>('partnerName');
    providerName = registerOutput<String>('providerName');
    region = registerOutput<String>('region');
    state = registerOutput<String>('state');
    vlan = registerOutput<int>('vlan');
  }

  /// Gets an existing [HostedConnection] resource's state with the given [name] and [id].
  static HostedConnection get(
    String name,
    pulumi.Input<String> id, {
    HostedConnectionState? state,
  }) {
    return HostedConnection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  HostedConnection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:directconnect/hostedConnection:HostedConnection',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    awsDevice = registerOutput<String>('awsDevice');
    bandwidth = registerOutput<String>('bandwidth');
    connectionId = registerOutput<String>('connectionId');
    connectionRegion = registerOutput<String>('connectionRegion');
    hasLogicalRedundancy = registerOutput<String>('hasLogicalRedundancy');
    jumboFrameCapable = registerOutput<bool>('jumboFrameCapable');
    lagId = registerOutput<String>('lagId');
    loaIssueTime = registerOutput<String>('loaIssueTime');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    ownerAccountId = registerOutput<String>('ownerAccountId');
    partnerName = registerOutput<String>('partnerName');
    providerName = registerOutput<String>('providerName');
    region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
    vlan = registerOutput<int>('vlan');
  }
}
