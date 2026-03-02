// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_nas_get_mount_targets_get_mount_targets_args_doc}
/// Arguments for getMountTargets.
/// {@endtemplate}
/// {@macro pulumi_nas_get_mount_targets_get_mount_targets_args_doc}
class GetMountTargetsArgs {
  /// Filter results by a specific AccessGroupName.
  final pulumi.Input<String>? accessGroupName;
  /// The ID of the FileSystem that owns the MountTarget.
  final pulumi.Input<String> fileSystemId;
  /// A list of MountTargetDomain.
  final pulumi.Input<List<String>>? ids;
  /// Field `mount_target_domain` has been deprecated from provider version 1.53.0. New field `ids` replaces it.
  final pulumi.Input<String>? mountTargetDomain;
  /// Filter results by a specific NetworkType.
  final pulumi.Input<String>? networkType;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Filter results by the status of mount target. Valid values: `Active`, `Inactive` and `Pending`.
  final pulumi.Input<String>? status;
  /// Field `type` has been deprecated from provider version 1.95.0. New field `network_type` replaces it.
  final pulumi.Input<String>? type;
  /// Filter results by a specific VpcId.
  final pulumi.Input<String>? vpcId;
  /// Filter results by a specific VSwitchId.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [GetMountTargetsArgs].
  /// [accessGroupName] Filter results by a specific AccessGroupName.
  /// [fileSystemId] The ID of the FileSystem that owns the MountTarget.
  /// [ids] A list of MountTargetDomain.
  /// [mountTargetDomain] Field `mount_target_domain` has been deprecated from provider version 1.53.0. New field `ids` replaces it.
  /// [networkType] Filter results by a specific NetworkType.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] Filter results by the status of mount target. Valid values: `Active`, `Inactive` and `Pending`.
  /// [type] Field `type` has been deprecated from provider version 1.95.0. New field `network_type` replaces it.
  /// [vpcId] Filter results by a specific VpcId.
  /// [vswitchId] Filter results by a specific VSwitchId.
  GetMountTargetsArgs({
    this.accessGroupName,
    required this.fileSystemId,
    this.ids,
    this.mountTargetDomain,
    this.networkType,
    this.outputFile,
    this.status,
    this.type,
    this.vpcId,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessGroupName': ?accessGroupName,
      'fileSystemId': fileSystemId,
      'ids': ?ids,
      'mountTargetDomain': ?mountTargetDomain,
      'networkType': ?networkType,
      'outputFile': ?outputFile,
      'status': ?status,
      'type': ?type,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
    };
  }

  factory GetMountTargetsArgs.fromMap(Map<String, dynamic> map) {
    return GetMountTargetsArgs(
      accessGroupName: map['accessGroupName'] == null ? null : (map['accessGroupName'] as String).input(),
      fileSystemId: (map['fileSystemId'] as String).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      mountTargetDomain: map['mountTargetDomain'] == null ? null : (map['mountTargetDomain'] as String).input(),
      networkType: map['networkType'] == null ? null : (map['networkType'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId'] as String).input(),
    );
  }
}

