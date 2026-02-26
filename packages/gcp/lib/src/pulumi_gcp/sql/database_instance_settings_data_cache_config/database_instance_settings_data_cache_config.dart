// ignore_for_file: unused_element, unnecessary_cast

class DatabaseInstanceSettingsDataCacheConfig {
  /// Whether data cache is enabled for the instance. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> for MYSQL Enterprise Plus and PostgreSQL Enterprise Plus instances only. For SQL Server Enterprise Plus instances it defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? dataCacheEnabled;

  DatabaseInstanceSettingsDataCacheConfig({
    this.dataCacheEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataCacheEnabledValue = dataCacheEnabled;
    if (dataCacheEnabledValue != null) {
      map['dataCacheEnabled'] = dataCacheEnabledValue;
    }
    return map;
  }

  factory DatabaseInstanceSettingsDataCacheConfig.fromMap(
      Map<String, dynamic> map) {
    return DatabaseInstanceSettingsDataCacheConfig(
      dataCacheEnabled: map['dataCacheEnabled'] == null
          ? null
          : map['dataCacheEnabled'] as bool,
    );
  }
}
