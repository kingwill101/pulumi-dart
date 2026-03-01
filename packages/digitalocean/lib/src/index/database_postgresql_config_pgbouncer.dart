// ignore_for_file: unused_element, unnecessary_cast


class DatabasePostgresqlConfigPgbouncer {
  final int? autodbIdleTimeout;
  final int? autodbMaxDbConnections;
  final String? autodbPoolMode;
  final int? autodbPoolSize;
  final List<String>? ignoreStartupParameters;
  final int? minPoolSize;
  final int? serverIdleTimeout;
  final int? serverLifetime;
  final bool? serverResetQueryAlways;

  /// Creates a new [DatabasePostgresqlConfigPgbouncer].
  /// [autodbIdleTimeout] Optional.
  /// [autodbMaxDbConnections] Optional.
  /// [autodbPoolMode] Optional.
  /// [autodbPoolSize] Optional.
  /// [ignoreStartupParameters] Optional.
  /// [minPoolSize] Optional.
  /// [serverIdleTimeout] Optional.
  /// [serverLifetime] Optional.
  /// [serverResetQueryAlways] Optional.
  DatabasePostgresqlConfigPgbouncer({
    this.autodbIdleTimeout,
    this.autodbMaxDbConnections,
    this.autodbPoolMode,
    this.autodbPoolSize,
    this.ignoreStartupParameters,
    this.minPoolSize,
    this.serverIdleTimeout,
    this.serverLifetime,
    this.serverResetQueryAlways,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autodbIdleTimeout': ?autodbIdleTimeout,
      'autodbMaxDbConnections': ?autodbMaxDbConnections,
      'autodbPoolMode': ?autodbPoolMode,
      'autodbPoolSize': ?autodbPoolSize,
      'ignoreStartupParameters': ?ignoreStartupParameters,
      'minPoolSize': ?minPoolSize,
      'serverIdleTimeout': ?serverIdleTimeout,
      'serverLifetime': ?serverLifetime,
      'serverResetQueryAlways': ?serverResetQueryAlways,
    };
  }

  factory DatabasePostgresqlConfigPgbouncer.fromMap(Map<String, dynamic> map) {
    return DatabasePostgresqlConfigPgbouncer(
      autodbIdleTimeout: map['autodbIdleTimeout'] == null ? null : map['autodbIdleTimeout'] as int,
      autodbMaxDbConnections: map['autodbMaxDbConnections'] == null ? null : map['autodbMaxDbConnections'] as int,
      autodbPoolMode: map['autodbPoolMode'] == null ? null : map['autodbPoolMode'] as String,
      autodbPoolSize: map['autodbPoolSize'] == null ? null : map['autodbPoolSize'] as int,
      ignoreStartupParameters: map['ignoreStartupParameters'] == null ? null : (map['ignoreStartupParameters'] as List).cast<String>(),
      minPoolSize: map['minPoolSize'] == null ? null : map['minPoolSize'] as int,
      serverIdleTimeout: map['serverIdleTimeout'] == null ? null : map['serverIdleTimeout'] as int,
      serverLifetime: map['serverLifetime'] == null ? null : map['serverLifetime'] as int,
      serverResetQueryAlways: map['serverResetQueryAlways'] == null ? null : map['serverResetQueryAlways'] as bool,
    );
  }
}

