// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ProtocolMountTarget resources.
class ProtocolMountTargetState {
  /// The permission group name.
  /// Default value: DEFAULT_VPC_GROUP_NAME
  final pulumi.Input<String>? accessGroupName;
  /// The creation time of the resource
  final pulumi.Input<String>? createTime;
  /// Description of the protocol service mount target. Display as the export directory name in the console.
  ///
  /// Limitations:
  /// - Length is 2~128 English or Chinese characters.
  /// - It must start with an uppercase or lowercase letter or a Chinese character. It cannot start with http:// or https.
  /// - Can contain numbers, colons (:), underscores (_), or dashes (-).
  final pulumi.Input<String>? description;
  final pulumi.Input<bool>? dryRun;
  /// Protocol Service Mount Target ID
  final pulumi.Input<String>? exportId;
  /// The ID of the file system.
  final pulumi.Input<String>? fileSystemId;
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
  final pulumi.Input<String>? protocolServiceId;
  /// Status
  final pulumi.Input<String>? status;
  /// The VPC ID of the protocol service mount point.
  final pulumi.Input<String>? vpcId;
  /// The vSwitch ID of the protocol service mount target.
  final pulumi.Input<String>? vswitchId;
  /// The vSwitch IDs of the protocol service mount target.
  /// When the storage redundancy type of the file system is ZRS, if VpcId is set, the vSwitch ID of three different zones under the Vpc must be set in this field.
  final pulumi.Input<List<String>>? vswitchIds;

  /// Creates a new [ProtocolMountTargetState].
  /// [accessGroupName] The permission group name.
  /// [createTime] The creation time of the resource
  /// [description] Description of the protocol service mount target. Display as the export directory name in the console.
  /// [dryRun] Optional.
  /// [exportId] Protocol Service Mount Target ID
  /// [fileSystemId] The ID of the file system.
  /// [fsetId] The ID of the Fileset to be mounted.
  /// [path] The path of the CPFS directory to be mounted.
  /// [protocolServiceId] Protocol Service ID
  /// [status] Status
  /// [vpcId] The VPC ID of the protocol service mount point.
  /// [vswitchId] The vSwitch ID of the protocol service mount target.
  /// [vswitchIds] The vSwitch IDs of the protocol service mount target.
  ProtocolMountTargetState({
    this.accessGroupName,
    this.createTime,
    this.description,
    this.dryRun,
    this.exportId,
    this.fileSystemId,
    this.fsetId,
    this.path,
    this.protocolServiceId,
    this.status,
    this.vpcId,
    this.vswitchId,
    this.vswitchIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessGroupName': ?accessGroupName,
      'createTime': ?createTime,
      'description': ?description,
      'dryRun': ?dryRun,
      'exportId': ?exportId,
      'fileSystemId': ?fileSystemId,
      'fsetId': ?fsetId,
      'path': ?path,
      'protocolServiceId': ?protocolServiceId,
      'status': ?status,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
      'vswitchIds': ?vswitchIds,
    };
  }

  factory ProtocolMountTargetState.fromMap(Map<String, dynamic> map) {
    return ProtocolMountTargetState(
      accessGroupName: map['accessGroupName'] == null ? null : (map['accessGroupName']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      dryRun: map['dryRun'] == null ? null : (map['dryRun']! as bool).input(),
      exportId: map['exportId'] == null ? null : (map['exportId']! as String).input(),
      fileSystemId: map['fileSystemId'] == null ? null : (map['fileSystemId']! as String).input(),
      fsetId: map['fsetId'] == null ? null : (map['fsetId']! as String).input(),
      path: map['path'] == null ? null : (map['path']! as String).input(),
      protocolServiceId: map['protocolServiceId'] == null ? null : (map['protocolServiceId']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId']! as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId']! as String).input(),
      vswitchIds: map['vswitchIds'] == null ? null : ((map['vswitchIds']! as List).cast<String>()).input(),
    );
  }
}

