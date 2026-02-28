// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getAlias.
class GetAliasResult {
  /// Amazon Resource Name(ARN) of the key alias.
  final String arn;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Name of the alias
  final String name;
  final String region;

  /// ARN pointed to by the alias.
  final String targetKeyArn;

  /// Key identifier pointed to by the alias.
  final String targetKeyId;

  /// Creates a new [GetAliasResult].
  /// [arn] Amazon Resource Name(ARN) of the key alias.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Name of the alias
  /// [region] Required.
  /// [targetKeyArn] ARN pointed to by the alias.
  /// [targetKeyId] Key identifier pointed to by the alias.
  GetAliasResult({
    required this.arn,
    required this.id,
    required this.name,
    required this.region,
    required this.targetKeyArn,
    required this.targetKeyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['id'] = id;
    map['name'] = name;
    map['region'] = region;
    map['targetKeyArn'] = targetKeyArn;
    map['targetKeyId'] = targetKeyId;
    return map;
  }

  factory GetAliasResult.fromMap(Map<String, dynamic> map) {
    return GetAliasResult(
      arn: map['arn'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      targetKeyArn: map['targetKeyArn'] as String,
      targetKeyId: map['targetKeyId'] as String,
    );
  }
}
