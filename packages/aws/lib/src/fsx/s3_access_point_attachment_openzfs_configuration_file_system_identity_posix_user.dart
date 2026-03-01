// ignore_for_file: unused_element, unnecessary_cast

class S3AccessPointAttachmentOpenzfsConfigurationFileSystemIdentityPosixUser {
  /// GID of the file system user.
  final int gid;

  /// List of secondary GIDs for the file system user..
  final List<int>? secondaryGids;

  /// UID of the file system user.
  final int uid;

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

  factory S3AccessPointAttachmentOpenzfsConfigurationFileSystemIdentityPosixUser.fromMap(
    Map<String, dynamic> map,
  ) {
    return S3AccessPointAttachmentOpenzfsConfigurationFileSystemIdentityPosixUser(
      gid: map['gid'] as int,
      secondaryGids: map['secondaryGids'] == null
          ? null
          : (map['secondaryGids'] as List).cast<int>(),
      uid: map['uid'] as int,
    );
  }
}
