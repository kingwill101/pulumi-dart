// ignore_for_file: unused_element, unnecessary_cast


class GdcApplicationEnvironmentSparkApplicationEnvironmentConfig {
  /// A map of default Spark properties to apply to workloads in this application environment. These defaults may be overridden by per-application properties.
  final Map<String, String>? defaultProperties;
  /// The default Dataproc version to use for applications submitted to this application environment
  final String? defaultVersion;

  /// Creates a new [GdcApplicationEnvironmentSparkApplicationEnvironmentConfig].
  /// [defaultProperties] A map of default Spark properties to apply to workloads in this application environment. These defaults may be overridden by per-application properties.
  /// [defaultVersion] The default Dataproc version to use for applications submitted to this application environment
  GdcApplicationEnvironmentSparkApplicationEnvironmentConfig({
    this.defaultProperties,
    this.defaultVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultProperties': ?defaultProperties,
      'defaultVersion': ?defaultVersion,
    };
  }

  factory GdcApplicationEnvironmentSparkApplicationEnvironmentConfig.fromMap(Map<String, dynamic> map) {
    return GdcApplicationEnvironmentSparkApplicationEnvironmentConfig(
      defaultProperties: map['defaultProperties'] == null ? null : (map['defaultProperties'] as Map).cast<String, String>(),
      defaultVersion: map['defaultVersion'] == null ? null : map['defaultVersion'] as String,
    );
  }
}

