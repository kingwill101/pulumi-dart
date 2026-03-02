// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getWorkloadNetworkVMGroup.
class GetWorkloadNetworkVMGroupResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Display name of the VM group.
  final String? displayName;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Virtual machine members of this group.
  final List<String>? members;
  /// The name of the resource
  final String name;
  /// The provisioning state
  final String provisioningState;
  /// NSX revision number.
  final double? revision;
  /// VM Group status.
  final String status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetWorkloadNetworkVMGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [displayName] Display name of the VM group.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [members] Virtual machine members of this group.
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state
  /// [revision] NSX revision number.
  /// [status] VM Group status.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetWorkloadNetworkVMGroupResult({
    required this.azureApiVersion,
    this.displayName,
    required this.id,
    this.members,
    required this.name,
    required this.provisioningState,
    this.revision,
    required this.status,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'displayName': ?displayName,
      'id': id,
      'members': ?members,
      'name': name,
      'provisioningState': provisioningState,
      'revision': ?revision,
      'status': status,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetWorkloadNetworkVMGroupResult.fromMap(Map<String, dynamic> map) {
    return GetWorkloadNetworkVMGroupResult(
      azureApiVersion: map['azureApiVersion'] as String,
      displayName: map['displayName'] == null ? null : map['displayName']! as String,
      id: map['id'] as String,
      members: map['members'] == null ? null : (map['members']! as List).cast<String>(),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      revision: map['revision'] == null ? null : map['revision']! as double,
      status: map['status'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

