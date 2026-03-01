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
    pulumi.Output<String>? clusterId,
    pulumi.Output<int>? instanceId,
    pulumi.Output<String>? integrationType,
    pulumi.Output<String>? param,
  }) :
      clusterId = pulumi.Input.asOptionalInput<String>(clusterId),
      instanceId = pulumi.Input.asOptionalInput<int>(instanceId),
      integrationType = pulumi.Input.asOptionalInput<String>(integrationType),
      param = pulumi.Input.asOptionalInput<String>(param);

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
      clusterId: map['clusterId'] == null ? null : pulumi.Output.create<String>(map['clusterId'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<int>(map['instanceId'] as int),
      integrationType: map['integrationType'] == null ? null : pulumi.Output.create<String>(map['integrationType'] as String),
      param: map['param'] == null ? null : pulumi.Output.create<String>(map['param'] as String),
    );
  }
}

