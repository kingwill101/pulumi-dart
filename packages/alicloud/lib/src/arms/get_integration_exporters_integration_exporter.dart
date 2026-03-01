// ignore_for_file: unused_element, unnecessary_cast


class GetIntegrationExportersIntegrationExporter {
  /// The ID of the Prometheus instance.
  final String clusterId;
  /// Integration Exporter Type.
  final String exporterType;
  /// The ID of the Integration Exporter. It formats as `<cluster_id>:<integration_type>:<instance_id>`.
  final String id;
  /// The ID of the Integration Exporter instance.
  final int instanceId;
  /// The name of the instance.
  final String instanceName;
  /// The type of prometheus integration.
  final String integrationType;
  /// Exporter configuration parameter json string.
  final String param;
  /// Monitor the target address.
  final String target;
  /// The version information.
  final String version;

  /// Creates a new [GetIntegrationExportersIntegrationExporter].
  /// [clusterId] The ID of the Prometheus instance.
  /// [exporterType] Integration Exporter Type.
  /// [id] The ID of the Integration Exporter. It formats as `<cluster_id>:<integration_type>:<instance_id>`.
  /// [instanceId] The ID of the Integration Exporter instance.
  /// [instanceName] The name of the instance.
  /// [integrationType] The type of prometheus integration.
  /// [param] Exporter configuration parameter json string.
  /// [target] Monitor the target address.
  /// [version] The version information.
  GetIntegrationExportersIntegrationExporter({
    required this.clusterId,
    required this.exporterType,
    required this.id,
    required this.instanceId,
    required this.instanceName,
    required this.integrationType,
    required this.param,
    required this.target,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'exporterType': exporterType,
      'id': id,
      'instanceId': instanceId,
      'instanceName': instanceName,
      'integrationType': integrationType,
      'param': param,
      'target': target,
      'version': version,
    };
  }

  factory GetIntegrationExportersIntegrationExporter.fromMap(Map<String, dynamic> map) {
    return GetIntegrationExportersIntegrationExporter(
      clusterId: map['clusterId'] as String,
      exporterType: map['exporterType'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as int,
      instanceName: map['instanceName'] as String,
      integrationType: map['integrationType'] as String,
      param: map['param'] as String,
      target: map['target'] as String,
      version: map['version'] as String,
    );
  }
}

