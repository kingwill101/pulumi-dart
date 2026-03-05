// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMountTargetsTarget {
  /// Filter results by a specific AccessGroupName.
  final pulumi.Input<String> accessGroupName;
  /// ID of the MountTargetDomain.
  final pulumi.Input<String> id;
  /// Field `mount_target_domain` has been deprecated from provider version 1.53.0. New field `ids` replaces it.
  final pulumi.Input<String> mountTargetDomain;
  /// Filter results by a specific NetworkType.
  final pulumi.Input<String> networkType;
  /// Filter results by the status of mount target. Valid values: `Active`, `Inactive` and `Pending`.
  final pulumi.Input<String> status;
  /// Field `type` has been deprecated from provider version 1.95.0. New field `network_type` replaces it.
  final pulumi.Input<String> type;
  /// Filter results by a specific VpcId.
  final pulumi.Input<String> vpcId;
  /// Filter results by a specific VSwitchId.
  final pulumi.Input<String> vswitchId;

  /// Creates a new [GetMountTargetsTarget].
  /// [accessGroupName] Filter results by a specific AccessGroupName.
  /// [id] ID of the MountTargetDomain.
  /// [mountTargetDomain] Field `mount_target_domain` has been deprecated from provider version 1.53.0. New field `ids` replaces it.
  /// [networkType] Filter results by a specific NetworkType.
  /// [status] Filter results by the status of mount target. Valid values: `Active`, `Inactive` and `Pending`.
  /// [type] Field `type` has been deprecated from provider version 1.95.0. New field `network_type` replaces it.
  /// [vpcId] Filter results by a specific VpcId.
  /// [vswitchId] Filter results by a specific VSwitchId.
  GetMountTargetsTarget({
    required this.accessGroupName,
    required this.id,
    required this.mountTargetDomain,
    required this.networkType,
    required this.status,
    required this.type,
    required this.vpcId,
    required this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessGroupName': accessGroupName,
      'id': id,
      'mountTargetDomain': mountTargetDomain,
      'networkType': networkType,
      'status': status,
      'type': type,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
    };
  }

  factory GetMountTargetsTarget.fromMap(Map<String, dynamic> map) {
    return GetMountTargetsTarget(
      accessGroupName: pulumi.Input.fromValue(map['accessGroupName'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      mountTargetDomain: pulumi.Input.fromValue(map['mountTargetDomain'] as String),
      networkType: pulumi.Input.fromValue(map['networkType'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
    );
  }
}

