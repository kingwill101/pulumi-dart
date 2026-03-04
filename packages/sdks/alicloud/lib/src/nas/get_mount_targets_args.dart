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
      accessGroupName: (() {
        final guardedValue = map['accessGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      fileSystemId: pulumi.Input.fromValue(map['fileSystemId'] as String),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      mountTargetDomain: (() {
        final guardedValue = map['mountTargetDomain'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkType: (() {
        final guardedValue = map['networkType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpcId: (() {
        final guardedValue = map['vpcId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vswitchId: (() {
        final guardedValue = map['vswitchId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
