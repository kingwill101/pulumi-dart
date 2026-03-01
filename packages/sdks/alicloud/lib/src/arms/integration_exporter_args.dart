// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_arms_integration_exporter_integration_exporter_args_doc}
/// The set of arguments for IntegrationExporter.
/// {@endtemplate}
/// {@macro pulumi_arms_integration_exporter_integration_exporter_args_doc}
class IntegrationExporterArgs {
  /// The ID of the Prometheus instance.
  final pulumi.Input<String> clusterId;
  /// The type of prometheus integration.
  final pulumi.Input<String> integrationType;
  /// Exporter configuration parameter json string.
  final pulumi.Input<String> param;

  /// Creates a new [IntegrationExporterArgs].
  /// [clusterId] The ID of the Prometheus instance.
  /// [integrationType] The type of prometheus integration.
  /// [param] Exporter configuration parameter json string.
  IntegrationExporterArgs({
    required pulumi.Output<String> clusterId,
    required pulumi.Output<String> integrationType,
    required pulumi.Output<String> param,
  }) :
      clusterId = pulumi.Input.asInput<String>(clusterId),
      integrationType = pulumi.Input.asInput<String>(integrationType),
      param = pulumi.Input.asInput<String>(param);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'integrationType': integrationType,
      'param': param,
    };
  }

  factory IntegrationExporterArgs.fromMap(Map<String, dynamic> map) {
    return IntegrationExporterArgs(
      clusterId: pulumi.Output.create<String>(map['clusterId'] as String),
      integrationType: pulumi.Output.create<String>(map['integrationType'] as String),
      param: pulumi.Output.create<String>(map['param'] as String),
    );
  }
}

