// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAlias.
class GetAliasResult {
  /// ARN of the key alias.
  final String? arn;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Name of the alias
  final String? name;
  final String? region;
  /// ARN pointed to by the alias.
  final String? targetKeyArn;
  /// Key identifier pointed to by the alias.
  final String? targetKeyId;

  /// Creates a new [GetAliasResult].
  /// [arn] ARN of the key alias.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Name of the alias
  /// [region] Optional.
  /// [targetKeyArn] ARN pointed to by the alias.
  /// [targetKeyId] Key identifier pointed to by the alias.
  const GetAliasResult({
    this.arn,
    this.id,
    this.name,
    this.region,
    this.targetKeyArn,
    this.targetKeyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'id': ?id,
      'name': ?name,
      'region': ?region,
      'targetKeyArn': ?targetKeyArn,
      'targetKeyId': ?targetKeyId,
    };
  }

  factory GetAliasResult.fromMap(Map<String, dynamic> map) {
    return GetAliasResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      targetKeyArn: (() { final guardedValue = map['targetKeyArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      targetKeyId: (() { final guardedValue = map['targetKeyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
