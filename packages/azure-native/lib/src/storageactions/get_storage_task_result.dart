// ignore_for_file: unused_element, unnecessary_cast

import 'managed_service_identity_response.dart';
import 'storage_task_action_response.dart';
import 'system_data_response.dart';

/// Result data returned by getStorageTask.
class GetStorageTaskResult {
  /// The storage task action that is executed
  final StorageTaskActionResponse action;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The creation date and time of the storage task in UTC.
  final String creationTimeInUtc;
  /// Text that describes the purpose of the storage task
  final String description;
  /// Storage Task is enabled when set to true and disabled when set to false
  final bool enabled;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The managed service identity of the resource.
  final ManagedServiceIdentityResponse identity;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Represents the provisioning state of the storage task.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Storage task version.
  final double taskVersion;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetStorageTaskResult].
  /// [action] The storage task action that is executed
  /// [azureApiVersion] The Azure API version of the resource.
  /// [creationTimeInUtc] The creation date and time of the storage task in UTC.
  /// [description] Text that describes the purpose of the storage task
  /// [enabled] Storage Task is enabled when set to true and disabled when set to false
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] The managed service identity of the resource.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] Represents the provisioning state of the storage task.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [taskVersion] Storage task version.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetStorageTaskResult({
    required this.action,
    required this.azureApiVersion,
    required this.creationTimeInUtc,
    required this.description,
    required this.enabled,
    required this.id,
    required this.identity,
    required this.location,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.taskVersion,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action.toMap(),
      'azureApiVersion': azureApiVersion,
      'creationTimeInUtc': creationTimeInUtc,
      'description': description,
      'enabled': enabled,
      'id': id,
      'identity': identity.toMap(),
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'taskVersion': taskVersion,
      'type': type,
    };
  }

  factory GetStorageTaskResult.fromMap(Map<String, dynamic> map) {
    return GetStorageTaskResult(
      action: StorageTaskActionResponse.fromMap((map['action'] as Map).cast<String, dynamic>()),
      azureApiVersion: map['azureApiVersion'] as String,
      creationTimeInUtc: map['creationTimeInUtc'] as String,
      description: map['description'] as String,
      enabled: map['enabled'] as bool,
      id: map['id'] as String,
      identity: ManagedServiceIdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      taskVersion: map['taskVersion'] as double,
      type: map['type'] as String,
    );
  }
}

