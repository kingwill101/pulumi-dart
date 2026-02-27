// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getParameterGroup.
class GetParameterGroupRdsResult {
  /// ARN of the parameter group.
  final String arn;

  /// Description of the parameter group.
  final String description;

  /// Family of the parameter group.
  final String family;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String region;

  GetParameterGroupRdsResult({
    required this.arn,
    required this.description,
    required this.family,
    required this.id,
    required this.name,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['description'] = description;
    map['family'] = family;
    map['id'] = id;
    map['name'] = name;
    map['region'] = region;
    return map;
  }

  factory GetParameterGroupRdsResult.fromMap(Map<String, dynamic> map) {
    return GetParameterGroupRdsResult(
      arn: map['arn'] as String,
      description: map['description'] as String,
      family: map['family'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
    );
  }
}
