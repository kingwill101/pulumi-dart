// ignore_for_file: unused_element, unnecessary_cast

class TaskOptions {
  /// A file metadata that shows the last time a file was accessed (that is when the file was read or written to). If set to `BEST_EFFORT`, the DataSync Task attempts to preserve the original (that is, the version before sync `PREPARING` phase) `atime` attribute on all source files. Valid values: `BEST_EFFORT`, `NONE`. Default: `BEST_EFFORT`.
  final String? atime;

  /// Limits the bandwidth utilized. For example, to set a maximum of 1 MB, set this value to `1048576`. Value values: `-1` or greater. Default: `-1` (unlimited).
  final int? bytesPerSecond;

  /// Group identifier of the file's owners. Valid values: `BOTH`, `INT_VALUE`, `NAME`, `NONE`. Default: `INT_VALUE` (preserve integer value of the ID).
  final String? gid;

  /// Determines the type of logs that DataSync publishes to a log stream in the Amazon CloudWatch log group that you provide. Valid values: `OFF`, `BASIC`, `TRANSFER`. Default: `OFF`.
  final String? logLevel;

  /// A file metadata that indicates the last time a file was modified (written to) before the sync `PREPARING` phase. Value values: `NONE`, `PRESERVE`. Default: `PRESERVE`.
  final String? mtime;

  /// Specifies whether object tags are maintained when transferring between object storage systems. If you want your DataSync task to ignore object tags, specify the NONE value. Valid values: `PRESERVE`, `NONE`. Default value: `PRESERVE`.
  final String? objectTags;

  /// Determines whether files at the destination should be overwritten or preserved when copying files. Valid values: `ALWAYS`, `NEVER`. Default: `ALWAYS`.
  final String? overwriteMode;

  /// Determines which users or groups can access a file for a specific purpose such as reading, writing, or execution of the file. Valid values: `NONE`, `PRESERVE`. Default: `PRESERVE`.
  final String? posixPermissions;

  /// Whether files deleted in the source should be removed or preserved in the destination file system. Valid values: `PRESERVE`, `REMOVE`. Default: `PRESERVE`.
  final String? preserveDeletedFiles;

  /// Whether the DataSync Task should preserve the metadata of block and character devices in the source files system, and recreate the files with that device name and metadata on the destination. The DataSync Task can’t sync the actual contents of such devices, because many of the devices are non-terminal and don’t return an end of file (EOF) marker. Valid values: `NONE`, `PRESERVE`. Default: `NONE` (ignore special devices).
  final String? preserveDevices;

  /// Determines which components of the SMB security descriptor are copied from source to destination objects. This value is only used for transfers between SMB and Amazon FSx for Windows File Server locations, or between two Amazon FSx for Windows File Server locations. Valid values: `NONE`, `OWNER_DACL`, `OWNER_DACL_SACL`. Default: `OWNER_DACL`.
  final String? securityDescriptorCopyFlags;

  /// Determines whether tasks should be queued before executing the tasks. Valid values: `ENABLED`, `DISABLED`. Default `ENABLED`.
  final String? taskQueueing;

  /// Determines whether DataSync transfers only the data and metadata that differ between the source and the destination location, or whether DataSync transfers all the content from the source, without comparing to the destination location. Valid values: `CHANGED`, `ALL`. Default: `CHANGED`
  final String? transferMode;

  /// User identifier of the file's owners. Valid values: `BOTH`, `INT_VALUE`, `NAME`, `NONE`. Default: `INT_VALUE` (preserve integer value of the ID).
  final String? uid;

  /// Whether a data integrity verification should be performed at the end of a task execution after all data and metadata have been transferred. Valid values: `NONE`, `POINT_IN_TIME_CONSISTENT`, `ONLY_FILES_TRANSFERRED`. Default: `POINT_IN_TIME_CONSISTENT`.
  final String? verifyMode;

  TaskOptions({
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
    final map = <String, dynamic>{};
    final atimeValue = atime;
    if (atimeValue != null) {
      map['atime'] = atimeValue;
    }
    final bytesPerSecondValue = bytesPerSecond;
    if (bytesPerSecondValue != null) {
      map['bytesPerSecond'] = bytesPerSecondValue;
    }
    final gidValue = gid;
    if (gidValue != null) {
      map['gid'] = gidValue;
    }
    final logLevelValue = logLevel;
    if (logLevelValue != null) {
      map['logLevel'] = logLevelValue;
    }
    final mtimeValue = mtime;
    if (mtimeValue != null) {
      map['mtime'] = mtimeValue;
    }
    final objectTagsValue = objectTags;
    if (objectTagsValue != null) {
      map['objectTags'] = objectTagsValue;
    }
    final overwriteModeValue = overwriteMode;
    if (overwriteModeValue != null) {
      map['overwriteMode'] = overwriteModeValue;
    }
    final posixPermissionsValue = posixPermissions;
    if (posixPermissionsValue != null) {
      map['posixPermissions'] = posixPermissionsValue;
    }
    final preserveDeletedFilesValue = preserveDeletedFiles;
    if (preserveDeletedFilesValue != null) {
      map['preserveDeletedFiles'] = preserveDeletedFilesValue;
    }
    final preserveDevicesValue = preserveDevices;
    if (preserveDevicesValue != null) {
      map['preserveDevices'] = preserveDevicesValue;
    }
    final securityDescriptorCopyFlagsValue = securityDescriptorCopyFlags;
    if (securityDescriptorCopyFlagsValue != null) {
      map['securityDescriptorCopyFlags'] = securityDescriptorCopyFlagsValue;
    }
    final taskQueueingValue = taskQueueing;
    if (taskQueueingValue != null) {
      map['taskQueueing'] = taskQueueingValue;
    }
    final transferModeValue = transferMode;
    if (transferModeValue != null) {
      map['transferMode'] = transferModeValue;
    }
    final uidValue = uid;
    if (uidValue != null) {
      map['uid'] = uidValue;
    }
    final verifyModeValue = verifyMode;
    if (verifyModeValue != null) {
      map['verifyMode'] = verifyModeValue;
    }
    return map;
  }

  factory TaskOptions.fromMap(Map<String, dynamic> map) {
    return TaskOptions(
      atime: map['atime'] == null ? null : map['atime'] as String,
      bytesPerSecond:
          map['bytesPerSecond'] == null ? null : map['bytesPerSecond'] as int,
      gid: map['gid'] == null ? null : map['gid'] as String,
      logLevel: map['logLevel'] == null ? null : map['logLevel'] as String,
      mtime: map['mtime'] == null ? null : map['mtime'] as String,
      objectTags:
          map['objectTags'] == null ? null : map['objectTags'] as String,
      overwriteMode:
          map['overwriteMode'] == null ? null : map['overwriteMode'] as String,
      posixPermissions: map['posixPermissions'] == null
          ? null
          : map['posixPermissions'] as String,
      preserveDeletedFiles: map['preserveDeletedFiles'] == null
          ? null
          : map['preserveDeletedFiles'] as String,
      preserveDevices: map['preserveDevices'] == null
          ? null
          : map['preserveDevices'] as String,
      securityDescriptorCopyFlags: map['securityDescriptorCopyFlags'] == null
          ? null
          : map['securityDescriptorCopyFlags'] as String,
      taskQueueing:
          map['taskQueueing'] == null ? null : map['taskQueueing'] as String,
      transferMode:
          map['transferMode'] == null ? null : map['transferMode'] as String,
      uid: map['uid'] == null ? null : map['uid'] as String,
      verifyMode:
          map['verifyMode'] == null ? null : map['verifyMode'] as String,
    );
  }
}
