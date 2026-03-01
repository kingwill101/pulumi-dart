// ignore_for_file: unused_element, unnecessary_cast

import 'cifs_user.dart';
import 'nfs_user.dart';

/// File System user having access to volume data. For Unix, this is the user's uid and gid. For Windows, this is the user's username. Note that the Unix and Windows user details are mutually exclusive, meaning one or other must be supplied, but not both.
class FileSystemUser {
  /// The effective CIFS username when accessing the volume data.
  final CifsUser? cifsUser;
  /// The effective NFS User ID and Group ID when accessing the volume data.
  final NfsUser? nfsUser;

  /// Creates a new [FileSystemUser].
  /// [cifsUser] The effective CIFS username when accessing the volume data.
  /// [nfsUser] The effective NFS User ID and Group ID when accessing the volume data.
  FileSystemUser({
    this.cifsUser,
    this.nfsUser,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cifsUser': ?cifsUser == null ? null : cifsUser!.toMap(),
      'nfsUser': ?nfsUser == null ? null : nfsUser!.toMap(),
    };
  }

  factory FileSystemUser.fromMap(Map<String, dynamic> map) {
    return FileSystemUser(
      cifsUser: map['cifsUser'] == null ? null : CifsUser.fromMap((map['cifsUser'] as Map).cast<String, dynamic>()),
      nfsUser: map['nfsUser'] == null ? null : NfsUser.fromMap((map['nfsUser'] as Map).cast<String, dynamic>()),
    );
  }
}

