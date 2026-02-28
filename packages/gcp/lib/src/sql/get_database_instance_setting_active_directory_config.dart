// ignore_for_file: unused_element, unnecessary_cast

class GetDatabaseInstanceSettingActiveDirectoryConfig {
  /// Domain name of the Active Directory for SQL Server (e.g., mydomain.com).
  final String domain;

  /// Creates a new [GetDatabaseInstanceSettingActiveDirectoryConfig].
  /// [domain] Domain name of the Active Directory for SQL Server (e.g., mydomain.com).
  GetDatabaseInstanceSettingActiveDirectoryConfig({
    required this.domain,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domain'] = domain;
    return map;
  }

  factory GetDatabaseInstanceSettingActiveDirectoryConfig.fromMap(
      Map<String, dynamic> map) {
    return GetDatabaseInstanceSettingActiveDirectoryConfig(
      domain: map['domain'] as String,
    );
  }
}
