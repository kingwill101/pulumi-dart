// ignore_for_file: unused_element, unnecessary_cast

/// Represents a Sql Server user on the Cloud SQL instance.
class SqlServerUserDetailsResponse {
  /// If the user has been disabled
  final bool disabled;

  /// The server roles for this user
  final List<String> serverRoles;

  /// Creates a new [SqlServerUserDetailsResponse].
  /// [disabled] If the user has been disabled
  /// [serverRoles] The server roles for this user
  SqlServerUserDetailsResponse({
    required this.disabled,
    required this.serverRoles,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disabled'] = disabled;
    map['serverRoles'] = serverRoles;
    return map;
  }

  factory SqlServerUserDetailsResponse.fromMap(Map<String, dynamic> map) {
    return SqlServerUserDetailsResponse(
      disabled: map['disabled'] as bool,
      serverRoles: (map['serverRoles'] as List).cast<String>(),
    );
  }
}
