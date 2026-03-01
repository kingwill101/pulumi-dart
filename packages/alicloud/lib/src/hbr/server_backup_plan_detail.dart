// ignore_for_file: unused_element, unnecessary_cast


class ServerBackupPlanDetail {
  /// Whether to turn on application consistency. The application consistency snapshot backs up memory data and ongoing database transactions at the time of snapshot creation to ensure the consistency of application system data and database transactions. By applying consistent snapshots, there is no data damage or loss, so as to avoid log rollback during database startup and ensure that the application is in a consistent startup state. Valid values: `true`, `false`.
  final bool appConsistent;
  /// Only vaild when DoCopy is true. The destination region ID when replicating to another region. **Note:** Once you set a value of this property, you cannot set it to an empty string anymore.
  final String? destinationRegionId;
  /// Only vaild when DoCopy is true. The retention days of the destination backup. When not specified, the destination backup will be saved permanently. **Note:** Once you set a value of this property, you cannot set it to an empty string anymore.
  final int? destinationRetention;
  /// The list of cloud disks to be backed up in the ECS instance. When not specified, a snapshot is executed for all the disks on the ECS instance.
  final List<String>? diskIdLists;
  /// Whether replicate to another region. Valid values: `true`, `false`.
  final bool? doCopy;
  /// Only the Linux system is valid. Whether to use the Linux FsFreeze mechanism to ensure that the file system is read-only consistent before creating a storage snapshot. The default is True. Valid values: `true`, `false`.
  final bool? enableFsFreeze;
  /// Only vaild for the linux system when AppConsistent is true. The application thaw script path (e.g. /tmp/postscript.sh). The postscript.sh script must meet the following conditions: in terms of permissions, only the root user as the owner has read, write, and execute permissions, that is, 700 permissions. In terms of content, the script content needs to be customized according to the application itself. This indicates that this parameter must be set when creating an application consistency snapshot for a Linux instance. If the script is set incorrectly (for example, permissions, save path, or file name are set incorrectly), the resulting snapshot is a file system consistency snapshot.
  final String? postScriptPath;
  /// Only vaild for the linux system when AppConsistent is true. Apply the freeze script path (e.g. /tmp/prescript.sh). prescript.sh scripts must meet the following conditions: in terms of permissions, only root, as the owner, has read, write, and execute permissions, that is, 700 permissions. In terms of content, the script content needs to be customized according to the application itself. This indicates that this parameter must be set when creating an application consistency snapshot for a Linux instance. If the script is set incorrectly (for example, permissions, save path, or file name are set incorrectly), the resulting snapshot is a file system consistency snapshot.
  final String? preScriptPath;
  /// Whether to turn on file system consistency. If SnapshotGroup is true, when AppConsistent is true but the relevant conditions are not met or AppConsistent is false, the resulting snapshot will be a file system consistency snapshot. The file system consistency ensures that the file system memory and disk information are synchronized at the time of snapshot creation, and the file system write operation is frozen to make the file system in a consistent state. The file system consistency snapshot can prevent the operating system from performing disk inspection and repair operations such as CHKDSK or fsck after restart. Valid values: `true`, `false`.
  final bool snapshotGroup;
  /// Only the Linux system is valid, and the IO freeze timeout period. The default is 30 seconds.
  final int? timeoutInSeconds;

