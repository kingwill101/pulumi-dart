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
    required pulumi.Output<String> clusterId,
    pulumi.Output<ConnectorInfoBase>? connectorBasicInfo,
    pulumi.Output<String>? connectorName,
    pulumi.Output<AzureBlobStorageSinkConnectorServiceInfo>? connectorServiceTypeInfo,
    required pulumi.Output<String> environmentId,
    required pulumi.Output<String> organizationName,
    pulumi.Output<KafkaAzureBlobStorageSinkConnectorInfo>? partnerConnectorInfo,
    required pulumi.Output<String> resourceGroupName,
  }) :
      clusterId = pulumi.Input.asInput<String>(clusterId),
      connectorBasicInfo = pulumi.Input.asOptionalInput<ConnectorInfoBase>(connectorBasicInfo),
      connectorName = pulumi.Input.asOptionalInput<String>(connectorName),
      connectorServiceTypeInfo = pulumi.Input.asOptionalInput<AzureBlobStorageSinkConnectorServiceInfo>(connectorServiceTypeInfo),
      environmentId = pulumi.Input.asInput<String>(environmentId),
      organizationName = pulumi.Input.asInput<String>(organizationName),
      partnerConnectorInfo = pulumi.Input.asOptionalInput<KafkaAzureBlobStorageSinkConnectorInfo>(partnerConnectorInfo),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      clusterId: pulumi.Output.create<String>(map['clusterId'] as String),
      connectorBasicInfo: map['connectorBasicInfo'] == null ? null : pulumi.Output.create<ConnectorInfoBase>(ConnectorInfoBase.fromMap((map['connectorBasicInfo'] as Map).cast<String, dynamic>())),
      connectorName: map['connectorName'] == null ? null : pulumi.Output.create<String>(map['connectorName'] as String),
      connectorServiceTypeInfo: map['connectorServiceTypeInfo'] == null ? null : pulumi.Output.create<AzureBlobStorageSinkConnectorServiceInfo>(AzureBlobStorageSinkConnectorServiceInfo.fromMap((map['connectorServiceTypeInfo'] as Map).cast<String, dynamic>())),
      environmentId: pulumi.Output.create<String>(map['environmentId'] as String),
      organizationName: pulumi.Output.create<String>(map['organizationName'] as String),
      partnerConnectorInfo: map['partnerConnectorInfo'] == null ? null : pulumi.Output.create<KafkaAzureBlobStorageSinkConnectorInfo>(KafkaAzureBlobStorageSinkConnectorInfo.fromMap((map['partnerConnectorInfo'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

