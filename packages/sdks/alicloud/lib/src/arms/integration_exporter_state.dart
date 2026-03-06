// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IntegrationExporter resources.
class IntegrationExporterState {
  /// The ID of the Prometheus instance.
  final pulumi.Input<String>? clusterId;
  /// The ID of the Integration Exporter instance.
  final pulumi.Input<int>? instanceId;
  /// The type of prometheus integration.
  final pulumi.Input<String>? integrationType;
  /// Exporter configuration parameter json string.
  final pulumi.Input<String>? param;

  /// Creates a new [IntegrationExporterState].
  /// [clusterId] The ID of the Prometheus instance.
  /// [instanceId] The ID of the Integration Exporter instance.
  /// [integrationType] The type of prometheus integration.
  /// [param] Exporter configuration parameter json string.
  const IntegrationExporterState({
    this.clusterId,
    this.instanceId,
    this.integrationType,
    this.param,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': ?clusterId,
      'instanceId': ?instanceId,
      'integrationType': ?integrationType,
      'param': ?param,
    };
  }

  factory IntegrationExporterState.fromMap(Map<String, dynamic> map) {
    return IntegrationExporterState(
      clusterId: (() { final guardedValue = map['clusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      integrationType: (() { final guardedValue = map['integrationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      param: (() { final guardedValue = map['param']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

