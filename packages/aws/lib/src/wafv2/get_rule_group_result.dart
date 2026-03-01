// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getRuleGroup.
class GetRuleGroupResult {
  /// ARN of the entity.
  final String arn;

  /// Description of the rule group that helps with identification.
  final String description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String region;
  final String scope;

  /// Creates a new [GetRuleGroupResult].
  /// [arn] ARN of the entity.
  /// [description] Description of the rule group that helps with identification.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [region] Required.
  /// [scope] Required.
  GetRuleGroupResult({
    required this.arn,
    required this.description,
    required this.id,
    required this.name,
    required this.region,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'description': description,
      'id': id,
      'name': name,
      'region': region,
      'scope': scope,
    };
  }

  factory GetRuleGroupResult.fromMap(Map<String, dynamic> map) {
    return GetRuleGroupResult(
      arn: map['arn'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      scope: map['scope'] as String,
    );
  }
}
