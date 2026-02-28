// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getResource.
class GetResourceResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String identifier;

  /// JSON string matching the CloudFormation resource type schema with current configuration.
  final String properties;
  final String region;
  final String? roleArn;
  final String typeName;
  final String? typeVersionId;

  /// Creates a new [GetResourceResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identifier] Required.
  /// [properties] JSON string matching the CloudFormation resource type schema with current configuration.
  /// [region] Required.
  /// [roleArn] Optional.
  /// [typeName] Required.
  /// [typeVersionId] Optional.
  GetResourceResult({
    required this.id,
    required this.identifier,
    required this.properties,
    required this.region,
    this.roleArn,
    required this.typeName,
    this.typeVersionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['identifier'] = identifier;
    map['properties'] = properties;
    map['region'] = region;
    final roleArnValue = roleArn;
    if (roleArnValue != null) {
      map['roleArn'] = roleArnValue;
    }
    map['typeName'] = typeName;
    final typeVersionIdValue = typeVersionId;
    if (typeVersionIdValue != null) {
      map['typeVersionId'] = typeVersionIdValue;
    }
    return map;
  }

  factory GetResourceResult.fromMap(Map<String, dynamic> map) {
    return GetResourceResult(
      id: map['id'] as String,
      identifier: map['identifier'] as String,
      properties: map['properties'] as String,
      region: map['region'] as String,
      roleArn: map['roleArn'] == null ? null : map['roleArn'] as String,
      typeName: map['typeName'] as String,
      typeVersionId:
          map['typeVersionId'] == null ? null : map['typeVersionId'] as String,
    );
  }
}
