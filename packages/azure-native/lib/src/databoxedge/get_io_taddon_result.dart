// ignore_for_file: unused_element, unnecessary_cast

import 'io_tdevice_info_response.dart';
import 'system_data_response.dart';

/// Result data returned by getIoTAddon.
class GetIoTAddonResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Host OS supported by the IoT addon.
  final String hostPlatform;
  /// Platform where the runtime is hosted.
  final String hostPlatformType;
  /// The path ID that uniquely identifies the object.
  final String id;
  /// IoT device metadata to which appliance needs to be connected.
  final IoTDeviceInfoResponse ioTDeviceDetails;
  /// IoT edge device to which the IoT Addon needs to be configured.
  final IoTDeviceInfoResponse ioTEdgeDeviceDetails;
  /// Addon type.
  /// Expected value is 'IotEdge'.
  final String kind;
  /// The object name.
  final String name;
  /// Addon Provisioning State
  final String provisioningState;
  /// Metadata pertaining to creation and last modification of Addon
  final SystemDataResponse systemData;
  /// The hierarchical type of the object.
  final String type;
  /// Version of IoT running on the appliance.
  final String version;

  /// Creates a new [GetIoTAddonResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [hostPlatform] Host OS supported by the IoT addon.
  /// [hostPlatformType] Platform where the runtime is hosted.
  /// [id] The path ID that uniquely identifies the object.
  /// [ioTDeviceDetails] IoT device metadata to which appliance needs to be connected.
  /// [ioTEdgeDeviceDetails] IoT edge device to which the IoT Addon needs to be configured.
  /// [kind] Addon type.
  /// [name] The object name.
  /// [provisioningState] Addon Provisioning State
  /// [systemData] Metadata pertaining to creation and last modification of Addon
  /// [type] The hierarchical type of the object.
  /// [version] Version of IoT running on the appliance.
  GetIoTAddonResult({
    required this.azureApiVersion,
    required this.hostPlatform,
    required this.hostPlatformType,
    required this.id,
    required this.ioTDeviceDetails,
    required this.ioTEdgeDeviceDetails,
    required this.kind,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    required this.type,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'hostPlatform': hostPlatform,
      'hostPlatformType': hostPlatformType,
      'id': id,
      'ioTDeviceDetails': ioTDeviceDetails.toMap(),
      'ioTEdgeDeviceDetails': ioTEdgeDeviceDetails.toMap(),
      'kind': kind,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'type': type,
      'version': version,
    };
  }

  factory GetIoTAddonResult.fromMap(Map<String, dynamic> map) {
    return GetIoTAddonResult(
      azureApiVersion: map['azureApiVersion'] as String,
      hostPlatform: map['hostPlatform'] as String,
      hostPlatformType: map['hostPlatformType'] as String,
      id: map['id'] as String,
      ioTDeviceDetails: IoTDeviceInfoResponse.fromMap((map['ioTDeviceDetails'] as Map).cast<String, dynamic>()),
      ioTEdgeDeviceDetails: IoTDeviceInfoResponse.fromMap((map['ioTEdgeDeviceDetails'] as Map).cast<String, dynamic>()),
      kind: map['kind'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      version: map['version'] as String,
    );
  }
}

