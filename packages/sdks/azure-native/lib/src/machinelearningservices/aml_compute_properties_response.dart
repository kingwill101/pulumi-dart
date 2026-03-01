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
  final String allocationState;
  /// The time at which the compute entered its current allocation state.
  final String allocationStateTransitionTime;
  /// The number of compute nodes currently assigned to the compute.
  final int currentNodeCount;
  /// Enable or disable node public IP address provisioning. Possible values are: Possible values are: true - Indicates that the compute nodes will have public IPs provisioned. false - Indicates that the compute nodes will have a private endpoint and no public IPs.
  final bool? enableNodePublicIp;
  /// Collection of errors encountered by various compute nodes during node setup.
  final List<ErrorResponseResponse> errors;
  /// Network is isolated or not
  final bool? isolatedNetwork;
  /// Counts of various node states on the compute.
  final NodeStateCountsResponse nodeStateCounts;
  /// Compute OS Type
  final String? osType;
  /// A property bag containing additional properties.
  final dynamic propertyBag;
  /// State of the public SSH port. Possible values are: Disabled - Indicates that the public ssh port is closed on all nodes of the cluster. Enabled - Indicates that the public ssh port is open on all nodes of the cluster. NotSpecified - Indicates that the public ssh port is closed on all nodes of the cluster if VNet is defined, else is open all public nodes. It can be default only during cluster creation time, after creation it will be either enabled or disabled.
  final String? remoteLoginPortPublicAccess;
  /// Scale settings for AML Compute
  final ScaleSettingsResponse? scaleSettings;
  /// Virtual network subnet resource ID the compute nodes belong to.
  final ResourceIdResponse? subnet;
  /// The target number of compute nodes for the compute. If the allocationState is resizing, this property denotes the target node count for the ongoing resize operation. If the allocationState is steady, this property denotes the target node count for the previous resize operation.
  final int targetNodeCount;
  /// Credentials for an administrator user account that will be created on each compute node.
  final UserAccountCredentialsResponse? userAccountCredentials;
  /// Virtual Machine image for AML Compute - windows only
  final VirtualMachineImageResponse? virtualMachineImage;
  /// Virtual Machine priority
  final String? vmPriority;
  /// Virtual Machine Size
  final String? vmSize;

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
  AmlComputePropertiesResponse({
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
      'errors': pulumi.Input.encodeList<ErrorResponseResponse, Map<String, dynamic>>(errors, (value) => value.toMap()),
      'isolatedNetwork': ?isolatedNetwork,
      'nodeStateCounts': nodeStateCounts.toMap(),
      'osType': ?osType,
      'propertyBag': ?propertyBag,
      'remoteLoginPortPublicAccess': ?remoteLoginPortPublicAccess,
      'scaleSettings': ?scaleSettings == null ? null : scaleSettings!.toMap(),
      'subnet': ?subnet == null ? null : subnet!.toMap(),
      'targetNodeCount': targetNodeCount,
      'userAccountCredentials': ?userAccountCredentials == null ? null : userAccountCredentials!.toMap(),
      'virtualMachineImage': ?virtualMachineImage == null ? null : virtualMachineImage!.toMap(),
      'vmPriority': ?vmPriority,
      'vmSize': ?vmSize,
    };
  }

  factory AmlComputePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AmlComputePropertiesResponse(
      allocationState: map['allocationState'] as String,
      allocationStateTransitionTime: map['allocationStateTransitionTime'] as String,
      currentNodeCount: map['currentNodeCount'] as int,
      enableNodePublicIp: map['enableNodePublicIp'] == null ? null : map['enableNodePublicIp'] as bool,
      errors: pulumi.Input.decodeList<ErrorResponseResponse>(map['errors'], (value) => ErrorResponseResponse.fromMap((value as Map).cast<String, dynamic>())),
      isolatedNetwork: map['isolatedNetwork'] == null ? null : map['isolatedNetwork'] as bool,
      nodeStateCounts: NodeStateCountsResponse.fromMap((map['nodeStateCounts'] as Map).cast<String, dynamic>()),
      osType: map['osType'] == null ? null : map['osType'] as String,
      propertyBag: map['propertyBag'] == null ? null : map['propertyBag'],
      remoteLoginPortPublicAccess: map['remoteLoginPortPublicAccess'] == null ? null : map['remoteLoginPortPublicAccess'] as String,
      scaleSettings: map['scaleSettings'] == null ? null : ScaleSettingsResponse.fromMap((map['scaleSettings'] as Map).cast<String, dynamic>()),
      subnet: map['subnet'] == null ? null : ResourceIdResponse.fromMap((map['subnet'] as Map).cast<String, dynamic>()),
      targetNodeCount: map['targetNodeCount'] as int,
      userAccountCredentials: map['userAccountCredentials'] == null ? null : UserAccountCredentialsResponse.fromMap((map['userAccountCredentials'] as Map).cast<String, dynamic>()),
      virtualMachineImage: map['virtualMachineImage'] == null ? null : VirtualMachineImageResponse.fromMap((map['virtualMachineImage'] as Map).cast<String, dynamic>()),
      vmPriority: map['vmPriority'] == null ? null : map['vmPriority'] as String,
      vmSize: map['vmSize'] == null ? null : map['vmSize'] as String,
    );
  }
}

