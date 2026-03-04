// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getManagedPrivateEndpoint.
class GetManagedPrivateEndpointResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// The groupId in which the managed private endpoint is created.
  final String groupId;

  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;

  /// The name of the resource
  final String name;

  /// The ARM resource ID of the resource for which the managed private endpoint is created.
  final String privateLinkResourceId;

  /// The region of the resource to which the managed private endpoint is created.
  final String? privateLinkResourceRegion;

  /// The provisioned state of the resource.
  final String provisioningState;

  /// The user request message.
  final String? requestMessage;

  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

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
  GetManagedPrivateEndpointResult({
    required this.azureApiVersion,
    required this.groupId,
    required this.id,
    required this.name,
    required this.privateLinkResourceId,
    this.privateLinkResourceRegion,
    required this.provisioningState,
    this.requestMessage,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'groupId': groupId,
      'id': id,
      'name': name,
      'privateLinkResourceId': privateLinkResourceId,
      'privateLinkResourceRegion': ?privateLinkResourceRegion,
      'provisioningState': provisioningState,
      'requestMessage': ?requestMessage,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetManagedPrivateEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetManagedPrivateEndpointResult(
      azureApiVersion: map['azureApiVersion'] as String,
      groupId: map['groupId'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      privateLinkResourceId: map['privateLinkResourceId'] as String,
      privateLinkResourceRegion: (() {
        final guardedValue = map['privateLinkResourceRegion'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      provisioningState: map['provisioningState'] as String,
      requestMessage: (() {
        final guardedValue = map['requestMessage'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      type: map['type'] as String,
    );
  }
}
