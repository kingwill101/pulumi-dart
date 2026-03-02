// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WebLockConfig resources.
class WebLockConfigState {
  /// Protection mode. Value:-**block**: Intercept-**audit**: Alarm
  final pulumi.Input<String>? defenceMode;
  /// Specify the protection directory.
  final pulumi.Input<String>? dir;
  /// Specify a directory address that does not require Web tamper protection (I. E. Excluded directories).> The protection Mode **Mode** is set to **blacklist**, you need to configure this parameter.
  final pulumi.Input<String>? exclusiveDir;
  /// Specify files that do not need to enable tamper protection for web pages (that is, exclude files).> The protection Mode **Mode** is set to **blacklist**, you need to configure this parameter.
  final pulumi.Input<String>? exclusiveFile;
  /// Specify the type of file that does not require Web tamper protection (that is, the type of excluded file). When there are multiple file types, use semicolons (;) separation. Value:-php-jsp-asp-aspx-js-cgi-html-htm-xml-shtml-shtm-jpg-gif-png > The protection Mode **Mode** is set to **blacklist**, you need to configure this parameter.
  final pulumi.Input<String>? exclusiveFileType;
  /// Specify the type of file that requires tamper protection. When there are multiple file types, use semicolons (;) separation. Value:-php-jsp-asp-aspx-js-cgi-html-htm-xml-shtml-shtm-jpg-gif-png> The protection Mode **Mode** is set to **whitelist**, you need to configure this parameter.
  final pulumi.Input<String>? inclusiveFileType;
  /// The local backup path is used to protect the safe backup of the Directory.
  final pulumi.Input<String>? localBackupDir;
  /// Specify the protected directory mode. Value:-**whitelist**: whitelist mode, which protects the added protected directories and file types.-**blacklist**: blacklist mode, which protects all unexcluded subdirectories, file types, and specified files under the added protection directory.
  final pulumi.Input<String>? mode;
  /// Specify the UUID of the server to which you want to add a protection directory.> You can call the DescribeCloudCenterInstances interface to obtain the UUID of the server.
  final pulumi.Input<String>? uuid;

  /// Creates a new [WebLockConfigState].
  /// [defenceMode] Protection mode. Value:-**block**: Intercept-**audit**: Alarm
  /// [dir] Specify the protection directory.
  /// [exclusiveDir] Specify a directory address that does not require Web tamper protection (I. E. Excluded directories).> The protection Mode **Mode** is set to **blacklist**, you need to configure this parameter.
  /// [exclusiveFile] Specify files that do not need to enable tamper protection for web pages (that is, exclude files).> The protection Mode **Mode** is set to **blacklist**, you need to configure this parameter.
  /// [exclusiveFileType] Specify the type of file that does not require Web tamper protection (that is, the type of excluded file). When there are multiple file types, use semicolons (;) separation. Value:-php-jsp-asp-aspx-js-cgi-html-htm-xml-shtml-shtm-jpg-gif-png > The protection Mode **Mode** is set to **blacklist**, you need to configure this parameter.
  /// [inclusiveFileType] Specify the type of file that requires tamper protection. When there are multiple file types, use semicolons (;) separation. Value:-php-jsp-asp-aspx-js-cgi-html-htm-xml-shtml-shtm-jpg-gif-png> The protection Mode **Mode** is set to **whitelist**, you need to configure this parameter.
  /// [localBackupDir] The local backup path is used to protect the safe backup of the Directory.
  /// [mode] Specify the protected directory mode. Value:-**whitelist**: whitelist mode, which protects the added protected directories and file types.-**blacklist**: blacklist mode, which protects all unexcluded subdirectories, file types, and specified files under the added protection directory.
  /// [uuid] Specify the UUID of the server to which you want to add a protection directory.> You can call the DescribeCloudCenterInstances interface to obtain the UUID of the server.
  WebLockConfigState({
    this.defenceMode,
    this.dir,
    this.exclusiveDir,
    this.exclusiveFile,
    this.exclusiveFileType,
    this.inclusiveFileType,
    this.localBackupDir,
    this.mode,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defenceMode': ?defenceMode,
      'dir': ?dir,
      'exclusiveDir': ?exclusiveDir,
      'exclusiveFile': ?exclusiveFile,
      'exclusiveFileType': ?exclusiveFileType,
      'inclusiveFileType': ?inclusiveFileType,
      'localBackupDir': ?localBackupDir,
      'mode': ?mode,
      'uuid': ?uuid,
    };
  }

  factory WebLockConfigState.fromMap(Map<String, dynamic> map) {
    return WebLockConfigState(
      defenceMode: map['defenceMode'] == null ? null : (map['defenceMode']! as String).input(),
      dir: map['dir'] == null ? null : (map['dir']! as String).input(),
      exclusiveDir: map['exclusiveDir'] == null ? null : (map['exclusiveDir']! as String).input(),
      exclusiveFile: map['exclusiveFile'] == null ? null : (map['exclusiveFile']! as String).input(),
      exclusiveFileType: map['exclusiveFileType'] == null ? null : (map['exclusiveFileType']! as String).input(),
      inclusiveFileType: map['inclusiveFileType'] == null ? null : (map['inclusiveFileType']! as String).input(),
      localBackupDir: map['localBackupDir'] == null ? null : (map['localBackupDir']! as String).input(),
      mode: map['mode'] == null ? null : (map['mode']! as String).input(),
      uuid: map['uuid'] == null ? null : (map['uuid']! as String).input(),
    );
  }
}

