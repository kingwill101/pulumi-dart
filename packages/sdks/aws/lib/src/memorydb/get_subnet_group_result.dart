// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSubnetGroup.
class GetSubnetGroupResult {
  /// ARN of the subnet group.
  final String arn;
  /// Description of the subnet group.
  final String description;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String region;
  /// Set of VPC Subnet ID-s of the subnet group.
  final List<String> subnetIds;
  /// Map of tags assigned to the subnet group.
  final Map<String, String> tags;
  /// VPC in which the subnet group exists.
  final String vpcId;

  /// Creates a new [GetSubnetGroupResult].
  /// [arn] ARN of the subnet group.
  /// [description] Description of the subnet group.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [region] Required.
  /// [subnetIds] Set of VPC Subnet ID-s of the subnet group.
  /// [tags] Map of tags assigned to the subnet group.
  /// [vpcId] VPC in which the subnet group exists.
  GetSubnetGroupResult({
    required this.arn,
    required this.description,
    required this.id,
    required this.name,
    required this.region,
    required this.subnetIds,
    required this.tags,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'description': description,
      'id': id,
      'name': name,
      'region': region,
      'subnetIds': subnetIds,
      'tags': tags,
      'vpcId': vpcId,
    };
  }

  factory GetSubnetGroupResult.fromMap(Map<String, dynamic> map) {
    return GetSubnetGroupResult(
      arn: map['arn'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      subnetIds: (map['subnetIds'] as List).cast<String>(),
      tags: (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] as String,
    );
  }
}

