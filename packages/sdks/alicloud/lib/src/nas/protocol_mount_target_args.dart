// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_nas_protocol_mount_target_protocol_mount_target_args_doc}
/// The set of arguments for ProtocolMountTarget.
/// {@endtemplate}
/// {@macro pulumi_nas_protocol_mount_target_protocol_mount_target_args_doc}
class ProtocolMountTargetArgs {
  /// The permission group name.
  /// Default value: DEFAULT_VPC_GROUP_NAME
  final pulumi.Input<String>? accessGroupName;
  /// Description of the protocol service mount target. Display as the export directory name in the console.
  ///
  /// Limitations:
  /// - Length is 2~128 English or Chinese characters.
  /// - It must start with an uppercase or lowercase letter or a Chinese character. It cannot start with http:// or https.
  /// - Can contain numbers, colons (:), underscores (_), or dashes (-).
  final pulumi.Input<String>? description;
  final pulumi.Input<bool>? dryRun;
  /// The ID of the file system.
  final pulumi.Input<String> fileSystemId;
  /// The ID of the Fileset to be mounted.
  ///
  /// Limitations:
  /// - The Fileset must already exist.
  /// - A Fileset allows only one export directory to be created.
  /// - Fileset and Path can and must specify only one.
  final pulumi.Input<String>? fsetId;
  /// The path of the CPFS directory to be mounted.
  ///
  /// Limitations:
  /// - The directory must be an existing directory on the CPFS.
  /// - Only one export is allowed for the same directory.
  /// - Fileset and Path can and must specify only one.
  ///
  /// Format:
  /// - 1~1024 characters in length.
  /// - Use UTF-8 encoding.
  /// - Must start and end with a forward slash (/) and root directory is/.
  final pulumi.Input<String>? path;
  /// Protocol Service ID
  final pulumi.Input<String> protocolServiceId;
  /// The VPC ID of the protocol service mount point.
  final pulumi.Input<String>? vpcId;
  /// The vSwitch ID of the protocol service mount target.
  final pulumi.Input<String>? vswitchId;
  /// The vSwitch IDs of the protocol service mount target.
  /// When the storage redundancy type of the file system is ZRS, if VpcId is set, the vSwitch ID of three different zones under the Vpc must be set in this field.
  final pulumi.Input<List<String>>? vswitchIds;

  /// Creates a new [ProtocolMountTargetArgs].
  /// [accessGroupName] The permission group name.
  /// [description] Description of the protocol service mount target. Display as the export directory name in the console.
  /// [dryRun] Optional.
  /// [fileSystemId] The ID of the file system.
  /// [fsetId] The ID of the Fileset to be mounted.
  /// [path] The path of the CPFS directory to be mounted.
  /// [protocolServiceId] Protocol Service ID
  /// [vpcId] The VPC ID of the protocol service mount point.
  /// [vswitchId] The vSwitch ID of the protocol service mount target.
  /// [vswitchIds] The vSwitch IDs of the protocol service mount target.
  ProtocolMountTargetArgs({
    this.accessGroupName,
    this.description,
    this.dryRun,
    required this.fileSystemId,
    this.fsetId,
    this.path,
    required this.protocolServiceId,
    this.vpcId,
    this.vswitchId,
    this.vswitchIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessGroupName': ?accessGroupName,
      'description': ?description,
      'dryRun': ?dryRun,
      'fileSystemId': fileSystemId,
      'fsetId': ?fsetId,
      'path': ?path,
      'protocolServiceId': protocolServiceId,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
      'vswitchIds': ?vswitchIds,
    };
  }

  factory ProtocolMountTargetArgs.fromMap(Map<String, dynamic> map) {
    return ProtocolMountTargetArgs(
      accessGroupName: (() { final guardedValue = map['accessGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dryRun: (() { final guardedValue = map['dryRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      fileSystemId: pulumi.Input.fromValue(map['fileSystemId'] as String),
      fsetId: (() { final guardedValue = map['fsetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocolServiceId: pulumi.Input.fromValue(map['protocolServiceId'] as String),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vswitchId: (() { final guardedValue = map['vswitchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vswitchIds: (() { final guardedValue = map['vswitchIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

