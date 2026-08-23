// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';

/// An device group resource belonging to a product resource.
class DeviceGroupResponse {
  /// Flag to define if the user allows for crash dump collection.
  final pulumi.Input<String>? allowCrashDumpsCollection;
  /// Description of the device group.
  final pulumi.Input<String>? description;
  /// Deployment status for the device group.
  final pulumi.Input<bool> hasDeployment;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final pulumi.Input<String> id;
  /// The name of the resource
  final pulumi.Input<String> name;
  /// Operating system feed type of the device group.
  final pulumi.Input<String>? osFeedType;
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;
  /// Regional data boundary for the device group.
  final pulumi.Input<String>? regionalDataBoundary;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final pulumi.Input<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final pulumi.Input<String> type;
  /// Update policy of the device group.
  final pulumi.Input<String>? updatePolicy;

  /// Creates a new [DeviceGroupResponse].
  /// [allowCrashDumpsCollection] Flag to define if the user allows for crash dump collection.
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
  const DeviceGroupResponse({
    this.allowCrashDumpsCollection,
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
      'description': ?description,
      'hasDeployment': hasDeployment,
      'id': id,
      'name': name,
      'osFeedType': ?osFeedType,
      'provisioningState': provisioningState,
      'regionalDataBoundary': ?regionalDataBoundary,
      'systemData': pulumi.Input.mapInputValue<SystemDataResponse, Map<String, dynamic>>(systemData, (value) => value.toMap()),
      'type': type,
      'updatePolicy': ?updatePolicy,
    };
  }

  factory DeviceGroupResponse.fromMap(Map<String, dynamic> map) {
    return DeviceGroupResponse(
      allowCrashDumpsCollection: (() { final guardedValue = map['allowCrashDumpsCollection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hasDeployment: pulumi.Input.fromValue(map['hasDeployment'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      osFeedType: (() { final guardedValue = map['osFeedType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      regionalDataBoundary: (() { final guardedValue = map['regionalDataBoundary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      systemData: pulumi.Input.fromValue(SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>())),
      type: pulumi.Input.fromValue(map['type'] as String),
      updatePolicy: (() { final guardedValue = map['updatePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
