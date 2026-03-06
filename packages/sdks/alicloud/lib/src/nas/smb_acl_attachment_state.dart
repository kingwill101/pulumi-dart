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
  /// Each segment does not contain the following special characters: &lt;&gt;":?*.
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
  const SmbAclAttachmentState({
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
      authMethod: (() { final guardedValue = map['authMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableAnonymousAccess: (() { final guardedValue = map['enableAnonymousAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptData: (() { final guardedValue = map['encryptData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      fileSystemId: (() { final guardedValue = map['fileSystemId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      homeDirPath: (() { final guardedValue = map['homeDirPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keytab: (() { final guardedValue = map['keytab']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keytabMd5: (() { final guardedValue = map['keytabMd5']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rejectUnencryptedAccess: (() { final guardedValue = map['rejectUnencryptedAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      superAdminSid: (() { final guardedValue = map['superAdminSid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