  /// Creates a new [ServerBackupPlanDetail].
  /// [appConsistent] Whether to turn on application consistency. The application consistency snapshot backs up memory data and ongoing database transactions at the time of snapshot creation to ensure the consistency of application system data and database transactions. By applying consistent snapshots, there is no data damage or loss, so as to avoid log rollback during database startup and ensure that the application is in a consistent startup state. Valid values: `true`, `false`.
  /// [destinationRegionId] Only vaild when DoCopy is true. The destination region ID when replicating to another region. **Note:** Once you set a value of this property, you cannot set it to an empty string anymore.
  /// [destinationRetention] Only vaild when DoCopy is true. The retention days of the destination backup. When not specified, the destination backup will be saved permanently. **Note:** Once you set a value of this property, you cannot set it to an empty string anymore.
  /// [diskIdLists] The list of cloud disks to be backed up in the ECS instance. When not specified, a snapshot is executed for all the disks on the ECS instance.
  /// [doCopy] Whether replicate to another region. Valid values: `true`, `false`.
  /// [enableFsFreeze] Only the Linux system is valid. Whether to use the Linux FsFreeze mechanism to ensure that the file system is read-only consistent before creating a storage snapshot. The default is True. Valid values: `true`, `false`.
  /// [postScriptPath] Only vaild for the linux system when AppConsistent is true. The application thaw script path (e.g. /tmp/postscript.sh). The postscript.sh script must meet the following conditions: in terms of permissions, only the root user as the owner has read, write, and execute permissions, that is, 700 permissions. In terms of content, the script content needs to be customized according to the application itself. This indicates that this parameter must be set when creating an application consistency snapshot for a Linux instance. If the script is set incorrectly (for example, permissions, save path, or file name are set incorrectly), the resulting snapshot is a file system consistency snapshot.
  /// [preScriptPath] Only vaild for the linux system when AppConsistent is true. Apply the freeze script path (e.g. /tmp/prescript.sh). prescript.sh scripts must meet the following conditions: in terms of permissions, only root, as the owner, has read, write, and execute permissions, that is, 700 permissions. In terms of content, the script content needs to be customized according to the application itself. This indicates that this parameter must be set when creating an application consistency snapshot for a Linux instance. If the script is set incorrectly (for example, permissions, save path, or file name are set incorrectly), the resulting snapshot is a file system consistency snapshot.
  /// [snapshotGroup] Whether to turn on file system consistency. If SnapshotGroup is true, when AppConsistent is true but the relevant conditions are not met or AppConsistent is false, the resulting snapshot will be a file system consistency snapshot. The file system consistency ensures that the file system memory and disk information are synchronized at the time of snapshot creation, and the file system write operation is frozen to make the file system in a consistent state. The file system consistency snapshot can prevent the operating system from performing disk inspection and repair operations such as CHKDSK or fsck after restart. Valid values: `true`, `false`.
  /// [timeoutInSeconds] Only the Linux system is valid, and the IO freeze timeout period. The default is 30 seconds.
  ServerBackupPlanDetail({
    required this.appConsistent,
    this.destinationRegionId,
    this.destinationRetention,
    this.diskIdLists,
    this.doCopy,
    this.enableFsFreeze,
    this.postScriptPath,
    this.preScriptPath,
    required this.snapshotGroup,
    this.timeoutInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appConsistent': appConsistent,
      'destinationRegionId': ?destinationRegionId,
      'destinationRetention': ?destinationRetention,
      'diskIdLists': ?diskIdLists,
      'doCopy': ?doCopy,
      'enableFsFreeze': ?enableFsFreeze,
      'postScriptPath': ?postScriptPath,
      'preScriptPath': ?preScriptPath,
      'snapshotGroup': snapshotGroup,
      'timeoutInSeconds': ?timeoutInSeconds,
    };
  }

  factory ServerBackupPlanDetail.fromMap(Map<String, dynamic> map) {
    return ServerBackupPlanDetail(
      appConsistent: map['appConsistent'] as bool,
      destinationRegionId: map['destinationRegionId'] == null ? null : map['destinationRegionId'] as String,
      destinationRetention: map['destinationRetention'] == null ? null : map['destinationRetention'] as int,
      diskIdLists: map['diskIdLists'] == null ? null : (map['diskIdLists'] as List).cast<String>(),
      doCopy: map['doCopy'] == null ? null : map['doCopy'] as bool,
      enableFsFreeze: map['enableFsFreeze'] == null ? null : map['enableFsFreeze'] as bool,
      postScriptPath: map['postScriptPath'] == null ? null : map['postScriptPath'] as String,
      preScriptPath: map['preScriptPath'] == null ? null : map['preScriptPath'] as String,
      snapshotGroup: map['snapshotGroup'] as bool,
      timeoutInSeconds: map['timeoutInSeconds'] == null ? null : map['timeoutInSeconds'] as int,
    );
  }
}

