// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRuleGroup.
class GetRuleGroupResult {
  /// ARN of the entity.
  final String? arn;
  /// Description of the rule group that helps with identification.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? region;
  final String? scope;

  /// Creates a new [GetRuleGroupResult].
  /// [arn] ARN of the entity.
  /// [description] Description of the rule group that helps with identification.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [region] Optional.
  /// [scope] Optional.
  const GetRuleGroupResult({
    this.arn,
    this.description,
    this.id,
    this.name,
    this.region,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'region': ?region,
      'scope': ?scope,
    };
  }

  factory GetRuleGroupResult.fromMap(Map<String, dynamic> map) {
    return GetRuleGroupResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
