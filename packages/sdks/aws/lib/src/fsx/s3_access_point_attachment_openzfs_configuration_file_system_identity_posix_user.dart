// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class S3AccessPointAttachmentOpenzfsConfigurationFileSystemIdentityPosixUser {
  /// GID of the file system user.
  final pulumi.Input<int> gid;
  /// List of secondary GIDs for the file system user..
  final pulumi.Input<List<int>>? secondaryGids;
  /// UID of the file system user.
  final pulumi.Input<int> uid;

  /// Creates a new [S3AccessPointAttachmentOpenzfsConfigurationFileSystemIdentityPosixUser].
  /// [gid] GID of the file system user.
  /// [secondaryGids] List of secondary GIDs for the file system user..
  /// [uid] UID of the file system user.
  const S3AccessPointAttachmentOpenzfsConfigurationFileSystemIdentityPosixUser({
    required this.gid,
    this.secondaryGids,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gid': gid,
      'secondaryGids': ?secondaryGids,
      'uid': uid,
    };
  }

  factory S3AccessPointAttachmentOpenzfsConfigurationFileSystemIdentityPosixUser.fromMap(Map<String, dynamic> map) {
    return S3AccessPointAttachmentOpenzfsConfigurationFileSystemIdentityPosixUser(
      gid: pulumi.Input.fromValue(map['gid'] as int),
      secondaryGids: (() { final guardedValue = map['secondaryGids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      uid: pulumi.Input.fromValue(map['uid'] as int),
    );
  }
}

