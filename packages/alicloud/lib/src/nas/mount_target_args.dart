// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_nas_mount_target_mount_target_args_doc}
/// The set of arguments for MountTarget.
/// {@endtemplate}
/// {@macro pulumi_nas_mount_target_mount_target_args_doc}
class MountTargetArgs {
  /// The name of the permission group.
  final pulumi.Input<String>? accessGroupName;
  /// Whether to create an IPv6 mount point.
  ///
  /// Value:
  /// - true: create
  /// - false (default): not created
  ///
  /// > **NOTE:**  currently, only extreme NAS supports IPv6 function in various regions in mainland China, and IPv6 function needs to be turned on for this file system.
  final pulumi.Input<bool>? dualStack;
  /// The ID of the file system.
  final pulumi.Input<String> fileSystemId;
  /// Network type.
  final pulumi.Input<String>? networkType;
  /// The ID of the security group.
  final pulumi.Input<String>? securityGroupId;
  /// The current status of the Mount point, including Active and Inactive, can be used to mount the file system only when the status is Active.
  final pulumi.Input<String>? status;
  /// VPC ID.
  final pulumi.Input<String>? vpcId;
  /// The ID of the switch.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [MountTargetArgs].
  /// [accessGroupName] The name of the permission group.
  /// [dualStack] Whether to create an IPv6 mount point.
  /// [fileSystemId] The ID of the file system.
  /// [networkType] Network type.
  /// [securityGroupId] The ID of the security group.
  /// [status] The current status of the Mount point, including Active and Inactive, can be used to mount the file system only when the status is Active.
  /// [vpcId] VPC ID.
  /// [vswitchId] The ID of the switch.
  MountTargetArgs({
    String? accessGroupName,
    bool? dualStack,
    required String fileSystemId,
    String? networkType,
    String? securityGroupId,
    String? status,
    String? vpcId,
    String? vswitchId,
  }) :
      accessGroupName = pulumi.Input.asOptionalInput<String>(accessGroupName),
      dualStack = pulumi.Input.asOptionalInput<bool>(dualStack),
      fileSystemId = pulumi.Input.asInput<String>(fileSystemId),
      networkType = pulumi.Input.asOptionalInput<String>(networkType),
      securityGroupId = pulumi.Input.asOptionalInput<String>(securityGroupId),
      status = pulumi.Input.asOptionalInput<String>(status),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessGroupName': ?accessGroupName,
      'dualStack': ?dualStack,
      'fileSystemId': fileSystemId,
      'networkType': ?networkType,
      'securityGroupId': ?securityGroupId,
      'status': ?status,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
    };
  }

  factory MountTargetArgs.fromMap(Map<String, dynamic> map) {
    return MountTargetArgs(
      accessGroupName: map['accessGroupName'] == null ? null : map['accessGroupName'] as String,
      dualStack: map['dualStack'] == null ? null : map['dualStack'] as bool,
      fileSystemId: map['fileSystemId'] as String,
      networkType: map['networkType'] == null ? null : map['networkType'] as String,
      securityGroupId: map['securityGroupId'] == null ? null : map['securityGroupId'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
      vswitchId: map['vswitchId'] == null ? null : map['vswitchId'] as String,
    );
  }
}

