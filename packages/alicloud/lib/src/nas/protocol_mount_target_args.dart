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
    String? accessGroupName,
    String? description,
    bool? dryRun,
    required String fileSystemId,
    String? fsetId,
    String? path,
    required String protocolServiceId,
    String? vpcId,
    String? vswitchId,
    List<String>? vswitchIds,
  }) :
      accessGroupName = pulumi.Input.asOptionalInput<String>(accessGroupName),
      description = pulumi.Input.asOptionalInput<String>(description),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      fileSystemId = pulumi.Input.asInput<String>(fileSystemId),
      fsetId = pulumi.Input.asOptionalInput<String>(fsetId),
      path = pulumi.Input.asOptionalInput<String>(path),
      protocolServiceId = pulumi.Input.asInput<String>(protocolServiceId),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId),
      vswitchIds = pulumi.Input.asOptionalInput<List<String>>(vswitchIds);

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
      accessGroupName: map['accessGroupName'] == null ? null : map['accessGroupName'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      dryRun: map['dryRun'] == null ? null : map['dryRun'] as bool,
      fileSystemId: map['fileSystemId'] as String,
      fsetId: map['fsetId'] == null ? null : map['fsetId'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      protocolServiceId: map['protocolServiceId'] as String,
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
      vswitchId: map['vswitchId'] == null ? null : map['vswitchId'] as String,
      vswitchIds: map['vswitchIds'] == null ? null : (map['vswitchIds'] as List).cast<String>(),
    );
  }
}

