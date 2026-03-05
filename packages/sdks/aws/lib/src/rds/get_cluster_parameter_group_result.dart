// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getClusterParameterGroup.
class GetClusterParameterGroupResult {
  /// ARN of the cluster parameter group.
  final String arn;

  /// Description of the cluster parameter group.
  final String description;

  /// Family of the cluster parameter group.
  final String family;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String region;

  /// Creates a new [GetClusterParameterGroupResult].
  /// [arn] ARN of the cluster parameter group.
  /// [description] Description of the cluster parameter group.
  /// [family] Family of the cluster parameter group.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [region] Required.
  GetClusterParameterGroupResult({
    required this.arn,
    required this.description,
    required this.family,
    required this.id,
    required this.name,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'description': description,
      'family': family,
      'id': id,
      'name': name,
      'region': region,
    };
  }

  factory GetClusterParameterGroupResult.fromMap(Map<String, dynamic> map) {
    return GetClusterParameterGroupResult(
      arn: map['arn'] as String,
      description: map['description'] as String,
      family: map['family'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
    );
  }
}
