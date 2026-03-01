// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getUserGroup.
class GetUserGroupResult {
  /// Description of the user group.
  final String description;

  /// A comma-delimited string concatenating `name` and `user_pool_id`.
  final String id;
  final String name;

  /// Precedence of the user group.
  final int precedence;
  final String region;

  /// ARN of the IAM role to be associated with the user group.
  final String roleArn;
  final String userPoolId;

  /// Creates a new [GetUserGroupResult].
  /// [description] Description of the user group.
  /// [id] A comma-delimited string concatenating `name` and `user_pool_id`.
  /// [name] Required.
  /// [precedence] Precedence of the user group.
  /// [region] Required.
  /// [roleArn] ARN of the IAM role to be associated with the user group.
  /// [userPoolId] Required.
  GetUserGroupResult({
    required this.description,
    required this.id,
    required this.name,
    required this.precedence,
    required this.region,
    required this.roleArn,
    required this.userPoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'id': id,
      'name': name,
      'precedence': precedence,
      'region': region,
      'roleArn': roleArn,
      'userPoolId': userPoolId,
    };
  }

  factory GetUserGroupResult.fromMap(Map<String, dynamic> map) {
    return GetUserGroupResult(
      description: map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      precedence: map['precedence'] as int,
      region: map['region'] as String,
      roleArn: map['roleArn'] as String,
      userPoolId: map['userPoolId'] as String,
    );
  }
}
