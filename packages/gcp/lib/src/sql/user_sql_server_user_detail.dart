// ignore_for_file: unused_element, unnecessary_cast

class UserSqlServerUserDetail {
  /// If the user has been disabled.
  final bool? disabled;

  /// The server roles for this user in the database.
  final List<String>? serverRoles;

  /// Creates a new [UserSqlServerUserDetail].
  /// [disabled] If the user has been disabled.
  /// [serverRoles] The server roles for this user in the database.
  UserSqlServerUserDetail({this.disabled, this.serverRoles});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
      'serverRoles': ?serverRoles,
    };
  }

  factory UserSqlServerUserDetail.fromMap(Map<String, dynamic> map) {
    return UserSqlServerUserDetail(
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      serverRoles: map['serverRoles'] == null
          ? null
          : (map['serverRoles'] as List).cast<String>(),
    );
  }
}
