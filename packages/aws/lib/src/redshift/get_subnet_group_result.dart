// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getSubnetGroup.
class GetSubnetGroupResult {
  /// ARN of the Redshift Subnet Group name.
  final String arn;

  /// Description of the Redshift Subnet group.
  final String description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String region;

  /// An array of VPC subnet IDs.
  final List<String> subnetIds;

  /// Tags associated to the Subnet Group
  final Map<String, String> tags;

  /// Creates a new [GetSubnetGroupResult].
  /// [arn] ARN of the Redshift Subnet Group name.
  /// [description] Description of the Redshift Subnet group.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [region] Required.
  /// [subnetIds] An array of VPC subnet IDs.
  /// [tags] Tags associated to the Subnet Group
  GetSubnetGroupResult({
    required this.arn,
    required this.description,
    required this.id,
    required this.name,
    required this.region,
    required this.subnetIds,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['description'] = description;
    map['id'] = id;
    map['name'] = name;
    map['region'] = region;
    map['subnetIds'] = subnetIds;
    map['tags'] = tags;
    return map;
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
    );
  }
}
