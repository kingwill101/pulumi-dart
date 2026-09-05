// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TaskOptions {
  /// A file metadata that shows the last time a file was accessed (that is when the file was read or written to). If set to `BEST_EFFORT`, the DataSync Task attempts to preserve the original (that is, the version before sync `PREPARING` phase) `atime` attribute on all source files. Valid values: `BEST_EFFORT`, `NONE`. Default: `BEST_EFFORT`.
  final pulumi.Input<String?>? atime;
  /// Limits the bandwidth utilized. For example, to set a maximum of 1 MB, set this value to `1048576`. Value values: `-1` or greater. Default: `-1` (unlimited).
  final pulumi.Input<int?>? bytesPerSecond;
  /// Group identifier of the file's owners. Valid values: `BOTH`, `INT_VALUE`, `NAME`, `NONE`. Default: `INT_VALUE` (preserve integer value of the ID).
  final pulumi.Input<String?>? gid;
  /// Determines the type of logs that DataSync publishes to a log stream in the Amazon CloudWatch log group that you provide. Valid values: `OFF`, `BASIC`, `TRANSFER`. Default: `OFF`.
  final pulumi.Input<String?>? logLevel;
  /// A file metadata that indicates the last time a file was modified (written to) before the sync `PREPARING` phase. Value values: `NONE`, `PRESERVE`. Default: `PRESERVE`.
  final pulumi.Input<String?>? mtime;
  /// Specifies whether object tags are maintained when transferring between object storage systems. If you want your DataSync task to ignore object tags, specify the NONE value. Valid values: `PRESERVE`, `NONE`. Default value: `PRESERVE`.
  final pulumi.Input<String?>? objectTags;
  /// Determines whether files at the destination should be overwritten or preserved when copying files. Valid values: `ALWAYS`, `NEVER`. Default: `ALWAYS`.
  final pulumi.Input<String?>? overwriteMode;
  /// Determines which users or groups can access a file for a specific purpose such as reading, writing, or execution of the file. Valid values: `NONE`, `PRESERVE`. Default: `PRESERVE`.
  final pulumi.Input<String?>? posixPermissions;
  /// Whether files deleted in the source should be removed or preserved in the destination file system. Valid values: `PRESERVE`, `REMOVE`. Default: `PRESERVE`.
  final pulumi.Input<String?>? preserveDeletedFiles;
  /// Whether the DataSync Task should preserve the metadata of block and character devices in the source files system, and recreate the files with that device name and metadata on the destination. The DataSync Task can’t sync the actual contents of such devices, because many of the devices are non-terminal and don’t return an end of file (EOF) marker. Valid values: `NONE`, `PRESERVE`. Default: `NONE` (ignore special devices).
  final pulumi.Input<String?>? preserveDevices;
  /// Determines which components of the SMB security descriptor are copied from source to destination objects. This value is only used for transfers between SMB and Amazon FSx for Windows File Server locations, or between two Amazon FSx for Windows File Server locations. Valid values: `NONE`, `OWNER_DACL`, `OWNER_DACL_SACL`. Default: `OWNER_DACL`.
  final pulumi.Input<String?>? securityDescriptorCopyFlags;
  /// Determines whether tasks should be queued before executing the tasks. Valid values: `ENABLED`, `DISABLED`. Default `ENABLED`.
  final pulumi.Input<String?>? taskQueueing;
  /// Determines whether DataSync transfers only the data and metadata that differ between the source and the destination location, or whether DataSync transfers all the content from the source, without comparing to the destination location. Valid values: `CHANGED`, `ALL`. Default: `CHANGED`
  final pulumi.Input<String?>? transferMode;
  /// User identifier of the file's owners. Valid values: `BOTH`, `INT_VALUE`, `NAME`, `NONE`. Default: `INT_VALUE` (preserve integer value of the ID).
  final pulumi.Input<String?>? uid;
  /// Whether a data integrity verification should be performed at the end of a task execution after all data and metadata have been transferred. Valid values: `NONE`, `POINT_IN_TIME_CONSISTENT`, `ONLY_FILES_TRANSFERRED`. Default: `POINT_IN_TIME_CONSISTENT`.
  final pulumi.Input<String?>? verifyMode;

  /// Creates a new [TaskOptions].
  /// [atime] A file metadata that shows the last time a file was accessed (that is when the file was read or written to). If set to `BEST_EFFORT`, the DataSync Task attempts to preserve the original (that is, the version before sync `PREPARING` phase) `atime` attribute on all source files. Valid values: `BEST_EFFORT`, `NONE`. Default: `BEST_EFFORT`.
  /// [bytesPerSecond] Limits the bandwidth utilized. For example, to set a maximum of 1 MB, set this value to `1048576`. Value values: `-1` or greater. Default: `-1` (unlimited).
  /// [gid] Group identifier of the file's owners. Valid values: `BOTH`, `INT_VALUE`, `NAME`, `NONE`. Default: `INT_VALUE` (preserve integer value of the ID).
  /// [logLevel] Determines the type of logs that DataSync publishes to a log stream in the Amazon CloudWatch log group that you provide. Valid values: `OFF`, `BASIC`, `TRANSFER`. Default: `OFF`.
  /// [mtime] A file metadata that indicates the last time a file was modified (written to) before the sync `PREPARING` phase. Value values: `NONE`, `PRESERVE`. Default: `PRESERVE`.
  /// [objectTags] Specifies whether object tags are maintained when transferring between object storage systems. If you want your DataSync task to ignore object tags, specify the NONE value. Valid values: `PRESERVE`, `NONE`. Default value: `PRESERVE`.
  /// [overwriteMode] Determines whether files at the destination should be overwritten or preserved when copying files. Valid values: `ALWAYS`, `NEVER`. Default: `ALWAYS`.
  /// [posixPermissions] Determines which users or groups can access a file for a specific purpose such as reading, writing, or execution of the file. Valid values: `NONE`, `PRESERVE`. Default: `PRESERVE`.
  /// [preserveDeletedFiles] Whether files deleted in the source should be removed or preserved in the destination file system. Valid values: `PRESERVE`, `REMOVE`. Default: `PRESERVE`.
  /// [preserveDevices] Whether the DataSync Task should preserve the metadata of block and character devices in the source files system, and recreate the files with that device name and metadata on the destination. The DataSync Task can’t sync the actual contents of such devices, because many of the devices are non-terminal and don’t return an end of file (EOF) marker. Valid values: `NONE`, `PRESERVE`. Default: `NONE` (ignore special devices).
  /// [securityDescriptorCopyFlags] Determines which components of the SMB security descriptor are copied from source to destination objects. This value is only used for transfers between SMB and Amazon FSx for Windows File Server locations, or between two Amazon FSx for Windows File Server locations. Valid values: `NONE`, `OWNER_DACL`, `OWNER_DACL_SACL`. Default: `OWNER_DACL`.
  /// [taskQueueing] Determines whether tasks should be queued before executing the tasks. Valid values: `ENABLED`, `DISABLED`. Default `ENABLED`.
  /// [transferMode] Determines whether DataSync transfers only the data and metadata that differ between the source and the destination location, or whether DataSync transfers all the content from the source, without comparing to the destination location. Valid values: `CHANGED`, `ALL`. Default: `CHANGED`
  /// [uid] User identifier of the file's owners. Valid values: `BOTH`, `INT_VALUE`, `NAME`, `NONE`. Default: `INT_VALUE` (preserve integer value of the ID).
  /// [verifyMode] Whether a data integrity verification should be performed at the end of a task execution after all data and metadata have been transferred. Valid values: `NONE`, `POINT_IN_TIME_CONSISTENT`, `ONLY_FILES_TRANSFERRED`. Default: `POINT_IN_TIME_CONSISTENT`.
  const TaskOptions({
    this.atime,
    this.bytesPerSecond,
    this.gid,
    this.logLevel,
    this.mtime,
    this.objectTags,
    this.overwriteMode,
    this.posixPermissions,
    this.preserveDeletedFiles,
    this.preserveDevices,
    this.securityDescriptorCopyFlags,
    this.taskQueueing,
    this.transferMode,
    this.uid,
    this.verifyMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'atime': ?atime,
      'bytesPerSecond': ?bytesPerSecond,
      'gid': ?gid,
      'logLevel': ?logLevel,
      'mtime': ?mtime,
      'objectTags': ?objectTags,
      'overwriteMode': ?overwriteMode,
      'posixPermissions': ?posixPermissions,
      'preserveDeletedFiles': ?preserveDeletedFiles,
      'preserveDevices': ?preserveDevices,
      'securityDescriptorCopyFlags': ?securityDescriptorCopyFlags,
      'taskQueueing': ?taskQueueing,
      'transferMode': ?transferMode,
      'uid': ?uid,
      'verifyMode': ?verifyMode,
    };
  }

  factory TaskOptions.fromMap(Map<String, dynamic> map) {
    return TaskOptions(
      atime: (() { final guardedValue = map['atime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bytesPerSecond: (() { final guardedValue = map['bytesPerSecond']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      gid: (() { final guardedValue = map['gid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logLevel: (() { final guardedValue = map['logLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mtime: (() { final guardedValue = map['mtime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectTags: (() { final guardedValue = map['objectTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      overwriteMode: (() { final guardedValue = map['overwriteMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      posixPermissions: (() { final guardedValue = map['posixPermissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preserveDeletedFiles: (() { final guardedValue = map['preserveDeletedFiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preserveDevices: (() { final guardedValue = map['preserveDevices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityDescriptorCopyFlags: (() { final guardedValue = map['securityDescriptorCopyFlags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taskQueueing: (() { final guardedValue = map['taskQueueing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transferMode: (() { final guardedValue = map['transferMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      verifyMode: (() { final guardedValue = map['verifyMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
