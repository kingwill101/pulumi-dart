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
    pulumi.Output<ComputeResource>? computeResource,
    required pulumi.Output<String> deviceName,
    required pulumi.Output<String> hostPlatform,
    required pulumi.Output<IoTDeviceInfo> ioTDeviceDetails,
    pulumi.Output<IoTEdgeAgentInfo>? ioTEdgeAgentInfo,
    required pulumi.Output<IoTDeviceInfo> ioTEdgeDeviceDetails,
    required pulumi.Output<String> kind,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> roleStatus,
    pulumi.Output<List<MountPointMap>>? shareMappings,
  }) :
      computeResource = pulumi.Input.asOptionalInput<ComputeResource>(computeResource),
      deviceName = pulumi.Input.asInput<String>(deviceName),
      hostPlatform = pulumi.Input.asInput<String>(hostPlatform),
      ioTDeviceDetails = pulumi.Input.asInput<IoTDeviceInfo>(ioTDeviceDetails),
      ioTEdgeAgentInfo = pulumi.Input.asOptionalInput<IoTEdgeAgentInfo>(ioTEdgeAgentInfo),
      ioTEdgeDeviceDetails = pulumi.Input.asInput<IoTDeviceInfo>(ioTEdgeDeviceDetails),
      kind = pulumi.Input.asInput<String>(kind),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      roleStatus = pulumi.Input.asInput<String>(roleStatus),
      shareMappings = pulumi.Input.asOptionalInput<List<MountPointMap>>(shareMappings);

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
      computeResource: map['computeResource'] == null ? null : pulumi.Output.create<ComputeResource>(ComputeResource.fromMap((map['computeResource'] as Map).cast<String, dynamic>())),
      deviceName: pulumi.Output.create<String>(map['deviceName'] as String),
      hostPlatform: pulumi.Output.create<String>(map['hostPlatform'] as String),
      ioTDeviceDetails: pulumi.Output.create<IoTDeviceInfo>(IoTDeviceInfo.fromMap((map['ioTDeviceDetails'] as Map).cast<String, dynamic>())),
      ioTEdgeAgentInfo: map['ioTEdgeAgentInfo'] == null ? null : pulumi.Output.create<IoTEdgeAgentInfo>(IoTEdgeAgentInfo.fromMap((map['ioTEdgeAgentInfo'] as Map).cast<String, dynamic>())),
      ioTEdgeDeviceDetails: pulumi.Output.create<IoTDeviceInfo>(IoTDeviceInfo.fromMap((map['ioTEdgeDeviceDetails'] as Map).cast<String, dynamic>())),
      kind: pulumi.Output.create<String>(map['kind'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      roleStatus: pulumi.Output.create<String>(map['roleStatus'] as String),
      shareMappings: map['shareMappings'] == null ? null : pulumi.Output.create<List<MountPointMap>>(pulumi.Input.decodeList<MountPointMap>(map['shareMappings'], (value) => MountPointMap.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

