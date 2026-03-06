// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceMeshMeshConfigPrometheus {
  /// Prometheus service addresses (enabled external Prometheus when the system automatically populates)
  final pulumi.Input<String>? externalUrl;
  /// Whether to enable external Prometheus
  final pulumi.Input<bool>? useExternal;

  /// Creates a new [ServiceMeshMeshConfigPrometheus].
  /// [externalUrl] Prometheus service addresses (enabled external Prometheus when the system automatically populates)
  /// [useExternal] Whether to enable external Prometheus
  const ServiceMeshMeshConfigPrometheus({
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
      externalUrl: (() { final guardedValue = map['externalUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useExternal: (() { final guardedValue = map['useExternal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

