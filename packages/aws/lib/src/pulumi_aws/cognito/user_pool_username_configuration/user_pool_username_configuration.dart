// ignore_for_file: unused_element, unnecessary_cast

class UserPoolUsernameConfiguration {
  /// Whether username case sensitivity will be applied for all users in the user pool through Cognito APIs.
  final bool? caseSensitive;

  UserPoolUsernameConfiguration({
    this.caseSensitive,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final caseSensitiveValue = caseSensitive;
    if (caseSensitiveValue != null) {
      map['caseSensitive'] = caseSensitiveValue;
    }
    return map;
  }

  factory UserPoolUsernameConfiguration.fromMap(Map<String, dynamic> map) {
    return UserPoolUsernameConfiguration(
      caseSensitive:
          map['caseSensitive'] == null ? null : map['caseSensitive'] as bool,
    );
  }
}
