// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getSharedPrivateLinkResource.
class GetSharedPrivateLinkResourceResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The DNS zone segment to be included in the DNS name of the shared private link. Value is required for Azure Data Explorer clusters and SQL managed instances, and must be omitted for SQL logical servers and key vaults. The value is the second segment of the host FQDN name of the resource that the shared private link resource is for. For example: if the host name is 'adx-cluster-21187695.eastus.kusto.windows.net', then the value is 'eastus'; if the host name is 'sql-mi-23961134.767d5869f605.database.windows.net', then the value is '767d5869f605'.
  final String? dnsZone;
  /// The group id from the provider of resource the shared private link resource is for.
  final String? groupId;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// The resource ID of the resource the shared private link resource is for.
  final String? privateLinkResourceId;
  /// The provisioning state of the resource.
  final String? provisioningState;
  /// The request message for requesting approval of the shared private link resource.
  final String? requestMessage;
  /// Status of the shared private link resource. Can be Pending, Approved, Rejected or Disconnected.
  final String? status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetSharedPrivateLinkResourceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dnsZone] The DNS zone segment to be included in the DNS name of the shared private link. Value is required for Azure Data Explorer clusters and SQL managed instances, and must be omitted for SQL logical servers and key vaults. The value is the second segment of the host FQDN name of the resource that the shared private link resource is for. For example: if the host name is 'adx-cluster-21187695.eastus.kusto.windows.net', then the value is 'eastus'; if the host name is 'sql-mi-23961134.767d5869f605.database.windows.net', then the value is '767d5869f605'.
  /// [groupId] The group id from the provider of resource the shared private link resource is for.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [privateLinkResourceId] The resource ID of the resource the shared private link resource is for.
  /// [provisioningState] The provisioning state of the resource.
  /// [requestMessage] The request message for requesting approval of the shared private link resource.
  /// [status] Status of the shared private link resource. Can be Pending, Approved, Rejected or Disconnected.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetSharedPrivateLinkResourceResult({
    this.azureApiVersion,
    this.dnsZone,
    this.groupId,
    this.id,
    this.name,
    this.privateLinkResourceId,
    this.provisioningState,
    this.requestMessage,
    this.status,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'dnsZone': ?dnsZone,
      'groupId': ?groupId,
      'id': ?id,
      'name': ?name,
      'privateLinkResourceId': ?privateLinkResourceId,
      'provisioningState': ?provisioningState,
      'requestMessage': ?requestMessage,
      'status': ?status,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetSharedPrivateLinkResourceResult.fromMap(Map<String, dynamic> map) {
    return GetSharedPrivateLinkResourceResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dnsZone: (() { final guardedValue = map['dnsZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      groupId: (() { final guardedValue = map['groupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateLinkResourceId: (() { final guardedValue = map['privateLinkResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      requestMessage: (() { final guardedValue = map['requestMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
