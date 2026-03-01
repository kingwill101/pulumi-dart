// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_response.dart';

/// Definition of ReplicationSubnetGroup
class ReplicationSubnetGroupResponse {
  /// <p>A description for the replication subnet group.</p>
  final String? replicationSubnetGroupDescription;
  /// <p>The identifier of the replication instance subnet group.</p>
  final String? replicationSubnetGroupIdentifier;
  /// <p>The status of the subnet group.</p>
  final String? subnetGroupStatus;
  /// <p>The subnets that are in the subnet group.</p>
  final List<SubnetResponse>? subnets;
  /// <p>The IP addressing protocol supported by the subnet group. This is used by a replication instance with values such as IPv4 only or Dual-stack that supports both IPv4 and IPv6 addressing. IPv6 only is not yet supported.</p>
  final List<String>? supportedNetworkTypes;
  /// <p>The ID of the VPC.</p>
  final String? vpcId;

  /// Creates a new [ReplicationSubnetGroupResponse].
  /// [replicationSubnetGroupDescription] <p>A description for the replication subnet group.</p>
  /// [replicationSubnetGroupIdentifier] <p>The identifier of the replication instance subnet group.</p>
  /// [subnetGroupStatus] <p>The status of the subnet group.</p>
  /// [subnets] <p>The subnets that are in the subnet group.</p>
  /// [supportedNetworkTypes] <p>The IP addressing protocol supported by the subnet group. This is used by a replication instance with values such as IPv4 only or Dual-stack that supports both IPv4 and IPv6 addressing. IPv6 only is not yet supported.</p>
  /// [vpcId] <p>The ID of the VPC.</p>
  ReplicationSubnetGroupResponse({
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
      'subnets': ?subnets == null ? null : pulumi.Input.encodeList<SubnetResponse, Map<String, dynamic>>(subnets!, (value) => value.toMap()),
      'supportedNetworkTypes': ?supportedNetworkTypes,
      'vpcId': ?vpcId,
    };
  }

  factory ReplicationSubnetGroupResponse.fromMap(Map<String, dynamic> map) {
    return ReplicationSubnetGroupResponse(
      replicationSubnetGroupDescription: map['replicationSubnetGroupDescription'] == null ? null : map['replicationSubnetGroupDescription'] as String,
      replicationSubnetGroupIdentifier: map['replicationSubnetGroupIdentifier'] == null ? null : map['replicationSubnetGroupIdentifier'] as String,
      subnetGroupStatus: map['subnetGroupStatus'] == null ? null : map['subnetGroupStatus'] as String,
      subnets: map['subnets'] == null ? null : pulumi.Input.decodeList<SubnetResponse>(map['subnets'], (value) => SubnetResponse.fromMap((value as Map).cast<String, dynamic>())),
      supportedNetworkTypes: map['supportedNetworkTypes'] == null ? null : (map['supportedNetworkTypes'] as List).cast<String>(),
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}

