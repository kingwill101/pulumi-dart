import 'package:pulumi/pulumi.dart';
import 'hosted_connection_args.dart';

/// Provides a hosted connection on the specified interconnect or a link aggregation group (LAG) of interconnects. Intended for use by AWS Direct Connect Partners only.
class HostedConnection extends CustomResource {
  /// The Direct Connect endpoint on which the physical connection terminates.
  late final Output<String> awsDevice;

  /// The bandwidth of the connection. Valid values for dedicated connections: 1Gbps, 10Gbps. Valid values for hosted connections: 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, 500Mbps, 1Gbps, 2Gbps, 5Gbps, 10Gbps, and 25Gbps. Case sensitive. Refer to the AWS Direct Connection supported bandwidths for [Hosted Connections](https://docs.aws.amazon.com/directconnect/latest/UserGuide/hosted_connection.html).
  late final Output<String> bandwidth;

  /// The ID of the interconnect or LAG.
  late final Output<String> connectionId;

  /// The AWS Region where the connection is located.
  late final Output<String> connectionRegion;

  /// Indicates whether the connection supports a secondary BGP peer in the same address family (IPv4/IPv6).
  late final Output<String> hasLogicalRedundancy;

  /// Boolean value representing if jumbo frames have been enabled for this connection.
  late final Output<bool> jumboFrameCapable;

  /// The ID of the LAG.
  late final Output<String> lagId;

  /// The time of the most recent call to [DescribeLoa](https://docs.aws.amazon.com/directconnect/latest/APIReference/API_DescribeLoa.html) for this connection.
  late final Output<String> loaIssueTime;

  /// The location of the connection.
  late final Output<String> location;

  /// The name of the connection.
  late final Output<String> name;

  /// The ID of the AWS account of the customer for the connection.
  late final Output<String> ownerAccountId;

  /// The name of the AWS Direct Connect service provider associated with the connection.
  late final Output<String> partnerName;

  /// The name of the service provider associated with the connection.
  late final Output<String> providerName;

  /// (**Deprecated**) The AWS Region where the connection is located. Use `connection_region` instead.
  late final Output<String> region;

  /// The state of the connection. Possible values include: ordering, requested, pending, available, down, deleting, deleted, rejected, unknown. See [AllocateHostedConnection](https://docs.aws.amazon.com/directconnect/latest/APIReference/API_AllocateHostedConnection.html) for a description of each connection state.
  late final Output<String> state;

  /// The dedicated VLAN provisioned to the hosted connection.
  late final Output<int> vlan;

  HostedConnection(
    String name, {
    HostedConnectionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:directconnect/hostedConnection:HostedConnection',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.awsDevice = registerOutput<String>('awsDevice');
    this.bandwidth = registerOutput<String>('bandwidth');
    this.connectionId = registerOutput<String>('connectionId');
    this.connectionRegion = registerOutput<String>('connectionRegion');
    this.hasLogicalRedundancy = registerOutput<String>('hasLogicalRedundancy');
    this.jumboFrameCapable = registerOutput<bool>('jumboFrameCapable');
    this.lagId = registerOutput<String>('lagId');
    this.loaIssueTime = registerOutput<String>('loaIssueTime');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.ownerAccountId = registerOutput<String>('ownerAccountId');
    this.partnerName = registerOutput<String>('partnerName');
    this.providerName = registerOutput<String>('providerName');
    this.region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
    this.vlan = registerOutput<int>('vlan');
  }
}
