// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering MountTarget resources.
class MountTargetState {
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
  final pulumi.Input<String>? fileSystemId;
  /// The domain name of the Mount point.
  final pulumi.Input<String>? mountTargetDomain;
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

  /// Creates a new [MountTargetState].
  /// [accessGroupName] The name of the permission group.
  /// [dualStack] Whether to create an IPv6 mount point.
  /// [fileSystemId] The ID of the file system.
  /// [mountTargetDomain] The domain name of the Mount point.
  /// [networkType] Network type.
  /// [securityGroupId] The ID of the security group.
  /// [status] The current status of the Mount point, including Active and Inactive, can be used to mount the file system only when the status is Active.
  /// [vpcId] VPC ID.
  /// [vswitchId] The ID of the switch.
  MountTargetState({
    this.accessGroupName,
    this.dualStack,
    this.fileSystemId,
    this.mountTargetDomain,
    this.networkType,
    this.securityGroupId,
    this.status,
    this.vpcId,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessGroupName': ?accessGroupName,
      'dualStack': ?dualStack,
      'fileSystemId': ?fileSystemId,
      'mountTargetDomain': ?mountTargetDomain,
      'networkType': ?networkType,
      'securityGroupId': ?securityGroupId,
      'status': ?status,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
    };
  }

  factory MountTargetState.fromMap(Map<String, dynamic> map) {
    return MountTargetState(
      accessGroupName: map['accessGroupName'] == null ? null : (map['accessGroupName'] as String).input(),
      dualStack: map['dualStack'] == null ? null : (map['dualStack'] as bool).input(),
      fileSystemId: map['fileSystemId'] == null ? null : (map['fileSystemId'] as String).input(),
      mountTargetDomain: map['mountTargetDomain'] == null ? null : (map['mountTargetDomain'] as String).input(),
      networkType: map['networkType'] == null ? null : (map['networkType'] as String).input(),
      securityGroupId: map['securityGroupId'] == null ? null : (map['securityGroupId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId'] as String).input(),
    );
  }
}

