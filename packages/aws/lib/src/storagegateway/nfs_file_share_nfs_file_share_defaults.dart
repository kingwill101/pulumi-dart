// ignore_for_file: unused_element, unnecessary_cast


class NfsFileShareNfsFileShareDefaults {
  /// The Unix directory mode in the string form "nnnn". Defaults to `"0777"`.
  final String? directoryMode;
  /// The Unix file mode in the string form "nnnn". Defaults to `"0666"`.
  final String? fileMode;
  /// The default group ID for the file share (unless the files have another group ID specified). Defaults to `65534` (`nfsnobody`). Valid values: `0` through `4294967294`.
  final String? groupId;
  /// The default owner ID for the file share (unless the files have another owner ID specified). Defaults to `65534` (`nfsnobody`). Valid values: `0` through `4294967294`.
  final String? ownerId;

  /// Creates a new [NfsFileShareNfsFileShareDefaults].
  /// [directoryMode] The Unix directory mode in the string form "nnnn". Defaults to `"0777"`.
  /// [fileMode] The Unix file mode in the string form "nnnn". Defaults to `"0666"`.
  /// [groupId] The default group ID for the file share (unless the files have another group ID specified). Defaults to `65534` (`nfsnobody`). Valid values: `0` through `4294967294`.
  /// [ownerId] The default owner ID for the file share (unless the files have another owner ID specified). Defaults to `65534` (`nfsnobody`). Valid values: `0` through `4294967294`.
  NfsFileShareNfsFileShareDefaults({
    this.directoryMode,
    this.fileMode,
    this.groupId,
    this.ownerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directoryMode': ?directoryMode,
      'fileMode': ?fileMode,
      'groupId': ?groupId,
      'ownerId': ?ownerId,
    };
  }

  factory NfsFileShareNfsFileShareDefaults.fromMap(Map<String, dynamic> map) {
    return NfsFileShareNfsFileShareDefaults(
      directoryMode: map['directoryMode'] == null ? null : map['directoryMode'] as String,
      fileMode: map['fileMode'] == null ? null : map['fileMode'] as String,
      groupId: map['groupId'] == null ? null : map['groupId'] as String,
      ownerId: map['ownerId'] == null ? null : map['ownerId'] as String,
    );
  }
}

