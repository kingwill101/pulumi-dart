// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_arms_get_integration_exporters_get_integration_exporters_args_doc}
/// Arguments for getIntegrationExporters.
/// {@endtemplate}
/// {@macro pulumi_arms_get_integration_exporters_get_integration_exporters_args_doc}
class GetIntegrationExportersArgs {
  /// The ID of the Prometheus instance.
  final pulumi.Input<String> clusterId;
  /// A list of Integration Exporter IDs.
  final pulumi.Input<List<String>>? ids;
  /// The type of prometheus integration.
  final pulumi.Input<String> integrationType;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetIntegrationExportersArgs].
  /// [clusterId] The ID of the Prometheus instance.
  /// [ids] A list of Integration Exporter IDs.
  /// [integrationType] The type of prometheus integration.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetIntegrationExportersArgs({
    required this.clusterId,
    this.ids,
    required this.integrationType,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'ids': ?ids,
      'integrationType': integrationType,
      'outputFile': ?outputFile,
    };
  }

  factory GetIntegrationExportersArgs.fromMap(Map<String, dynamic> map) {
    return GetIntegrationExportersArgs(
      clusterId: (map['clusterId'] as String).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      integrationType: (map['integrationType'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
    );
  }
}

