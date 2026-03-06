// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_integration_exporters_integration_exporter.dart';

/// Result data returned by getIntegrationExporters.
class GetIntegrationExportersResult {
  /// The ID of the Prometheus instance.
  final String clusterId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  /// A list of Integration Exporters. Each element contains the following attributes:
  final List<GetIntegrationExportersIntegrationExporter> integrationExporters;
  /// The type of prometheus integration.
  final String integrationType;
  final String? outputFile;

  /// Creates a new [GetIntegrationExportersResult].
  /// [clusterId] The ID of the Prometheus instance.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [integrationExporters] A list of Integration Exporters. Each element contains the following attributes:
  /// [integrationType] The type of prometheus integration.
  /// [outputFile] Optional.
  const GetIntegrationExportersResult({
    required this.clusterId,
    required this.id,
    required this.ids,
    required this.integrationExporters,
    required this.integrationType,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'id': id,
      'ids': ids,
      'integrationExporters': pulumi.Input.encodeList<GetIntegrationExportersIntegrationExporter, Map<String, dynamic>>(integrationExporters, (value) => value.toMap()),
      'integrationType': integrationType,
      'outputFile': ?outputFile,
    };
  }

  factory GetIntegrationExportersResult.fromMap(Map<String, dynamic> map) {
    return GetIntegrationExportersResult(
      clusterId: map['clusterId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      integrationExporters: pulumi.Input.decodeList<GetIntegrationExportersIntegrationExporter>(map['integrationExporters']!, (value) => GetIntegrationExportersIntegrationExporter.fromMap((value as Map).cast<String, dynamic>())),
      integrationType: map['integrationType'] as String,
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

