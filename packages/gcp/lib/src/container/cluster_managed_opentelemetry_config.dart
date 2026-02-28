// ignore_for_file: unused_element, unnecessary_cast


class ClusterManagedOpentelemetryConfig {
  /// The scope of the Managed OpenTelemetry pipeline. Supported values include: `SCOPE_UNSPECIFIED`, `NONE`, `COLLECTION_AND_INSTRUMENTATION_COMPONENTS`.
  final String? scope;

  /// Creates a new [ClusterManagedOpentelemetryConfig].
  /// [scope] The scope of the Managed OpenTelemetry pipeline. Supported values include: `SCOPE_UNSPECIFIED`, `NONE`, `COLLECTION_AND_INSTRUMENTATION_COMPONENTS`.
  ClusterManagedOpentelemetryConfig({
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scope': ?scope,
    };
  }

  factory ClusterManagedOpentelemetryConfig.fromMap(Map<String, dynamic> map) {
    return ClusterManagedOpentelemetryConfig(
      scope: map['scope'] == null ? null : map['scope'] as String,
    );
  }
}

