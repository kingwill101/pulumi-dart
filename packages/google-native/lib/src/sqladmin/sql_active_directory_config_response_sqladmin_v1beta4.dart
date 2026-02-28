// ignore_for_file: unused_element, unnecessary_cast

/// Active Directory configuration, relevant only for Cloud SQL for SQL Server.
class SqlActiveDirectoryConfigResponseSqladminV1beta4 {
  /// The name of the domain (e.g., mydomain.com).
  final String domain;

  /// This is always sql#activeDirectoryConfig.
  final String kind;

  /// Creates a new [SqlActiveDirectoryConfigResponseSqladminV1beta4].
  /// [domain] The name of the domain (e.g., mydomain.com).
  /// [kind] This is always sql#activeDirectoryConfig.
  SqlActiveDirectoryConfigResponseSqladminV1beta4({
    required this.domain,
    required this.kind,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domain'] = domain;
    map['kind'] = kind;
    return map;
  }

  factory SqlActiveDirectoryConfigResponseSqladminV1beta4.fromMap(
      Map<String, dynamic> map) {
    return SqlActiveDirectoryConfigResponseSqladminV1beta4(
      domain: map['domain'] as String,
      kind: map['kind'] as String,
    );
  }
}
