// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HostedConnection resources.
class HostedConnectionState {
  /// The Direct Connect endpoint on which the physical connection terminates.
  final pulumi.Input<String>? awsDevice;
  /// The bandwidth of the connection. Valid values for dedicated connections: 1Gbps, 10Gbps. Valid values for hosted connections: 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, 500Mbps, 1Gbps, 2Gbps, 5Gbps, 10Gbps, and 25Gbps. Case sensitive. Refer to the AWS Direct Connection supported bandwidths for [Hosted Connections](https://docs.aws.amazon.com/directconnect/latest/UserGuide/hosted_connection.html).
  final pulumi.Input<String>? bandwidth;
  /// The ID of the interconnect or LAG.
  final pulumi.Input<String>? connectionId;
  /// The AWS Region where the connection is located.
  final pulumi.Input<String>? connectionRegion;
  /// Indicates whether the connection supports a secondary BGP peer in the same address family (IPv4/IPv6).
  final pulumi.Input<String>? hasLogicalRedundancy;
  /// Boolean value representing if jumbo frames have been enabled for this connection.
  final pulumi.Input<bool>? jumboFrameCapable;
  /// The ID of the LAG.
  final pulumi.Input<String>? lagId;
  /// The time of the most recent call to [DescribeLoa](https://docs.aws.amazon.com/directconnect/latest/APIReference/API_DescribeLoa.html) for this connection.
  final pulumi.Input<String>? loaIssueTime;
  /// The location of the connection.
  final pulumi.Input<String>? location;
  /// The name of the connection.
  final pulumi.Input<String>? name;
  /// The ID of the AWS account of the customer for the connection.
  final pulumi.Input<String>? ownerAccountId;
  /// The name of the AWS Direct Connect service provider associated with the connection.
  final pulumi.Input<String>? partnerName;
  /// The name of the service provider associated with the connection.
  final pulumi.Input<String>? providerName;
  /// (**Deprecated**) The AWS Region where the connection is located. Use `connection_region` instead.
  final pulumi.Input<String>? region;
  /// The state of the connection. Possible values include: ordering, requested, pending, available, down, deleting, deleted, rejected, unknown. See [AllocateHostedConnection](https://docs.aws.amazon.com/directconnect/latest/APIReference/API_AllocateHostedConnection.html) for a description of each connection state.
  final pulumi.Input<String>? state;
  /// The dedicated VLAN provisioned to the hosted connection.
  final pulumi.Input<int>? vlan;

  /// Creates a new [HostedConnectionState].
  /// [awsDevice] The Direct Connect endpoint on which the physical connection terminates.
  /// [bandwidth] The bandwidth of the connection. Valid values for dedicated connections: 1Gbps, 10Gbps. Valid values for hosted connections: 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, 500Mbps, 1Gbps, 2Gbps, 5Gbps, 10Gbps, and 25Gbps. Case sensitive. Refer to the AWS Direct Connection supported bandwidths for [Hosted Connections](https://docs.aws.amazon.com/directconnect/latest/UserGuide/hosted_connection.html).
  /// [connectionId] The ID of the interconnect or LAG.
  /// [connectionRegion] The AWS Region where the connection is located.
  /// [hasLogicalRedundancy] Indicates whether the connection supports a secondary BGP peer in the same address family (IPv4/IPv6).
  /// [jumboFrameCapable] Boolean value representing if jumbo frames have been enabled for this connection.
  /// [lagId] The ID of the LAG.
  /// [loaIssueTime] The time of the most recent call to [DescribeLoa](https://docs.aws.amazon.com/directconnect/latest/APIReference/API_DescribeLoa.html) for this connection.
  /// [location] The location of the connection.
  /// [name] The name of the connection.
  /// [ownerAccountId] The ID of the AWS account of the customer for the connection.
  /// [partnerName] The name of the AWS Direct Connect service provider associated with the connection.
  /// [providerName] The name of the service provider associated with the connection.
  /// [region] (**Deprecated**) The AWS Region where the connection is located. Use `connection_region` instead.
  /// [state] The state of the connection. Possible values include: ordering, requested, pending, available, down, deleting, deleted, rejected, unknown. See [AllocateHostedConnection](https://docs.aws.amazon.com/directconnect/latest/APIReference/API_AllocateHostedConnection.html) for a description of each connection state.
  /// [vlan] The dedicated VLAN provisioned to the hosted connection.
  HostedConnectionState({
    this.awsDevice,
    this.bandwidth,
    this.connectionId,
    this.connectionRegion,
    this.hasLogicalRedundancy,
    this.jumboFrameCapable,
    this.lagId,
    this.loaIssueTime,
    this.location,
    this.name,
    this.ownerAccountId,
    this.partnerName,
    this.providerName,
    this.region,
    this.state,
    this.vlan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsDevice': ?awsDevice,
      'bandwidth': ?bandwidth,
      'connectionId': ?connectionId,
      'connectionRegion': ?connectionRegion,
      'hasLogicalRedundancy': ?hasLogicalRedundancy,
      'jumboFrameCapable': ?jumboFrameCapable,
      'lagId': ?lagId,
      'loaIssueTime': ?loaIssueTime,
      'location': ?location,
      'name': ?name,
      'ownerAccountId': ?ownerAccountId,
      'partnerName': ?partnerName,
      'providerName': ?providerName,
      'region': ?region,
      'state': ?state,
      'vlan': ?vlan,
    };
  }

  factory HostedConnectionState.fromMap(Map<String, dynamic> map) {
    return HostedConnectionState(
      awsDevice: map['awsDevice'] == null ? null : (map['awsDevice'] as String).input(),
      bandwidth: map['bandwidth'] == null ? null : (map['bandwidth'] as String).input(),
      connectionId: map['connectionId'] == null ? null : (map['connectionId'] as String).input(),
      connectionRegion: map['connectionRegion'] == null ? null : (map['connectionRegion'] as String).input(),
      hasLogicalRedundancy: map['hasLogicalRedundancy'] == null ? null : (map['hasLogicalRedundancy'] as String).input(),
      jumboFrameCapable: map['jumboFrameCapable'] == null ? null : (map['jumboFrameCapable'] as bool).input(),
      lagId: map['lagId'] == null ? null : (map['lagId'] as String).input(),
      loaIssueTime: map['loaIssueTime'] == null ? null : (map['loaIssueTime'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      ownerAccountId: map['ownerAccountId'] == null ? null : (map['ownerAccountId'] as String).input(),
      partnerName: map['partnerName'] == null ? null : (map['partnerName'] as String).input(),
      providerName: map['providerName'] == null ? null : (map['providerName'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      vlan: map['vlan'] == null ? null : (map['vlan'] as int).input(),
    );
  }
}

