// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getDeviceGroup.
class GetDeviceGroupResult {
  /// Flag to define if the user allows for crash dump collection.
  final String? allowCrashDumpsCollection;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Description of the device group.
  final String? description;
  /// Deployment status for the device group.
  final bool hasDeployment;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// Operating system feed type of the device group.
  final String? osFeedType;
  /// The status of the last operation.
  final String provisioningState;
  /// Regional data boundary for the device group.
  final String? regionalDataBoundary;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Update policy of the device group.
  final String? updatePolicy;

  /// Creates a new [GetDeviceGroupResult].
  /// [allowCrashDumpsCollection] Flag to define if the user allows for crash dump collection.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] Description of the device group.
  /// [hasDeployment] Deployment status for the device group.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [osFeedType] Operating system feed type of the device group.
  /// [provisioningState] The status of the last operation.
  /// [regionalDataBoundary] Regional data boundary for the device group.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [updatePolicy] Update policy of the device group.
  GetDeviceGroupResult({
    this.allowCrashDumpsCollection,
    required this.azureApiVersion,
    this.description,
    required this.hasDeployment,
    required this.id,
    required this.name,
    this.osFeedType,
    required this.provisioningState,
    this.regionalDataBoundary,
    required this.systemData,
    required this.type,
    this.updatePolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowCrashDumpsCollection': ?allowCrashDumpsCollection,
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'hasDeployment': hasDeployment,
      'id': id,
      'name': name,
      'osFeedType': ?osFeedType,
      'provisioningState': provisioningState,
      'regionalDataBoundary': ?regionalDataBoundary,
      'systemData': systemData.toMap(),
      'type': type,
      'updatePolicy': ?updatePolicy,
    };
  }

  factory GetDeviceGroupResult.fromMap(Map<String, dynamic> map) {
    return GetDeviceGroupResult(
      allowCrashDumpsCollection: map['allowCrashDumpsCollection'] == null ? null : map['allowCrashDumpsCollection']! as String,
      azureApiVersion: map['azureApiVersion'] as String,
      description: map['description'] == null ? null : map['description']! as String,
      hasDeployment: map['hasDeployment'] as bool,
      id: map['id'] as String,
      name: map['name'] as String,
      osFeedType: map['osFeedType'] == null ? null : map['osFeedType']! as String,
      provisioningState: map['provisioningState'] as String,
      regionalDataBoundary: map['regionalDataBoundary'] == null ? null : map['regionalDataBoundary']! as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      updatePolicy: map['updatePolicy'] == null ? null : map['updatePolicy']! as String,
    );
  }
}

