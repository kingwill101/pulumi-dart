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
  IntegrationExporterState({
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
      clusterId: map['clusterId'] == null ? null : (map['clusterId'] as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId'] as int).input(),
      integrationType: map['integrationType'] == null ? null : (map['integrationType'] as String).input(),
      param: map['param'] == null ? null : (map['param'] as String).input(),
    );
  }
}

