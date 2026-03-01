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
    pulumi.Output<String>? accessGroupName,
    required pulumi.Output<String> fileSystemId,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? mountTargetDomain,
    pulumi.Output<String>? networkType,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
    pulumi.Output<String>? type,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vswitchId,
  }) :
      accessGroupName = pulumi.Input.asOptionalInput<String>(accessGroupName),
      fileSystemId = pulumi.Input.asInput<String>(fileSystemId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      mountTargetDomain = pulumi.Input.asOptionalInput<String>(mountTargetDomain),
      networkType = pulumi.Input.asOptionalInput<String>(networkType),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status),
      type = pulumi.Input.asOptionalInput<String>(type),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId);

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
      accessGroupName: map['accessGroupName'] == null ? null : pulumi.Output.create<String>(map['accessGroupName'] as String),
      fileSystemId: pulumi.Output.create<String>(map['fileSystemId'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      mountTargetDomain: map['mountTargetDomain'] == null ? null : pulumi.Output.create<String>(map['mountTargetDomain'] as String),
      networkType: map['networkType'] == null ? null : pulumi.Output.create<String>(map['networkType'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
    );
  }
}

