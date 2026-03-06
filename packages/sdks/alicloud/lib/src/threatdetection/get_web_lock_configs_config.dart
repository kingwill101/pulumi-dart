// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWebLockConfigsConfig {
  /// The prevention mode.
  final pulumi.Input<String> defenceMode;
  /// The directory that has web tamper proofing enabled.
  final pulumi.Input<String> dir;
  /// The directory that has web tamper proofing disabled.
  final pulumi.Input<String> exclusiveDir;
  /// The file that has web tamper proofing disabled. **Note:** If the value of `mode` is `blacklist`, this parameter is returned.
  final pulumi.Input<String> exclusiveFile;
  /// The type of the file that has web tamper proofing disabled. **Note:** If the value of `mode` is `blacklist`, this parameter is returned.
  final pulumi.Input<String> exclusiveFileType;
  /// The ID of the resource.
  final pulumi.Input<String> id;
  /// The type of the file that has web tamper proofing enabled. **Note:** If the value of `mode` is `whitelist`, this parameter is returned.
  final pulumi.Input<String> inclusiveFileType;
  /// The local path to the backup files of the protected directory.
  final pulumi.Input<String> localBackupDir;
  /// The protection mode of web tamper proofing.
  final pulumi.Input<String> mode;
  /// The UUID of the server that has web tamper proofing enabled.
  final pulumi.Input<String> uuid;

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
  const GetWebLockConfigsConfig({
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
      defenceMode: pulumi.Input.fromValue(map['defenceMode'] as String),
      dir: pulumi.Input.fromValue(map['dir'] as String),
      exclusiveDir: pulumi.Input.fromValue(map['exclusiveDir'] as String),
      exclusiveFile: pulumi.Input.fromValue(map['exclusiveFile'] as String),
      exclusiveFileType: pulumi.Input.fromValue(map['exclusiveFileType'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      inclusiveFileType: pulumi.Input.fromValue(map['inclusiveFileType'] as String),
      localBackupDir: pulumi.Input.fromValue(map['localBackupDir'] as String),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      uuid: pulumi.Input.fromValue(map['uuid'] as String),
    );
  }
}

