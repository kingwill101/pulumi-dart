// ignore_for_file: unused_element, unnecessary_cast

/// Active Directory configuration, relevant only for Cloud SQL for SQL Server.
class SqlActiveDirectoryConfigResponse2 {
  /// The name of the domain (e.g., mydomain.com).
  final String domain;

  /// This is always sql#activeDirectoryConfig.
  final String kind;

  SqlActiveDirectoryConfigResponse2({
    required this.domain,
    required this.kind,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domain'] = domain;
    map['kind'] = kind;
    return map;
  }

  factory SqlActiveDirectoryConfigResponse2.fromMap(Map<String, dynamic> map) {
    return SqlActiveDirectoryConfigResponse2(
      domain: map['domain'] as String,
      kind: map['kind'] as String,
    );
  }
}
