// ignore_for_file: unused_element, unnecessary_cast


class GetWebLockConfigsConfig {
  /// The prevention mode.
  final String defenceMode;
  /// The directory that has web tamper proofing enabled.
  final String dir;
  /// The directory that has web tamper proofing disabled.
  final String exclusiveDir;
  /// The file that has web tamper proofing disabled. **Note:** If the value of `mode` is `blacklist`, this parameter is returned.
  final String exclusiveFile;
  /// The type of the file that has web tamper proofing disabled. **Note:** If the value of `mode` is `blacklist`, this parameter is returned.
  final String exclusiveFileType;
  /// The ID of the resource.
  final String id;
  /// The type of the file that has web tamper proofing enabled. **Note:** If the value of `mode` is `whitelist`, this parameter is returned.
  final String inclusiveFileType;
  /// The local path to the backup files of the protected directory.
  final String localBackupDir;
  /// The protection mode of web tamper proofing.
  final String mode;
  /// The UUID of the server that has web tamper proofing enabled.
  final String uuid;

  /// Creates a new [GetWebLockConfigsConfig].
  /// [defenceMode] The prevention mode.
  /// [dir] The directory that has web tamper proofing enabled.
  /// [exclusiveDir] The directory that has web tamper proofing disabled.
  /// [exclusiveFile] The file that has web tamper proofing disabled. **Note:** If the value of `mode` is `blacklist`, this parameter is returned.
  /// [exclusiveFileType] The type of the file that has web tamper proofing disabled. **Note:** If the value of `mode` is `blacklist`, this parameter is returned.
  /// [id] The ID of the resource.
  /// [inclusiveFileType] The type of the file that has web tamper proofing enabled. **Note:** If the value of `mode` is `whitelist`, this parameter is returned.
  /// [localBackupDir] The local path to the backup files of the protected directory.
  /// [mode] The protection mode of web tamper proofing.
  /// [uuid] The UUID of the server that has web tamper proofing enabled.
  GetWebLockConfigsConfig({
    required this.defenceMode,
    required this.dir,
    required this.exclusiveDir,
    required this.exclusiveFile,
    required this.exclusiveFileType,
    required this.id,
    required this.inclusiveFileType,
    required this.localBackupDir,
    required this.mode,
    required this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defenceMode': defenceMode,
      'dir': dir,
      'exclusiveDir': exclusiveDir,
      'exclusiveFile': exclusiveFile,
      'exclusiveFileType': exclusiveFileType,
      'id': id,
      'inclusiveFileType': inclusiveFileType,
      'localBackupDir': localBackupDir,
      'mode': mode,
      'uuid': uuid,
    };
  }

  factory GetWebLockConfigsConfig.fromMap(Map<String, dynamic> map) {
    return GetWebLockConfigsConfig(
      defenceMode: map['defenceMode'] as String,
      dir: map['dir'] as String,
      exclusiveDir: map['exclusiveDir'] as String,
      exclusiveFile: map['exclusiveFile'] as String,
      exclusiveFileType: map['exclusiveFileType'] as String,
      id: map['id'] as String,
      inclusiveFileType: map['inclusiveFileType'] as String,
      localBackupDir: map['localBackupDir'] as String,
      mode: map['mode'] as String,
      uuid: map['uuid'] as String,
    );
  }
}

