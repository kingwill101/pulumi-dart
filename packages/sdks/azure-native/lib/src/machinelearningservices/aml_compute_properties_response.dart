// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_response_response.dart';
import 'node_state_counts_response.dart';
import 'resource_id_response.dart';
import 'scale_settings_response.dart';
import 'user_account_credentials_response.dart';
import 'virtual_machine_image_response.dart';

/// AML Compute properties
class AmlComputePropertiesResponse {
  /// Allocation state of the compute. Possible values are: steady - Indicates that the compute is not resizing. There are no changes to the number of compute nodes in the compute in progress. A compute enters this state when it is created and when no operations are being performed on the compute to change the number of compute nodes. resizing - Indicates that the compute is resizing; that is, compute nodes are being added to or removed from the compute.
  final pulumi.Input<String> allocationState;
  /// The time at which the compute entered its current allocation state.
  final pulumi.Input<String> allocationStateTransitionTime;
  /// The number of compute nodes currently assigned to the compute.
  final pulumi.Input<int> currentNodeCount;
  /// Enable or disable node public IP address provisioning. Possible values are: Possible values are: true - Indicates that the compute nodes will have public IPs provisioned. false - Indicates that the compute nodes will have a private endpoint and no public IPs.
  final pulumi.Input<bool>? enableNodePublicIp;
  /// Collection of errors encountered by various compute nodes during node setup.
  final pulumi.Input<List<ErrorResponseResponse>> errors;
  /// Network is isolated or not
  final pulumi.Input<bool>? isolatedNetwork;
  /// Counts of various node states on the compute.
  final pulumi.Input<NodeStateCountsResponse> nodeStateCounts;
  /// Compute OS Type
  final pulumi.Input<String>? osType;
  /// A property bag containing additional properties.
  final pulumi.Input<dynamic>? propertyBag;
  /// State of the public SSH port. Possible values are: Disabled - Indicates that the public ssh port is closed on all nodes of the cluster. Enabled - Indicates that the public ssh port is open on all nodes of the cluster. NotSpecified - Indicates that the public ssh port is closed on all nodes of the cluster if VNet is defined, else is open all public nodes. It can be default only during cluster creation time, after creation it will be either enabled or disabled.
  final pulumi.Input<String>? remoteLoginPortPublicAccess;
  /// Scale settings for AML Compute
  final pulumi.Input<ScaleSettingsResponse>? scaleSettings;
  /// Virtual network subnet resource ID the compute nodes belong to.
  final pulumi.Input<ResourceIdResponse>? subnet;
  /// The target number of compute nodes for the compute. If the allocationState is resizing, this property denotes the target node count for the ongoing resize operation. If the allocationState is steady, this property denotes the target node count for the previous resize operation.
  final pulumi.Input<int> targetNodeCount;
  /// Credentials for an administrator user account that will be created on each compute node.
  final pulumi.Input<UserAccountCredentialsResponse>? userAccountCredentials;
  /// Virtual Machine image for AML Compute - windows only
  final pulumi.Input<VirtualMachineImageResponse>? virtualMachineImage;
  /// Virtual Machine priority
  final pulumi.Input<String>? vmPriority;
  /// Virtual Machine Size
  final pulumi.Input<String>? vmSize;

