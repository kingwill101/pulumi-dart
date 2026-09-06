// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getManagedPrivateEndpoint.
class GetManagedPrivateEndpointResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The groupId in which the managed private endpoint is created.
  final String? groupId;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The name of the resource
  final String? name;
  /// The ARM resource ID of the resource for which the managed private endpoint is created.
  final String? privateLinkResourceId;
  /// The region of the resource to which the managed private endpoint is created.
  final String? privateLinkResourceRegion;
  /// The provisioned state of the resource.
  final String? provisioningState;
  /// The user request message.
  final String? requestMessage;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetManagedPrivateEndpointResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [groupId] The groupId in which the managed private endpoint is created.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [privateLinkResourceId] The ARM resource ID of the resource for which the managed private endpoint is created.
  /// [privateLinkResourceRegion] The region of the resource to which the managed private endpoint is created.
  /// [provisioningState] The provisioned state of the resource.
  /// [requestMessage] The user request message.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetManagedPrivateEndpointResult({
    this.azureApiVersion,
    this.groupId,
    this.id,
    this.name,
    this.privateLinkResourceId,
    this.privateLinkResourceRegion,
    this.provisioningState,
    this.requestMessage,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'groupId': ?groupId,
      'id': ?id,
      'name': ?name,
      'privateLinkResourceId': ?privateLinkResourceId,
      'privateLinkResourceRegion': ?privateLinkResourceRegion,
      'provisioningState': ?provisioningState,
      'requestMessage': ?requestMessage,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetManagedPrivateEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetManagedPrivateEndpointResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      groupId: (() { final guardedValue = map['groupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateLinkResourceId: (() { final guardedValue = map['privateLinkResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateLinkResourceRegion: (() { final guardedValue = map['privateLinkResourceRegion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      requestMessage: (() { final guardedValue = map['requestMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
