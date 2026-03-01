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
    pulumi.Output<String>? defenceMode,
    pulumi.Output<String>? dir,
    pulumi.Output<String>? exclusiveDir,
    pulumi.Output<String>? exclusiveFile,
    pulumi.Output<String>? exclusiveFileType,
    pulumi.Output<String>? inclusiveFileType,
    pulumi.Output<String>? localBackupDir,
    pulumi.Output<String>? mode,
    pulumi.Output<String>? uuid,
  }) :
      defenceMode = pulumi.Input.asOptionalInput<String>(defenceMode),
      dir = pulumi.Input.asOptionalInput<String>(dir),
      exclusiveDir = pulumi.Input.asOptionalInput<String>(exclusiveDir),
      exclusiveFile = pulumi.Input.asOptionalInput<String>(exclusiveFile),
      exclusiveFileType = pulumi.Input.asOptionalInput<String>(exclusiveFileType),
      inclusiveFileType = pulumi.Input.asOptionalInput<String>(inclusiveFileType),
      localBackupDir = pulumi.Input.asOptionalInput<String>(localBackupDir),
      mode = pulumi.Input.asOptionalInput<String>(mode),
      uuid = pulumi.Input.asOptionalInput<String>(uuid);

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
      defenceMode: map['defenceMode'] == null ? null : pulumi.Output.create<String>(map['defenceMode'] as String),
      dir: map['dir'] == null ? null : pulumi.Output.create<String>(map['dir'] as String),
      exclusiveDir: map['exclusiveDir'] == null ? null : pulumi.Output.create<String>(map['exclusiveDir'] as String),
      exclusiveFile: map['exclusiveFile'] == null ? null : pulumi.Output.create<String>(map['exclusiveFile'] as String),
      exclusiveFileType: map['exclusiveFileType'] == null ? null : pulumi.Output.create<String>(map['exclusiveFileType'] as String),
      inclusiveFileType: map['inclusiveFileType'] == null ? null : pulumi.Output.create<String>(map['inclusiveFileType'] as String),
      localBackupDir: map['localBackupDir'] == null ? null : pulumi.Output.create<String>(map['localBackupDir'] as String),
      mode: map['mode'] == null ? null : pulumi.Output.create<String>(map['mode'] as String),
      uuid: map['uuid'] == null ? null : pulumi.Output.create<String>(map['uuid'] as String),
    );
  }
}

