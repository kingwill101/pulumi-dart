// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getCapacityPoolSnapshot.
class GetCapacityPoolSnapshotResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The creation date of the snapshot
  final String? created;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Resource location
  final String? location;
  /// The name of the resource
  final String? name;
  /// Azure lifecycle management
  final String? provisioningState;
  /// UUID v4 used to identify the Snapshot
  final String? snapshotId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetCapacityPoolSnapshotResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [created] The creation date of the snapshot
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] Resource location
  /// [name] The name of the resource
  /// [provisioningState] Azure lifecycle management
  /// [snapshotId] UUID v4 used to identify the Snapshot
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetCapacityPoolSnapshotResult({
    this.azureApiVersion,
    this.created,
    this.id,
    this.location,
    this.name,
    this.provisioningState,
    this.snapshotId,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'created': ?created,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'snapshotId': ?snapshotId,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetCapacityPoolSnapshotResult.fromMap(Map<String, dynamic> map) {
    return GetCapacityPoolSnapshotResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      snapshotId: (() { final guardedValue = map['snapshotId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
