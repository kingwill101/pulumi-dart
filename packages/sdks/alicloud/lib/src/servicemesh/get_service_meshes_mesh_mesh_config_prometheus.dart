// ignore_for_file: unused_element, unnecessary_cast


class GetServiceMeshesMeshMeshConfigPrometheus {
  /// The  service addresses of the Prometheus.
  final String externalUrl;
  /// Whether to enable external Prometheus.
  final bool useExternal;

  /// Creates a new [GetServiceMeshesMeshMeshConfigPrometheus].
  /// [externalUrl] The  service addresses of the Prometheus.
  /// [useExternal] Whether to enable external Prometheus.
  GetServiceMeshesMeshMeshConfigPrometheus({
    required this.externalUrl,
    required this.useExternal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalUrl': externalUrl,
      'useExternal': useExternal,
    };
  }

  factory GetServiceMeshesMeshMeshConfigPrometheus.fromMap(Map<String, dynamic> map) {
    return GetServiceMeshesMeshMeshConfigPrometheus(
      externalUrl: map['externalUrl'] as String,
      useExternal: map['useExternal'] as bool,
    );
  }
}

