// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_detail_response.dart';
import 'operation_detail_response.dart';

/// Properties for device pool.
class DevicePoolPropertiesResponse {
  /// Unique, immutable resource id.
  final pulumi.Input<String> cloudId;
  /// Custom Location Name for the pool, default: &lt;DevicePoolName&gt;-CL
  final pulumi.Input<String>? customLocationName;
  /// Custom Location Resource Id for the pool
  final pulumi.Input<String> customLocationResourceId;
  /// List of machines in device pool.
  final pulumi.Input<List<DeviceDetailResponse>>? devices;
  /// Managed resource group name for the pool
  final pulumi.Input<String>? managedResourceGroup;
  /// operation status details for device pool.
  final pulumi.Input<List<OperationDetailResponse>> operationDetails;
  /// The provisioning state of a resource.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [DevicePoolPropertiesResponse].
  /// [cloudId] Unique, immutable resource id.
  /// [customLocationName] Custom Location Name for the pool, default: &lt;DevicePoolName&gt;-CL
  /// [customLocationResourceId] Custom Location Resource Id for the pool
  /// [devices] List of machines in device pool.
  /// [managedResourceGroup] Managed resource group name for the pool
  /// [operationDetails] operation status details for device pool.
  /// [provisioningState] The provisioning state of a resource.
  const DevicePoolPropertiesResponse({
    required this.cloudId,
    this.customLocationName,
    required this.customLocationResourceId,
    this.devices,
    this.managedResourceGroup,
    required this.operationDetails,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudId': cloudId,
      'customLocationName': ?customLocationName,
      'customLocationResourceId': customLocationResourceId,
      'devices': ?pulumi.Input.mapOptionalInputValue<List<DeviceDetailResponse>, List<Map<String, dynamic>>>(devices, (value) => pulumi.Input.encodeList<DeviceDetailResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'managedResourceGroup': ?managedResourceGroup,
      'operationDetails': pulumi.Input.mapInputValue<List<OperationDetailResponse>, List<Map<String, dynamic>>>(operationDetails, (value) => pulumi.Input.encodeList<OperationDetailResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': provisioningState,
    };
  }

  factory DevicePoolPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DevicePoolPropertiesResponse(
      cloudId: pulumi.Input.fromValue(map['cloudId'] as String),
      customLocationName: (() { final guardedValue = map['customLocationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customLocationResourceId: pulumi.Input.fromValue(map['customLocationResourceId'] as String),
      devices: (() { final guardedValue = map['devices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeviceDetailResponse>(guardedValue, (value) => DeviceDetailResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      managedResourceGroup: (() { final guardedValue = map['managedResourceGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operationDetails: pulumi.Input.fromValue(pulumi.Input.decodeList<OperationDetailResponse>(map['operationDetails']!, (value) => OperationDetailResponse.fromMap((value as Map).cast<String, dynamic>()))),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}
