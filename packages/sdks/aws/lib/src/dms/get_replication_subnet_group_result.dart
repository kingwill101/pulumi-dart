// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getReplicationSubnetGroup.
class GetReplicationSubnetGroupResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;
  final String replicationSubnetGroupArn;
  /// Description for the subnet group.
  final String replicationSubnetGroupDescription;
  final String replicationSubnetGroupId;
  final String subnetGroupStatus;
  /// List of at least 2 EC2 subnet IDs for the subnet group. The subnets must cover at least 2 availability zones.
  final List<String> subnetIds;
  final Map<String, String> tags;
  /// The ID of the VPC the subnet group is in.
  final String vpcId;

  /// Creates a new [GetReplicationSubnetGroupResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  /// [replicationSubnetGroupArn] Required.
  /// [replicationSubnetGroupDescription] Description for the subnet group.
  /// [replicationSubnetGroupId] Required.
  /// [subnetGroupStatus] Required.
  /// [subnetIds] List of at least 2 EC2 subnet IDs for the subnet group. The subnets must cover at least 2 availability zones.
  /// [tags] Required.
  /// [vpcId] The ID of the VPC the subnet group is in.
  GetReplicationSubnetGroupResult({
    required this.id,
    required this.region,
    required this.replicationSubnetGroupArn,
    required this.replicationSubnetGroupDescription,
    required this.replicationSubnetGroupId,
    required this.subnetGroupStatus,
    required this.subnetIds,
    required this.tags,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'region': region,
      'replicationSubnetGroupArn': replicationSubnetGroupArn,
      'replicationSubnetGroupDescription': replicationSubnetGroupDescription,
      'replicationSubnetGroupId': replicationSubnetGroupId,
      'subnetGroupStatus': subnetGroupStatus,
      'subnetIds': subnetIds,
      'tags': tags,
      'vpcId': vpcId,
    };
  }

  factory GetReplicationSubnetGroupResult.fromMap(Map<String, dynamic> map) {
    return GetReplicationSubnetGroupResult(
      id: map['id'] as String,
      region: map['region'] as String,
      replicationSubnetGroupArn: map['replicationSubnetGroupArn'] as String,
      replicationSubnetGroupDescription: map['replicationSubnetGroupDescription'] as String,
      replicationSubnetGroupId: map['replicationSubnetGroupId'] as String,
      subnetGroupStatus: map['subnetGroupStatus'] as String,
      subnetIds: (map['subnetIds'] as List).cast<String>(),
      tags: (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] as String,
    );
  }
}

