// ignore_for_file: unused_element, unnecessary_cast

class ConnectionProfileAlloydbSettingsInitialUser {
  /// The initial password for the user.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String password;

  /// (Output)
  /// Output only. Indicates if the initialUser.password field has been set.
  final bool? passwordSet;

  /// The database username.
  final String user;

  /// Creates a new [ConnectionProfileAlloydbSettingsInitialUser].
  /// [password] The initial password for the user.
  /// [passwordSet] (Output)
  /// [user] The database username.
  ConnectionProfileAlloydbSettingsInitialUser({
    required this.password,
    this.passwordSet,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['password'] = password;
    final passwordSetValue = passwordSet;
    if (passwordSetValue != null) {
      map['passwordSet'] = passwordSetValue;
    }
    map['user'] = user;
    return map;
  }

  factory ConnectionProfileAlloydbSettingsInitialUser.fromMap(
      Map<String, dynamic> map) {
    return ConnectionProfileAlloydbSettingsInitialUser(
      password: map['password'] as String,
      passwordSet:
          map['passwordSet'] == null ? null : map['passwordSet'] as bool,
      user: map['user'] as String,
    );
  }
}
