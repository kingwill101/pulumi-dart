// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NfsFileShareNfsFileShareDefaults {
  /// The Unix directory mode in the string form "nnnn". Defaults to `"0777"`.
  final pulumi.Input<String>? directoryMode;
  /// The Unix file mode in the string form "nnnn". Defaults to `"0666"`.
  final pulumi.Input<String>? fileMode;
  /// The default group ID for the file share (unless the files have another group ID specified). Defaults to `65534` (`nfsnobody`). Valid values: `0` through `4294967294`.
  final pulumi.Input<String>? groupId;
  /// The default owner ID for the file share (unless the files have another owner ID specified). Defaults to `65534` (`nfsnobody`). Valid values: `0` through `4294967294`.
  final pulumi.Input<String>? ownerId;

  /// Creates a new [NfsFileShareNfsFileShareDefaults].
  /// [directoryMode] The Unix directory mode in the string form "nnnn". Defaults to `"0777"`.
  /// [fileMode] The Unix file mode in the string form "nnnn". Defaults to `"0666"`.
  /// [groupId] The default group ID for the file share (unless the files have another group ID specified). Defaults to `65534` (`nfsnobody`). Valid values: `0` through `4294967294`.
  /// [ownerId] The default owner ID for the file share (unless the files have another owner ID specified). Defaults to `65534` (`nfsnobody`). Valid values: `0` through `4294967294`.
  const NfsFileShareNfsFileShareDefaults({
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
      directoryMode: (() { final guardedValue = map['directoryMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileMode: (() { final guardedValue = map['fileMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupId: (() { final guardedValue = map['groupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
