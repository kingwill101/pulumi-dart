// ignore_for_file: unused_element, unnecessary_cast


class ServiceMeshMeshConfigPrometheus {
  /// Prometheus service addresses (enabled external Prometheus when the system automatically populates)
  final String? externalUrl;
  /// Whether to enable external Prometheus
  final bool? useExternal;

  /// Creates a new [ServiceMeshMeshConfigPrometheus].
  /// [externalUrl] Prometheus service addresses (enabled external Prometheus when the system automatically populates)
  /// [useExternal] Whether to enable external Prometheus
  ServiceMeshMeshConfigPrometheus({
    this.externalUrl,
    this.useExternal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalUrl': ?externalUrl,
      'useExternal': ?useExternal,
    };
  }

  factory ServiceMeshMeshConfigPrometheus.fromMap(Map<String, dynamic> map) {
    return ServiceMeshMeshConfigPrometheus(
      externalUrl: map['externalUrl'] == null ? null : map['externalUrl'] as String,
      useExternal: map['useExternal'] == null ? null : map['useExternal'] as bool,
    );
  }
}

