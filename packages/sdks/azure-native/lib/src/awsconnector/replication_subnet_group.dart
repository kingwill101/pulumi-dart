// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet.dart';

/// Definition of ReplicationSubnetGroup
class ReplicationSubnetGroup {
  /// <p>A description for the replication subnet group.</p>
  final pulumi.Input<String>? replicationSubnetGroupDescription;
  /// <p>The identifier of the replication instance subnet group.</p>
  final pulumi.Input<String>? replicationSubnetGroupIdentifier;
  /// <p>The status of the subnet group.</p>
  final pulumi.Input<String>? subnetGroupStatus;
  /// <p>The subnets that are in the subnet group.</p>
  final pulumi.Input<List<Subnet>>? subnets;
  /// <p>The IP addressing protocol supported by the subnet group. This is used by a replication instance with values such as IPv4 only or Dual-stack that supports both IPv4 and IPv6 addressing. IPv6 only is not yet supported.</p>
  final pulumi.Input<List<String>>? supportedNetworkTypes;
  /// <p>The ID of the VPC.</p>
  final pulumi.Input<String>? vpcId;

  /// Creates a new [ReplicationSubnetGroup].
  /// [replicationSubnetGroupDescription] <p>A description for the replication subnet group.</p>
  /// [replicationSubnetGroupIdentifier] <p>The identifier of the replication instance subnet group.</p>
  /// [subnetGroupStatus] <p>The status of the subnet group.</p>
  /// [subnets] <p>The subnets that are in the subnet group.</p>
  /// [supportedNetworkTypes] <p>The IP addressing protocol supported by the subnet group. This is used by a replication instance with values such as IPv4 only or Dual-stack that supports both IPv4 and IPv6 addressing. IPv6 only is not yet supported.</p>
  /// [vpcId] <p>The ID of the VPC.</p>
  ReplicationSubnetGroup({
    this.replicationSubnetGroupDescription,
    this.replicationSubnetGroupIdentifier,
    this.subnetGroupStatus,
    this.subnets,
    this.supportedNetworkTypes,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replicationSubnetGroupDescription': ?replicationSubnetGroupDescription,
      'replicationSubnetGroupIdentifier': ?replicationSubnetGroupIdentifier,
      'subnetGroupStatus': ?subnetGroupStatus,
      'subnets': ?pulumi.Input.mapOptionalInputValue<List<Subnet>, List<Map<String, dynamic>>>(subnets, (value) => pulumi.Input.encodeList<Subnet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'supportedNetworkTypes': ?supportedNetworkTypes,
      'vpcId': ?vpcId,
    };
  }

  factory ReplicationSubnetGroup.fromMap(Map<String, dynamic> map) {
    return ReplicationSubnetGroup(
      replicationSubnetGroupDescription: map['replicationSubnetGroupDescription'] == null ? null : (map['replicationSubnetGroupDescription']! as String).input(),
      replicationSubnetGroupIdentifier: map['replicationSubnetGroupIdentifier'] == null ? null : (map['replicationSubnetGroupIdentifier']! as String).input(),
      subnetGroupStatus: map['subnetGroupStatus'] == null ? null : (map['subnetGroupStatus']! as String).input(),
      subnets: map['subnets'] == null ? null : (pulumi.Input.decodeList<Subnet>(map['subnets']!, (value) => Subnet.fromMap((value as Map).cast<String, dynamic>()))).input(),
      supportedNetworkTypes: map['supportedNetworkTypes'] == null ? null : ((map['supportedNetworkTypes']! as List).cast<String>()).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId']! as String).input(),
    );
  }
}

