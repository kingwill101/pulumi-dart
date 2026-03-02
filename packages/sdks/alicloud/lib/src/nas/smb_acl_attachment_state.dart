// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SmbAclAttachment resources.
class SmbAclAttachmentState {
  /// The method that is used to authenticate network identities.
  final pulumi.Input<String>? authMethod;
  /// Specifies whether to allow anonymous access. Valid values:
  /// true: The file system allows anonymous access.
  /// false: The file system denies anonymous access. Default value: false.
  final pulumi.Input<bool>? enableAnonymousAccess;
  /// Specifies whether to enable the ACL feature.
  /// true: enables the ACL feature.
  /// false: disables the ACL feature.
  final pulumi.Input<String>? enabled;
  /// Specifies whether to enable encryption in transit. Valid values:
  /// true: enables encryption in transit.
  /// false: disables encryption in transit. Default value: false.
  final pulumi.Input<bool>? encryptData;
  /// The ID of the file system.
  final pulumi.Input<String>? fileSystemId;
  /// The home directory of each user. Each user-specific home directory must meet the following requirements:
  /// Each segment starts with a forward slash (/) or a backslash (\).
  /// Each segment does not contain the following special characters: <>":?*.
  /// Each segment is 0 to 255 characters in length.
  /// The total length is 0 to 32,767 characters.
  /// For example, if you create a user named A and the home directory is /home, the file system automatically creates a directory named /home/A when User A logs on to the file system. If the /home/A directory already exists, the file system does not create the directory.
  final pulumi.Input<String>? homeDirPath;
  /// The string that is generated after the system encodes the keytab file by using Base64.
  final pulumi.Input<String>? keytab;
  /// RThe string that is generated after the system encodes the keytab file by using MD5.
  final pulumi.Input<String>? keytabMd5;
  /// Specifies whether to deny access from non-encrypted clients. Valid values:
  /// true: The file system denies access from non-encrypted clients.
  /// false: The file system allows access from non-encrypted clients. Default value: false.
  final pulumi.Input<bool>? rejectUnencryptedAccess;
  /// The ID of a super admin. The ID must meet the following requirements:
  /// The ID starts with S and does not contain letters except S.
  /// The ID contains at least three hyphens (-) as delimiters.
  /// Example: S-1-5-22 and S-1-5-22-23.
  final pulumi.Input<String>? superAdminSid;

  /// Creates a new [SmbAclAttachmentState].
  /// [authMethod] The method that is used to authenticate network identities.
  /// [enableAnonymousAccess] Specifies whether to allow anonymous access. Valid values:
  /// [enabled] Specifies whether to enable the ACL feature.
  /// [encryptData] Specifies whether to enable encryption in transit. Valid values:
  /// [fileSystemId] The ID of the file system.
  /// [homeDirPath] The home directory of each user. Each user-specific home directory must meet the following requirements:
  /// [keytab] The string that is generated after the system encodes the keytab file by using Base64.
  /// [keytabMd5] RThe string that is generated after the system encodes the keytab file by using MD5.
  /// [rejectUnencryptedAccess] Specifies whether to deny access from non-encrypted clients. Valid values:
  /// [superAdminSid] The ID of a super admin. The ID must meet the following requirements:
  SmbAclAttachmentState({
    this.authMethod,
    this.enableAnonymousAccess,
    this.enabled,
    this.encryptData,
    this.fileSystemId,
    this.homeDirPath,
    this.keytab,
    this.keytabMd5,
    this.rejectUnencryptedAccess,
    this.superAdminSid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authMethod': ?authMethod,
      'enableAnonymousAccess': ?enableAnonymousAccess,
      'enabled': ?enabled,
      'encryptData': ?encryptData,
      'fileSystemId': ?fileSystemId,
      'homeDirPath': ?homeDirPath,
      'keytab': ?keytab,
      'keytabMd5': ?keytabMd5,
      'rejectUnencryptedAccess': ?rejectUnencryptedAccess,
      'superAdminSid': ?superAdminSid,
    };
  }

  factory SmbAclAttachmentState.fromMap(Map<String, dynamic> map) {
    return SmbAclAttachmentState(
      authMethod: map['authMethod'] == null ? null : (map['authMethod']! as String).input(),
      enableAnonymousAccess: map['enableAnonymousAccess'] == null ? null : (map['enableAnonymousAccess']! as bool).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as String).input(),
      encryptData: map['encryptData'] == null ? null : (map['encryptData']! as bool).input(),
      fileSystemId: map['fileSystemId'] == null ? null : (map['fileSystemId']! as String).input(),
      homeDirPath: map['homeDirPath'] == null ? null : (map['homeDirPath']! as String).input(),
      keytab: map['keytab'] == null ? null : (map['keytab']! as String).input(),
      keytabMd5: map['keytabMd5'] == null ? null : (map['keytabMd5']! as String).input(),
      rejectUnencryptedAccess: map['rejectUnencryptedAccess'] == null ? null : (map['rejectUnencryptedAccess']! as bool).input(),
      superAdminSid: map['superAdminSid'] == null ? null : (map['superAdminSid']! as String).input(),
    );
  }
}

