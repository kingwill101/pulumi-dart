// ignore_for_file: unused_element, unnecessary_cast

class GetClusterManagedOpentelemetryConfig {
  /// The scope of the Managed OpenTelemetry pipeline. Available options include SCOPE_UNSPECIFIED, NONE, and COLLECTION_AND_INSTRUMENTATION_COMPONENTS.
  final String scope;

  /// Creates a new [GetClusterManagedOpentelemetryConfig].
  /// [scope] The scope of the Managed OpenTelemetry pipeline. Available options include SCOPE_UNSPECIFIED, NONE, and COLLECTION_AND_INSTRUMENTATION_COMPONENTS.
  GetClusterManagedOpentelemetryConfig({required this.scope});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'scope': scope};
  }

  factory GetClusterManagedOpentelemetryConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterManagedOpentelemetryConfig(scope: map['scope'] as String);
  }
}
