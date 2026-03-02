// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_blob_storage_sink_connector_service_info.dart';
import 'connector_info_base.dart';
import 'kafka_azure_blob_storage_sink_connector_info.dart';

/// {@template pulumi_confluent_connector_args_doc}
/// The set of arguments for Connector.
/// {@endtemplate}
/// {@macro pulumi_confluent_connector_args_doc}
class ConnectorArgs {
  /// Confluent kafka or schema registry cluster id
  final pulumi.Input<String> clusterId;
  /// Connector Info Base
  final pulumi.Input<ConnectorInfoBase>? connectorBasicInfo;
  /// Confluent connector name
  final pulumi.Input<String>? connectorName;
  /// Connector Service type info base properties.
  final pulumi.Input<AzureBlobStorageSinkConnectorServiceInfo>? connectorServiceTypeInfo;
  /// Confluent environment id
  final pulumi.Input<String> environmentId;
  /// Organization resource name
  final pulumi.Input<String> organizationName;
  /// The connection information consumed by applications.
  final pulumi.Input<KafkaAzureBlobStorageSinkConnectorInfo>? partnerConnectorInfo;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ConnectorArgs].
  /// [clusterId] Confluent kafka or schema registry cluster id
  /// [connectorBasicInfo] Connector Info Base
  /// [connectorName] Confluent connector name
  /// [connectorServiceTypeInfo] Connector Service type info base properties.
  /// [environmentId] Confluent environment id
  /// [organizationName] Organization resource name
  /// [partnerConnectorInfo] The connection information consumed by applications.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ConnectorArgs({
    required this.clusterId,
    this.connectorBasicInfo,
    this.connectorName,
    this.connectorServiceTypeInfo,
    required this.environmentId,
    required this.organizationName,
    this.partnerConnectorInfo,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'connectorBasicInfo': ?pulumi.Input.mapOptionalInputValue<ConnectorInfoBase, Map<String, dynamic>>(connectorBasicInfo, (value) => value.toMap()),
      'connectorName': ?connectorName,
      'connectorServiceTypeInfo': ?pulumi.Input.mapOptionalInputValue<AzureBlobStorageSinkConnectorServiceInfo, Map<String, dynamic>>(connectorServiceTypeInfo, (value) => value.toMap()),
      'environmentId': environmentId,
      'organizationName': organizationName,
      'partnerConnectorInfo': ?pulumi.Input.mapOptionalInputValue<KafkaAzureBlobStorageSinkConnectorInfo, Map<String, dynamic>>(partnerConnectorInfo, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ConnectorArgs.fromMap(Map<String, dynamic> map) {
    return ConnectorArgs(
      clusterId: (map['clusterId'] as String).input(),
      connectorBasicInfo: map['connectorBasicInfo'] == null ? null : (ConnectorInfoBase.fromMap((map['connectorBasicInfo']! as Map).cast<String, dynamic>())).input(),
      connectorName: map['connectorName'] == null ? null : (map['connectorName']! as String).input(),
      connectorServiceTypeInfo: map['connectorServiceTypeInfo'] == null ? null : (AzureBlobStorageSinkConnectorServiceInfo.fromMap((map['connectorServiceTypeInfo']! as Map).cast<String, dynamic>())).input(),
      environmentId: (map['environmentId'] as String).input(),
      organizationName: (map['organizationName'] as String).input(),
      partnerConnectorInfo: map['partnerConnectorInfo'] == null ? null : (KafkaAzureBlobStorageSinkConnectorInfo.fromMap((map['partnerConnectorInfo']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

