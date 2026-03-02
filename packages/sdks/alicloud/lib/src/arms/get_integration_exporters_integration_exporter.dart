// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetIntegrationExportersIntegrationExporter {
  /// The ID of the Prometheus instance.
  final pulumi.Input<String> clusterId;
  /// Integration Exporter Type.
  final pulumi.Input<String> exporterType;
  /// The ID of the Integration Exporter. It formats as `<cluster_id>:<integration_type>:<instance_id>`.
  final pulumi.Input<String> id;
  /// The ID of the Integration Exporter instance.
  final pulumi.Input<int> instanceId;
  /// The name of the instance.
  final pulumi.Input<String> instanceName;
  /// The type of prometheus integration.
  final pulumi.Input<String> integrationType;
  /// Exporter configuration parameter json string.
  final pulumi.Input<String> param;
  /// Monitor the target address.
  final pulumi.Input<String> target;
  /// The version information.
  final pulumi.Input<String> version;

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
      clusterId: (map['clusterId'] as String).input(),
      exporterType: (map['exporterType'] as String).input(),
      id: (map['id'] as String).input(),
      instanceId: (map['instanceId'] as int).input(),
      instanceName: (map['instanceName'] as String).input(),
      integrationType: (map['integrationType'] as String).input(),
      param: (map['param'] as String).input(),
      target: (map['target'] as String).input(),
      version: (map['version'] as String).input(),
    );
  }
}

