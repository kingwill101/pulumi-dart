// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getReplicationSubnetGroup.
class GetReplicationSubnetGroupResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? region;
  final String? replicationSubnetGroupArn;
  /// Description for the subnet group.
  final String? replicationSubnetGroupDescription;
  final String? replicationSubnetGroupId;
  final String? subnetGroupStatus;
  /// List of at least 2 EC2 subnet IDs for the subnet group. The subnets must cover at least 2 availability zones.
  final List<String>? subnetIds;
  final Map<String, String>? tags;
  /// The ID of the VPC the subnet group is in.
  final String? vpcId;

  /// Creates a new [GetReplicationSubnetGroupResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  /// [replicationSubnetGroupArn] Optional.
  /// [replicationSubnetGroupDescription] Description for the subnet group.
  /// [replicationSubnetGroupId] Optional.
  /// [subnetGroupStatus] Optional.
  /// [subnetIds] List of at least 2 EC2 subnet IDs for the subnet group. The subnets must cover at least 2 availability zones.
  /// [tags] Optional.
  /// [vpcId] The ID of the VPC the subnet group is in.
  const GetReplicationSubnetGroupResult({
    this.id,
    this.region,
    this.replicationSubnetGroupArn,
    this.replicationSubnetGroupDescription,
    this.replicationSubnetGroupId,
    this.subnetGroupStatus,
    this.subnetIds,
    this.tags,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'region': ?region,
      'replicationSubnetGroupArn': ?replicationSubnetGroupArn,
      'replicationSubnetGroupDescription': ?replicationSubnetGroupDescription,
      'replicationSubnetGroupId': ?replicationSubnetGroupId,
      'subnetGroupStatus': ?subnetGroupStatus,
      'subnetIds': ?subnetIds,
      'tags': ?tags,
      'vpcId': ?vpcId,
    };
  }

  factory GetReplicationSubnetGroupResult.fromMap(Map<String, dynamic> map) {
    return GetReplicationSubnetGroupResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      replicationSubnetGroupArn: (() { final guardedValue = map['replicationSubnetGroupArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      replicationSubnetGroupDescription: (() { final guardedValue = map['replicationSubnetGroupDescription']; if (guardedValue == null) return null; return guardedValue as String; })(),
      replicationSubnetGroupId: (() { final guardedValue = map['replicationSubnetGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnetGroupStatus: (() { final guardedValue = map['subnetGroupStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
