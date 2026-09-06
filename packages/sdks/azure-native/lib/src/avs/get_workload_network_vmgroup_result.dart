// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getWorkloadNetworkVMGroup.
class GetWorkloadNetworkVMGroupResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Display name of the VM group.
  final String? displayName;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Virtual machine members of this group.
  final List<String>? members;
  /// The name of the resource
  final String? name;
  /// The provisioning state
  final String? provisioningState;
  /// NSX revision number.
  final double? revision;
  /// VM Group status.
  final String? status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
  const GetWorkloadNetworkVMGroupResult({
    this.azureApiVersion,
    this.displayName,
    this.id,
    this.members,
    this.name,
    this.provisioningState,
    this.revision,
    this.status,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'displayName': ?displayName,
      'id': ?id,
      'members': ?members,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'revision': ?revision,
      'status': ?status,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetWorkloadNetworkVMGroupResult.fromMap(Map<String, dynamic> map) {
    return GetWorkloadNetworkVMGroupResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      members: (() { final guardedValue = map['members']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      revision: (() { final guardedValue = map['revision']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
