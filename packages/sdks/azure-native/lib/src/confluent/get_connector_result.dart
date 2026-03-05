// ignore_for_file: unused_element, unnecessary_cast

import 'azure_blob_storage_sink_connector_service_info_response.dart';
import 'connector_info_base_response.dart';
import 'kafka_azure_blob_storage_sink_connector_info_response.dart';
import 'system_data_response.dart';

/// Result data returned by getConnector.
class GetConnectorResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Connector Info Base
  final ConnectorInfoBaseResponse? connectorBasicInfo;
  /// Connector Service type info base properties.
  final AzureBlobStorageSinkConnectorServiceInfoResponse? connectorServiceTypeInfo;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// The connection information consumed by applications.
  final KafkaAzureBlobStorageSinkConnectorInfoResponse? partnerConnectorInfo;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetConnectorResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [connectorBasicInfo] Connector Info Base
  /// [connectorServiceTypeInfo] Connector Service type info base properties.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [partnerConnectorInfo] The connection information consumed by applications.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetConnectorResult({
    required this.azureApiVersion,
    this.connectorBasicInfo,
    this.connectorServiceTypeInfo,
    required this.id,
    required this.name,
    this.partnerConnectorInfo,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'connectorBasicInfo': ?connectorBasicInfo?.toMap(),
      'connectorServiceTypeInfo': ?connectorServiceTypeInfo?.toMap(),
      'id': id,
      'name': name,
      'partnerConnectorInfo': ?partnerConnectorInfo?.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetConnectorResult.fromMap(Map<String, dynamic> map) {
    return GetConnectorResult(
      azureApiVersion: map['azureApiVersion'] as String,
      connectorBasicInfo: (() { final guardedValue = map['connectorBasicInfo']; if (guardedValue == null) return null; return ConnectorInfoBaseResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      connectorServiceTypeInfo: (() { final guardedValue = map['connectorServiceTypeInfo']; if (guardedValue == null) return null; return AzureBlobStorageSinkConnectorServiceInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      name: map['name'] as String,
      partnerConnectorInfo: (() { final guardedValue = map['partnerConnectorInfo']; if (guardedValue == null) return null; return KafkaAzureBlobStorageSinkConnectorInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

