// ignore_for_file: unused_element, unnecessary_cast

class UserPoolUsernameConfiguration {
  /// Whether username case sensitivity will be applied for all users in the user pool through Cognito APIs.
  final bool? caseSensitive;

  /// Creates a new [UserPoolUsernameConfiguration].
  /// [caseSensitive] Whether username case sensitivity will be applied for all users in the user pool through Cognito APIs.
  UserPoolUsernameConfiguration({this.caseSensitive});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'caseSensitive': ?caseSensitive};
  }

  factory UserPoolUsernameConfiguration.fromMap(Map<String, dynamic> map) {
    return UserPoolUsernameConfiguration(
      caseSensitive: map['caseSensitive'] == null
          ? null
          : map['caseSensitive'] as bool,
    );
  }
}
