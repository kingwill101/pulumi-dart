// ignore_for_file: unused_element, unnecessary_cast

class GetClusterManagedOpentelemetryConfig {
  /// The scope of the Managed OpenTelemetry pipeline. Available options include SCOPE_UNSPECIFIED, NONE, and COLLECTION_AND_INSTRUMENTATION_COMPONENTS.
  final String scope;

  GetClusterManagedOpentelemetryConfig({
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['scope'] = scope;
    return map;
  }

  factory GetClusterManagedOpentelemetryConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterManagedOpentelemetryConfig(
      scope: map['scope'] as String,
    );
  }
}
