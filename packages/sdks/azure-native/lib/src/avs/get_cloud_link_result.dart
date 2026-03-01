// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getCloudLink.
class GetCloudLinkResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Identifier of the other private cloud participating in the link.
  final String? linkedCloud;
  /// The name of the resource
  final String name;
  /// The provisioning state of the resource.
  final String provisioningState;
  /// The state of the cloud link.
  final String status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetCloudLinkResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [linkedCloud] Identifier of the other private cloud participating in the link.
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state of the resource.
  /// [status] The state of the cloud link.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetCloudLinkResult({
    required this.azureApiVersion,
    required this.id,
    this.linkedCloud,
    required this.name,
    required this.provisioningState,
    required this.status,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'linkedCloud': ?linkedCloud,
      'name': name,
      'provisioningState': provisioningState,
      'status': status,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetCloudLinkResult.fromMap(Map<String, dynamic> map) {
    return GetCloudLinkResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      linkedCloud: map['linkedCloud'] == null ? null : map['linkedCloud'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      status: map['status'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

