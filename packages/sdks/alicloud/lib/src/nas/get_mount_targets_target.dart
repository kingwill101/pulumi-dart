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
      accessGroupName: (map['accessGroupName'] as String).input(),
      id: (map['id'] as String).input(),
      mountTargetDomain: (map['mountTargetDomain'] as String).input(),
      networkType: (map['networkType'] as String).input(),
      status: (map['status'] as String).input(),
      type: (map['type'] as String).input(),
      vpcId: (map['vpcId'] as String).input(),
      vswitchId: (map['vswitchId'] as String).input(),
    );
  }
}