  /// Creates a new [AmlComputePropertiesResponse].
  /// [allocationState] Allocation state of the compute. Possible values are: steady - Indicates that the compute is not resizing. There are no changes to the number of compute nodes in the compute in progress. A compute enters this state when it is created and when no operations are being performed on the compute to change the number of compute nodes. resizing - Indicates that the compute is resizing; that is, compute nodes are being added to or removed from the compute.
  /// [allocationStateTransitionTime] The time at which the compute entered its current allocation state.
  /// [currentNodeCount] The number of compute nodes currently assigned to the compute.
  /// [enableNodePublicIp] Enable or disable node public IP address provisioning. Possible values are: Possible values are: true - Indicates that the compute nodes will have public IPs provisioned. false - Indicates that the compute nodes will have a private endpoint and no public IPs.
  /// [errors] Collection of errors encountered by various compute nodes during node setup.
  /// [isolatedNetwork] Network is isolated or not
  /// [nodeStateCounts] Counts of various node states on the compute.
  /// [osType] Compute OS Type
  /// [propertyBag] A property bag containing additional properties.
  /// [remoteLoginPortPublicAccess] State of the public SSH port. Possible values are: Disabled - Indicates that the public ssh port is closed on all nodes of the cluster. Enabled - Indicates that the public ssh port is open on all nodes of the cluster. NotSpecified - Indicates that the public ssh port is closed on all nodes of the cluster if VNet is defined, else is open all public nodes. It can be default only during cluster creation time, after creation it will be either enabled or disabled.
  /// [scaleSettings] Scale settings for AML Compute
  /// [subnet] Virtual network subnet resource ID the compute nodes belong to.
  /// [targetNodeCount] The target number of compute nodes for the compute. If the allocationState is resizing, this property denotes the target node count for the ongoing resize operation. If the allocationState is steady, this property denotes the target node count for the previous resize operation.
  /// [userAccountCredentials] Credentials for an administrator user account that will be created on each compute node.
  /// [virtualMachineImage] Virtual Machine image for AML Compute - windows only
  /// [vmPriority] Virtual Machine priority
  /// [vmSize] Virtual Machine Size
  const AmlComputePropertiesResponse({
    required this.allocationState,
    required this.allocationStateTransitionTime,
    required this.currentNodeCount,
    this.enableNodePublicIp,
    required this.errors,
    this.isolatedNetwork,
    required this.nodeStateCounts,
    this.osType,
    this.propertyBag,
    this.remoteLoginPortPublicAccess,
    this.scaleSettings,
    this.subnet,
    required this.targetNodeCount,
    this.userAccountCredentials,
    this.virtualMachineImage,
    this.vmPriority,
    this.vmSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationState': allocationState,
      'allocationStateTransitionTime': allocationStateTransitionTime,
      'currentNodeCount': currentNodeCount,
      'enableNodePublicIp': ?enableNodePublicIp,
      'errors': pulumi.Input.mapInputValue<List<ErrorResponseResponse>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<ErrorResponseResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'isolatedNetwork': ?isolatedNetwork,
      'nodeStateCounts': pulumi.Input.mapInputValue<NodeStateCountsResponse, Map<String, dynamic>>(nodeStateCounts, (value) => value.toMap()),
      'osType': ?osType,
      'propertyBag': ?propertyBag,
      'remoteLoginPortPublicAccess': ?remoteLoginPortPublicAccess,
      'scaleSettings': ?pulumi.Input.mapOptionalInputValue<ScaleSettingsResponse, Map<String, dynamic>>(scaleSettings, (value) => value.toMap()),
      'subnet': ?pulumi.Input.mapOptionalInputValue<ResourceIdResponse, Map<String, dynamic>>(subnet, (value) => value.toMap()),
      'targetNodeCount': targetNodeCount,
      'userAccountCredentials': ?pulumi.Input.mapOptionalInputValue<UserAccountCredentialsResponse, Map<String, dynamic>>(userAccountCredentials, (value) => value.toMap()),
      'virtualMachineImage': ?pulumi.Input.mapOptionalInputValue<VirtualMachineImageResponse, Map<String, dynamic>>(virtualMachineImage, (value) => value.toMap()),
      'vmPriority': ?vmPriority,
      'vmSize': ?vmSize,
    };
  }

  factory AmlComputePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AmlComputePropertiesResponse(
      allocationState: pulumi.Input.fromValue(map['allocationState'] as String),
      allocationStateTransitionTime: pulumi.Input.fromValue(map['allocationStateTransitionTime'] as String),
      currentNodeCount: pulumi.Input.fromValue(map['currentNodeCount'] as int),
      enableNodePublicIp: (() { final guardedValue = map['enableNodePublicIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      errors: pulumi.Input.fromValue(pulumi.Input.decodeList<ErrorResponseResponse>(map['errors']!, (value) => ErrorResponseResponse.fromMap((value as Map).cast<String, dynamic>()))),
      isolatedNetwork: (() { final guardedValue = map['isolatedNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      nodeStateCounts: pulumi.Input.fromValue(NodeStateCountsResponse.fromMap((map['nodeStateCounts']! as Map).cast<String, dynamic>())),
      osType: (() { final guardedValue = map['osType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      propertyBag: (() { final guardedValue = map['propertyBag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      remoteLoginPortPublicAccess: (() { final guardedValue = map['remoteLoginPortPublicAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scaleSettings: (() { final guardedValue = map['scaleSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScaleSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceIdResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetNodeCount: pulumi.Input.fromValue(map['targetNodeCount'] as int),
      userAccountCredentials: (() { final guardedValue = map['userAccountCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserAccountCredentialsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      virtualMachineImage: (() { final guardedValue = map['virtualMachineImage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachineImageResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vmPriority: (() { final guardedValue = map['vmPriority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmSize: (() { final guardedValue = map['vmSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

