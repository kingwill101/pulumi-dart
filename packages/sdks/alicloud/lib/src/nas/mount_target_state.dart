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
    pulumi.Output<String>? accessGroupName,
    pulumi.Output<bool>? dualStack,
    pulumi.Output<String>? fileSystemId,
    pulumi.Output<String>? mountTargetDomain,
    pulumi.Output<String>? networkType,
    pulumi.Output<String>? securityGroupId,
    pulumi.Output<String>? status,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vswitchId,
  }) :
      accessGroupName = pulumi.Input.asOptionalInput<String>(accessGroupName),
      dualStack = pulumi.Input.asOptionalInput<bool>(dualStack),
      fileSystemId = pulumi.Input.asOptionalInput<String>(fileSystemId),
      mountTargetDomain = pulumi.Input.asOptionalInput<String>(mountTargetDomain),
      networkType = pulumi.Input.asOptionalInput<String>(networkType),
      securityGroupId = pulumi.Input.asOptionalInput<String>(securityGroupId),
      status = pulumi.Input.asOptionalInput<String>(status),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId);

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
      accessGroupName: map['accessGroupName'] == null ? null : pulumi.Output.create<String>(map['accessGroupName'] as String),
      dualStack: map['dualStack'] == null ? null : pulumi.Output.create<bool>(map['dualStack'] as bool),
      fileSystemId: map['fileSystemId'] == null ? null : pulumi.Output.create<String>(map['fileSystemId'] as String),
      mountTargetDomain: map['mountTargetDomain'] == null ? null : pulumi.Output.create<String>(map['mountTargetDomain'] as String),
      networkType: map['networkType'] == null ? null : pulumi.Output.create<String>(map['networkType'] as String),
      securityGroupId: map['securityGroupId'] == null ? null : pulumi.Output.create<String>(map['securityGroupId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
    );
  }
}

