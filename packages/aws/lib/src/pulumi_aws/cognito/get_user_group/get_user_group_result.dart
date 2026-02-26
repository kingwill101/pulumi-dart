// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getUserGroup.
class GetUserGroupResult {
  /// Description of the user group.
  final String description;

  /// A comma-delimited string concatenating <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> and <span pulumi-lang-nodejs="`userPoolId`" pulumi-lang-dotnet="`UserPoolId`" pulumi-lang-go="`userPoolId`" pulumi-lang-python="`user_pool_id`" pulumi-lang-yaml="`userPoolId`" pulumi-lang-java="`userPoolId`">`user_pool_id`</span>.
  final String id;
  final String name;

  /// Precedence of the user group.
  final int precedence;
  final String region;

  /// ARN of the IAM role to be associated with the user group.
  final String roleArn;
  final String userPoolId;

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
    final map = <String, dynamic>{};
    map['description'] = description;
    map['id'] = id;
    map['name'] = name;
    map['precedence'] = precedence;
    map['region'] = region;
    map['roleArn'] = roleArn;
    map['userPoolId'] = userPoolId;
    return map;
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
