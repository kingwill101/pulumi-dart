// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_resource_response.dart';
import 'io_tdevice_info_response.dart';
import 'io_tedge_agent_info_response.dart';
import 'mount_point_map_response.dart';
import 'system_data_response.dart';

/// Result data returned by getIoTRole.
class GetIoTRoleResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Resource allocation
  final ComputeResourceResponse? computeResource;
  /// Host OS supported by the IoT role.
  final String? hostPlatform;
  /// Platform where the Iot runtime is hosted.
  final String? hostPlatformType;
  /// The path ID that uniquely identifies the object.
  final String? id;
  /// IoT device metadata to which data box edge device needs to be connected.
  final IoTDeviceInfoResponse? ioTDeviceDetails;
  /// Iot edge agent details to download the agent and bootstrap iot runtime.
  final IoTEdgeAgentInfoResponse? ioTEdgeAgentInfo;
  /// IoT edge device to which the IoT role needs to be configured.
  final IoTDeviceInfoResponse? ioTEdgeDeviceDetails;
  /// Role type.
  /// Expected value is 'IOT'.
  final String? kind;
  /// The object name.
  final String? name;
  /// Role status.
  final String? roleStatus;
  /// Mount points of shares in role(s).
  final List<MountPointMapResponse>? shareMappings;
  /// Metadata pertaining to creation and last modification of Role
  final SystemDataResponse? systemData;
  /// The hierarchical type of the object.
  final String? type;

  /// Creates a new [GetIoTRoleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [computeResource] Resource allocation
  /// [hostPlatform] Host OS supported by the IoT role.
  /// [hostPlatformType] Platform where the Iot runtime is hosted.
  /// [id] The path ID that uniquely identifies the object.
  /// [ioTDeviceDetails] IoT device metadata to which data box edge device needs to be connected.
  /// [ioTEdgeAgentInfo] Iot edge agent details to download the agent and bootstrap iot runtime.
  /// [ioTEdgeDeviceDetails] IoT edge device to which the IoT role needs to be configured.
  /// [kind] Role type.
  /// [name] The object name.
  /// [roleStatus] Role status.
  /// [shareMappings] Mount points of shares in role(s).
  /// [systemData] Metadata pertaining to creation and last modification of Role
  /// [type] The hierarchical type of the object.
  const GetIoTRoleResult({
    this.azureApiVersion,
    this.computeResource,
    this.hostPlatform,
    this.hostPlatformType,
    this.id,
    this.ioTDeviceDetails,
    this.ioTEdgeAgentInfo,
    this.ioTEdgeDeviceDetails,
    this.kind,
    this.name,
    this.roleStatus,
    this.shareMappings,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'computeResource': ?computeResource?.toMap(),
      'hostPlatform': ?hostPlatform,
      'hostPlatformType': ?hostPlatformType,
      'id': ?id,
      'ioTDeviceDetails': ?ioTDeviceDetails?.toMap(),
      'ioTEdgeAgentInfo': ?ioTEdgeAgentInfo?.toMap(),
      'ioTEdgeDeviceDetails': ?ioTEdgeDeviceDetails?.toMap(),
      'kind': ?kind,
      'name': ?name,
      'roleStatus': ?roleStatus,
      'shareMappings': ?(() { final guardedValue = shareMappings; if (guardedValue == null) return null; return pulumi.Input.encodeList<MountPointMapResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetIoTRoleResult.fromMap(Map<String, dynamic> map) {
    return GetIoTRoleResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      computeResource: (() { final guardedValue = map['computeResource']; if (guardedValue == null) return null; return ComputeResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      hostPlatform: (() { final guardedValue = map['hostPlatform']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostPlatformType: (() { final guardedValue = map['hostPlatformType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ioTDeviceDetails: (() { final guardedValue = map['ioTDeviceDetails']; if (guardedValue == null) return null; return IoTDeviceInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      ioTEdgeAgentInfo: (() { final guardedValue = map['ioTEdgeAgentInfo']; if (guardedValue == null) return null; return IoTEdgeAgentInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      ioTEdgeDeviceDetails: (() { final guardedValue = map['ioTEdgeDeviceDetails']; if (guardedValue == null) return null; return IoTDeviceInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      roleStatus: (() { final guardedValue = map['roleStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      shareMappings: (() { final guardedValue = map['shareMappings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<MountPointMapResponse>(guardedValue, (value) => MountPointMapResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
