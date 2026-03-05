// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceMeshesMeshMeshConfigPrometheus {
  /// The  service addresses of the Prometheus.
  final pulumi.Input<String> externalUrl;
  /// Whether to enable external Prometheus.
  final pulumi.Input<bool> useExternal;

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
      externalUrl: pulumi.Input.fromValue(map['externalUrl'] as String),
      useExternal: pulumi.Input.fromValue(map['useExternal'] as bool),
    );
  }
}

