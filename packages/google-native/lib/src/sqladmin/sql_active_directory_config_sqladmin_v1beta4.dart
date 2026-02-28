// ignore_for_file: unused_element, unnecessary_cast


/// Active Directory configuration, relevant only for Cloud SQL for SQL Server.
class SqlActiveDirectoryConfigSqladminV1beta4 {
  /// The name of the domain (e.g., mydomain.com).
  final String? domain;
  /// This is always sql#activeDirectoryConfig.
  final String? kind;

  /// Creates a new [SqlActiveDirectoryConfigSqladminV1beta4].
  /// [domain] The name of the domain (e.g., mydomain.com).
  /// [kind] This is always sql#activeDirectoryConfig.
  SqlActiveDirectoryConfigSqladminV1beta4({
    this.domain,
    this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': ?domain,
      'kind': ?kind,
    };
  }

  factory SqlActiveDirectoryConfigSqladminV1beta4.fromMap(Map<String, dynamic> map) {
    return SqlActiveDirectoryConfigSqladminV1beta4(
      domain: map['domain'] == null ? null : map['domain'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
    );
  }
}

