// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getUserGroup.
class GetUserGroupResult {
  /// Description of the user group.
  final String? description;
  /// A comma-delimited string concatenating `name` and `userPoolId`.
  final String? id;
  final String? name;
  /// Precedence of the user group.
  final int? precedence;
  final String? region;
  /// ARN of the IAM role to be associated with the user group.
  final String? roleArn;
  final String? userPoolId;

  /// Creates a new [GetUserGroupResult].
  /// [description] Description of the user group.
  /// [id] A comma-delimited string concatenating `name` and `userPoolId`.
  /// [name] Optional.
  /// [precedence] Precedence of the user group.
  /// [region] Optional.
  /// [roleArn] ARN of the IAM role to be associated with the user group.
  /// [userPoolId] Optional.
  const GetUserGroupResult({
    this.description,
    this.id,
    this.name,
    this.precedence,
    this.region,
    this.roleArn,
    this.userPoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'precedence': ?precedence,
      'region': ?region,
      'roleArn': ?roleArn,
      'userPoolId': ?userPoolId,
    };
  }

  factory GetUserGroupResult.fromMap(Map<String, dynamic> map) {
    return GetUserGroupResult(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      precedence: (() { final guardedValue = map['precedence']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userPoolId: (() { final guardedValue = map['userPoolId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
