// ignore_for_file: unused_element, unnecessary_cast

class DatabaseInstanceSettingsActiveDirectoryConfig {
  /// The domain name for the active directory (e.g., mydomain.com).
  /// Can only be used with SQL Server.
  final String domain;

  DatabaseInstanceSettingsActiveDirectoryConfig({
    required this.domain,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domain'] = domain;
    return map;
  }

  factory DatabaseInstanceSettingsActiveDirectoryConfig.fromMap(
      Map<String, dynamic> map) {
    return DatabaseInstanceSettingsActiveDirectoryConfig(
      domain: map['domain'] as String,
    );
  }
}
