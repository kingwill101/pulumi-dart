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
  S3AccessPointAttachmentOpenzfsConfigurationFileSystemIdentityPosixUser({
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
      gid: (map['gid'] as int).input(),
      secondaryGids: map['secondaryGids'] == null ? null : ((map['secondaryGids'] as List).cast<int>()).input(),
      uid: (map['uid'] as int).input(),
    );
  }
}

