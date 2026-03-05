// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet.dart';

/// Definition of ReplicationSubnetGroup
class ReplicationSubnetGroup {
  /// &lt;p&gt;A description for the replication subnet group.&lt;/p&gt;
  final pulumi.Input<String>? replicationSubnetGroupDescription;
  /// &lt;p&gt;The identifier of the replication instance subnet group.&lt;/p&gt;
  final pulumi.Input<String>? replicationSubnetGroupIdentifier;
  /// &lt;p&gt;The status of the subnet group.&lt;/p&gt;
  final pulumi.Input<String>? subnetGroupStatus;
  /// &lt;p&gt;The subnets that are in the subnet group.&lt;/p&gt;
  final pulumi.Input<List<Subnet>>? subnets;
  /// &lt;p&gt;The IP addressing protocol supported by the subnet group. This is used by a replication instance with values such as IPv4 only or Dual-stack that supports both IPv4 and IPv6 addressing. IPv6 only is not yet supported.&lt;/p&gt;
  final pulumi.Input<List<String>>? supportedNetworkTypes;
  /// &lt;p&gt;The ID of the VPC.&lt;/p&gt;
  final pulumi.Input<String>? vpcId;

  /// Creates a new [ReplicationSubnetGroup].
  /// [replicationSubnetGroupDescription] &lt;p&gt;A description for the replication subnet group.&lt;/p&gt;
  /// [replicationSubnetGroupIdentifier] &lt;p&gt;The identifier of the replication instance subnet group.&lt;/p&gt;
  /// [subnetGroupStatus] &lt;p&gt;The status of the subnet group.&lt;/p&gt;
  /// [subnets] &lt;p&gt;The subnets that are in the subnet group.&lt;/p&gt;
  /// [supportedNetworkTypes] &lt;p&gt;The IP addressing protocol supported by the subnet group. This is used by a replication instance with values such as IPv4 only or Dual-stack that supports both IPv4 and IPv6 addressing. IPv6 only is not yet supported.&lt;/p&gt;
  /// [vpcId] &lt;p&gt;The ID of the VPC.&lt;/p&gt;
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
      replicationSubnetGroupDescription: (() { final guardedValue = map['replicationSubnetGroupDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicationSubnetGroupIdentifier: (() { final guardedValue = map['replicationSubnetGroupIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetGroupStatus: (() { final guardedValue = map['subnetGroupStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnets: (() { final guardedValue = map['subnets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Subnet>(guardedValue, (value) => Subnet.fromMap((value as Map).cast<String, dynamic>()))); })(),
      supportedNetworkTypes: (() { final guardedValue = map['supportedNetworkTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

