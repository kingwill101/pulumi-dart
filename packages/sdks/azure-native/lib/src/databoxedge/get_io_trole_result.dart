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
  final String azureApiVersion;
  /// Resource allocation
  final ComputeResourceResponse? computeResource;
  /// Host OS supported by the IoT role.
  final String hostPlatform;
  /// Platform where the Iot runtime is hosted.
  final String hostPlatformType;
  /// The path ID that uniquely identifies the object.
  final String id;
  /// IoT device metadata to which data box edge device needs to be connected.
  final IoTDeviceInfoResponse ioTDeviceDetails;
  /// Iot edge agent details to download the agent and bootstrap iot runtime.
  final IoTEdgeAgentInfoResponse? ioTEdgeAgentInfo;
  /// IoT edge device to which the IoT role needs to be configured.
  final IoTDeviceInfoResponse ioTEdgeDeviceDetails;
  /// Role type.
  /// Expected value is 'IOT'.
  final String kind;
  /// The object name.
  final String name;
  /// Role status.
  final String roleStatus;
  /// Mount points of shares in role(s).
  final List<MountPointMapResponse>? shareMappings;
  /// Metadata pertaining to creation and last modification of Role
  final SystemDataResponse systemData;
  /// The hierarchical type of the object.
  final String type;

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
  GetIoTRoleResult({
    required this.azureApiVersion,
    this.computeResource,
    required this.hostPlatform,
    required this.hostPlatformType,
    required this.id,
    required this.ioTDeviceDetails,
    this.ioTEdgeAgentInfo,
    required this.ioTEdgeDeviceDetails,
    required this.kind,
    required this.name,
    required this.roleStatus,
    this.shareMappings,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'computeResource': ?computeResource == null ? null : computeResource!.toMap(),
      'hostPlatform': hostPlatform,
      'hostPlatformType': hostPlatformType,
      'id': id,
      'ioTDeviceDetails': ioTDeviceDetails.toMap(),
      'ioTEdgeAgentInfo': ?ioTEdgeAgentInfo == null ? null : ioTEdgeAgentInfo!.toMap(),
      'ioTEdgeDeviceDetails': ioTEdgeDeviceDetails.toMap(),
      'kind': kind,
      'name': name,
      'roleStatus': roleStatus,
      'shareMappings': ?shareMappings == null ? null : pulumi.Input.encodeList<MountPointMapResponse, Map<String, dynamic>>(shareMappings!, (value) => value.toMap()),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetIoTRoleResult.fromMap(Map<String, dynamic> map) {
    return GetIoTRoleResult(
      azureApiVersion: map['azureApiVersion'] as String,
      computeResource: map['computeResource'] == null ? null : ComputeResourceResponse.fromMap((map['computeResource']! as Map).cast<String, dynamic>()),
      hostPlatform: map['hostPlatform'] as String,
      hostPlatformType: map['hostPlatformType'] as String,
      id: map['id'] as String,
      ioTDeviceDetails: IoTDeviceInfoResponse.fromMap((map['ioTDeviceDetails'] as Map).cast<String, dynamic>()),
      ioTEdgeAgentInfo: map['ioTEdgeAgentInfo'] == null ? null : IoTEdgeAgentInfoResponse.fromMap((map['ioTEdgeAgentInfo']! as Map).cast<String, dynamic>()),
      ioTEdgeDeviceDetails: IoTDeviceInfoResponse.fromMap((map['ioTEdgeDeviceDetails'] as Map).cast<String, dynamic>()),
      kind: map['kind'] as String,
      name: map['name'] as String,
      roleStatus: map['roleStatus'] as String,
      shareMappings: map['shareMappings'] == null ? null : pulumi.Input.decodeList<MountPointMapResponse>(map['shareMappings']!, (value) => MountPointMapResponse.fromMap((value as Map).cast<String, dynamic>())),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

