// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FileSystemSmbAcl {
  /// Whether to allow anonymous access.
  /// - true: Allow anonymous access.
  /// - false (default): Anonymous access is not allowed.
  final pulumi.Input<bool>? enableAnonymousAccess;
  /// Whether SMB ACL is enabled
  final pulumi.Input<bool>? enabled;
  /// Whether transmission encryption is enabled.
  /// - true: Enables encryption in transit.
  /// - false (default): Transport encryption is not enabled.
  final pulumi.Input<bool>? encryptData;
  /// The user directory home path for each user. The file path format is as follows:
  /// - A forward slash (/) or backslash (\) as a separator.
  /// - Each paragraph cannot contain ":|? *.
  /// - The length of each segment ranges from 0 to 255.
  /// - The total length range is 0~32767.
  ///
  /// For example, if the user directory is/home, the file system will automatically create A directory of/home/A when user A logs in. Skip if/home/A already exists.
  ///
  /// > **NOTE:**  Explain that user A needs to have the permission to create A directory, otherwise the/home/A directory cannot be created.
  final pulumi.Input<String>? homeDirPath;
  /// Whether to reject non-encrypted clients.
  /// - true: Deny non-encrypted clients.
  /// - false (default): Non-encrypted clients are not rejected.
  final pulumi.Input<bool>? rejectUnencryptedAccess;
  /// The ID of the Super User. The ID rules are as follows:
  /// - Must start with S and no other letters can appear after the S at the beginning.
  /// - At least three dashes (-) apart.
  ///
  /// Such as S-1-5-22 or S-1-5-22-23.
  final pulumi.Input<String>? superAdminSid;

  /// Creates a new [FileSystemSmbAcl].
  /// [enableAnonymousAccess] Whether to allow anonymous access.
  /// [enabled] Whether SMB ACL is enabled
  /// [encryptData] Whether transmission encryption is enabled.
  /// [homeDirPath] The user directory home path for each user. The file path format is as follows:
  /// [rejectUnencryptedAccess] Whether to reject non-encrypted clients.
  /// [superAdminSid] The ID of the Super User. The ID rules are as follows:
  FileSystemSmbAcl({
    this.enableAnonymousAccess,
    this.enabled,
    this.encryptData,
    this.homeDirPath,
    this.rejectUnencryptedAccess,
    this.superAdminSid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableAnonymousAccess': ?enableAnonymousAccess,
      'enabled': ?enabled,
      'encryptData': ?encryptData,
      'homeDirPath': ?homeDirPath,
      'rejectUnencryptedAccess': ?rejectUnencryptedAccess,
      'superAdminSid': ?superAdminSid,
    };
  }

  factory FileSystemSmbAcl.fromMap(Map<String, dynamic> map) {
    return FileSystemSmbAcl(
      enableAnonymousAccess: map['enableAnonymousAccess'] == null ? null : (map['enableAnonymousAccess']! as bool).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      encryptData: map['encryptData'] == null ? null : (map['encryptData']! as bool).input(),
      homeDirPath: map['homeDirPath'] == null ? null : (map['homeDirPath']! as String).input(),
      rejectUnencryptedAccess: map['rejectUnencryptedAccess'] == null ? null : (map['rejectUnencryptedAccess']! as bool).input(),
      superAdminSid: map['superAdminSid'] == null ? null : (map['superAdminSid']! as String).input(),
    );
  }
}

