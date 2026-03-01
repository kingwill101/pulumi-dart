// ignore_for_file: unused_element, unnecessary_cast


class GetMountTargetsTarget {
  /// Filter results by a specific AccessGroupName.
  final String accessGroupName;
  /// ID of the MountTargetDomain.
  final String id;
  /// Field `mount_target_domain` has been deprecated from provider version 1.53.0. New field `ids` replaces it.
  final String mountTargetDomain;
  /// Filter results by a specific NetworkType.
  final String networkType;
  /// Filter results by the status of mount target. Valid values: `Active`, `Inactive` and `Pending`.
  final String status;
  /// Field `type` has been deprecated from provider version 1.95.0. New field `network_type` replaces it.
  final String type;
  /// Filter results by a specific VpcId.
  final String vpcId;
  /// Filter results by a specific VSwitchId.
  final String vswitchId;

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
      accessGroupName: map['accessGroupName'] as String,
      id: map['id'] as String,
      mountTargetDomain: map['mountTargetDomain'] as String,
      networkType: map['networkType'] as String,
      status: map['status'] as String,
      type: map['type'] as String,
      vpcId: map['vpcId'] as String,
      vswitchId: map['vswitchId'] as String,
    );
  }
}

