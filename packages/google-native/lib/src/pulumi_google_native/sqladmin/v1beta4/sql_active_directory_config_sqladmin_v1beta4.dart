// ignore_for_file: unused_element, unnecessary_cast

/// Active Directory configuration, relevant only for Cloud SQL for SQL Server.
class SqlActiveDirectoryConfigSqladminV1beta4 {
  /// The name of the domain (e.g., mydomain.com).
  final String? domain;

  /// This is always sql#activeDirectoryConfig.
  final String? kind;

  SqlActiveDirectoryConfigSqladminV1beta4({
    this.domain,
    this.kind,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final domainValue = domain;
    if (domainValue != null) {
      map['domain'] = domainValue;
    }
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    return map;
  }

  factory SqlActiveDirectoryConfigSqladminV1beta4.fromMap(
      Map<String, dynamic> map) {
    return SqlActiveDirectoryConfigSqladminV1beta4(
      domain: map['domain'] == null ? null : map['domain'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
    );
  }
}
