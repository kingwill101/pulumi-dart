// ignore_for_file: unused_element, unnecessary_cast

import 'io_tdevice_info_response.dart';
import 'system_data_response.dart';

/// Result data returned by getIoTAddon.
class GetIoTAddonResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Host OS supported by the IoT addon.
  final String? hostPlatform;
  /// Platform where the runtime is hosted.
  final String? hostPlatformType;
  /// The path ID that uniquely identifies the object.
  final String? id;
  /// IoT device metadata to which appliance needs to be connected.
  final IoTDeviceInfoResponse? ioTDeviceDetails;
  /// IoT edge device to which the IoT Addon needs to be configured.
  final IoTDeviceInfoResponse? ioTEdgeDeviceDetails;
  /// Addon type.
  /// Expected value is 'IotEdge'.
  final String? kind;
  /// The object name.
  final String? name;
  /// Addon Provisioning State
  final String? provisioningState;
  /// Metadata pertaining to creation and last modification of Addon
  final SystemDataResponse? systemData;
  /// The hierarchical type of the object.
  final String? type;
  /// Version of IoT running on the appliance.
  final String? version;

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
  const GetIoTAddonResult({
    this.azureApiVersion,
    this.hostPlatform,
    this.hostPlatformType,
    this.id,
    this.ioTDeviceDetails,
    this.ioTEdgeDeviceDetails,
    this.kind,
    this.name,
    this.provisioningState,
    this.systemData,
    this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'hostPlatform': ?hostPlatform,
      'hostPlatformType': ?hostPlatformType,
      'id': ?id,
      'ioTDeviceDetails': ?ioTDeviceDetails?.toMap(),
      'ioTEdgeDeviceDetails': ?ioTEdgeDeviceDetails?.toMap(),
      'kind': ?kind,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
      'version': ?version,
    };
  }

  factory GetIoTAddonResult.fromMap(Map<String, dynamic> map) {
    return GetIoTAddonResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostPlatform: (() { final guardedValue = map['hostPlatform']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostPlatformType: (() { final guardedValue = map['hostPlatformType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ioTDeviceDetails: (() { final guardedValue = map['ioTDeviceDetails']; if (guardedValue == null) return null; return IoTDeviceInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      ioTEdgeDeviceDetails: (() { final guardedValue = map['ioTEdgeDeviceDetails']; if (guardedValue == null) return null; return IoTDeviceInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
