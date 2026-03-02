// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_resource.dart';
import 'io_tdevice_info.dart';
import 'io_tedge_agent_info.dart';
import 'mount_point_map.dart';

/// {@template pulumi_databoxedge_io_trole_args_doc}
/// The set of arguments for IoTRole.
/// {@endtemplate}
/// {@macro pulumi_databoxedge_io_trole_args_doc}
class IoTRoleArgs {
  /// Resource allocation
  final pulumi.Input<ComputeResource>? computeResource;
  /// The device name.
  final pulumi.Input<String> deviceName;
  /// Host OS supported by the IoT role.
  final pulumi.Input<String> hostPlatform;
  /// IoT device metadata to which data box edge device needs to be connected.
  final pulumi.Input<IoTDeviceInfo> ioTDeviceDetails;
  /// Iot edge agent details to download the agent and bootstrap iot runtime.
  final pulumi.Input<IoTEdgeAgentInfo>? ioTEdgeAgentInfo;
  /// IoT edge device to which the IoT role needs to be configured.
  final pulumi.Input<IoTDeviceInfo> ioTEdgeDeviceDetails;
  /// Role type.
  /// Expected value is 'IOT'.
  final pulumi.Input<String> kind;
  /// The role name.
  final pulumi.Input<String>? name;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// Role status.
  final pulumi.Input<String> roleStatus;
  /// Mount points of shares in role(s).
  final pulumi.Input<List<MountPointMap>>? shareMappings;

  /// Creates a new [IoTRoleArgs].
  /// [computeResource] Resource allocation
  /// [deviceName] The device name.
  /// [hostPlatform] Host OS supported by the IoT role.
  /// [ioTDeviceDetails] IoT device metadata to which data box edge device needs to be connected.
  /// [ioTEdgeAgentInfo] Iot edge agent details to download the agent and bootstrap iot runtime.
  /// [ioTEdgeDeviceDetails] IoT edge device to which the IoT role needs to be configured.
  /// [kind] Role type.
  /// [name] The role name.
  /// [resourceGroupName] The resource group name.
  /// [roleStatus] Role status.
  /// [shareMappings] Mount points of shares in role(s).
  IoTRoleArgs({
    this.computeResource,
    required this.deviceName,
    required this.hostPlatform,
    required this.ioTDeviceDetails,
    this.ioTEdgeAgentInfo,
    required this.ioTEdgeDeviceDetails,
    required this.kind,
    this.name,
    required this.resourceGroupName,
    required this.roleStatus,
    this.shareMappings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeResource': ?pulumi.Input.mapOptionalInputValue<ComputeResource, Map<String, dynamic>>(computeResource, (value) => value.toMap()),
      'deviceName': deviceName,
      'hostPlatform': hostPlatform,
      'ioTDeviceDetails': pulumi.Input.mapInputValue<IoTDeviceInfo, Map<String, dynamic>>(ioTDeviceDetails, (value) => value.toMap()),
      'ioTEdgeAgentInfo': ?pulumi.Input.mapOptionalInputValue<IoTEdgeAgentInfo, Map<String, dynamic>>(ioTEdgeAgentInfo, (value) => value.toMap()),
      'ioTEdgeDeviceDetails': pulumi.Input.mapInputValue<IoTDeviceInfo, Map<String, dynamic>>(ioTEdgeDeviceDetails, (value) => value.toMap()),
      'kind': kind,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'roleStatus': roleStatus,
      'shareMappings': ?pulumi.Input.mapOptionalInputValue<List<MountPointMap>, List<Map<String, dynamic>>>(shareMappings, (value) => pulumi.Input.encodeList<MountPointMap, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory IoTRoleArgs.fromMap(Map<String, dynamic> map) {
    return IoTRoleArgs(
      computeResource: map['computeResource'] == null ? null : (ComputeResource.fromMap((map['computeResource'] as Map).cast<String, dynamic>())).input(),
      deviceName: (map['deviceName'] as String).input(),
      hostPlatform: (map['hostPlatform'] as String).input(),
      ioTDeviceDetails: (IoTDeviceInfo.fromMap((map['ioTDeviceDetails'] as Map).cast<String, dynamic>())).input(),
      ioTEdgeAgentInfo: map['ioTEdgeAgentInfo'] == null ? null : (IoTEdgeAgentInfo.fromMap((map['ioTEdgeAgentInfo'] as Map).cast<String, dynamic>())).input(),
      ioTEdgeDeviceDetails: (IoTDeviceInfo.fromMap((map['ioTEdgeDeviceDetails'] as Map).cast<String, dynamic>())).input(),
      kind: (map['kind'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      roleStatus: (map['roleStatus'] as String).input(),
      shareMappings: map['shareMappings'] == null ? null : (pulumi.Input.decodeList<MountPointMap>(map['shareMappings'], (value) => MountPointMap.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

