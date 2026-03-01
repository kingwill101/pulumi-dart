// ignore_for_file: unused_element, unnecessary_cast

class GetDatabaseInstancesInstanceSettingActiveDirectoryConfig {
  /// Domain name of the Active Directory for SQL Server (e.g., mydomain.com).
  final String domain;

  /// Creates a new [GetDatabaseInstancesInstanceSettingActiveDirectoryConfig].
  /// [domain] Domain name of the Active Directory for SQL Server (e.g., mydomain.com).
  GetDatabaseInstancesInstanceSettingActiveDirectoryConfig({
    required this.domain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'domain': domain};
  }

  factory GetDatabaseInstancesInstanceSettingActiveDirectoryConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDatabaseInstancesInstanceSettingActiveDirectoryConfig(
      domain: map['domain'] as String,
    );
  }
}
