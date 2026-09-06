// ignore_for_file: unused_element, unnecessary_cast

import 'connector_info_base_response.dart';
import 'system_data_response.dart';

/// Result data returned by getConnector.
class GetConnectorResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Connector Info Base
  final ConnectorInfoBaseResponse? connectorBasicInfo;
  /// Connector Service type info base properties.
  final dynamic connectorServiceTypeInfo;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// The connection information consumed by applications.
  final dynamic partnerConnectorInfo;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetConnectorResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [connectorBasicInfo] Connector Info Base
  /// [connectorServiceTypeInfo] Connector Service type info base properties.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [partnerConnectorInfo] The connection information consumed by applications.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetConnectorResult({
    this.azureApiVersion,
    this.connectorBasicInfo,
    this.connectorServiceTypeInfo,
    this.id,
    this.name,
    this.partnerConnectorInfo,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'connectorBasicInfo': ?connectorBasicInfo?.toMap(),
      'connectorServiceTypeInfo': ?connectorServiceTypeInfo,
      'id': ?id,
      'name': ?name,
      'partnerConnectorInfo': ?partnerConnectorInfo,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetConnectorResult.fromMap(Map<String, dynamic> map) {
    return GetConnectorResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectorBasicInfo: (() { final guardedValue = map['connectorBasicInfo']; if (guardedValue == null) return null; return ConnectorInfoBaseResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      connectorServiceTypeInfo: (() { final guardedValue = map['connectorServiceTypeInfo']; if (guardedValue == null) return null; return guardedValue; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      partnerConnectorInfo: (() { final guardedValue = map['partnerConnectorInfo']; if (guardedValue == null) return null; return guardedValue; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
