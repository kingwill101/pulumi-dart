// ignore_for_file: unused_element, unnecessary_cast

/// Represents a Sql Server user on the Cloud SQL instance.
class SqlServerUserDetailsResponseSqladminV1beta4 {
  /// If the user has been disabled
  final bool disabled;

  /// The server roles for this user
  final List<String> serverRoles;

  /// Creates a new [SqlServerUserDetailsResponseSqladminV1beta4].
  /// [disabled] If the user has been disabled
  /// [serverRoles] The server roles for this user
  SqlServerUserDetailsResponseSqladminV1beta4({
    required this.disabled,
    required this.serverRoles,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disabled'] = disabled;
    map['serverRoles'] = serverRoles;
    return map;
  }

  factory SqlServerUserDetailsResponseSqladminV1beta4.fromMap(
      Map<String, dynamic> map) {
    return SqlServerUserDetailsResponseSqladminV1beta4(
      disabled: map['disabled'] as bool,
      serverRoles: (map['serverRoles'] as List).cast<String>(),
    );
  }
}
