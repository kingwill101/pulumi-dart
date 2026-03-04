// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cifs_user.dart';
import 'nfs_user.dart';

/// File System user having access to volume data. For Unix, this is the user's uid and gid. For Windows, this is the user's username. Note that the Unix and Windows user details are mutually exclusive, meaning one or other must be supplied, but not both.
class FileSystemUser {
  /// The effective CIFS username when accessing the volume data.
  final pulumi.Input<CifsUser>? cifsUser;

  /// The effective NFS User ID and Group ID when accessing the volume data.
  final pulumi.Input<NfsUser>? nfsUser;

  /// Creates a new [FileSystemUser].
  /// [cifsUser] The effective CIFS username when accessing the volume data.
  /// [nfsUser] The effective NFS User ID and Group ID when accessing the volume data.
  FileSystemUser({this.cifsUser, this.nfsUser});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cifsUser':
          ?pulumi.Input.mapOptionalInputValue<CifsUser, Map<String, dynamic>>(
            cifsUser,
            (value) => value.toMap(),
          ),
      'nfsUser':
          ?pulumi.Input.mapOptionalInputValue<NfsUser, Map<String, dynamic>>(
            nfsUser,
            (value) => value.toMap(),
          ),
    };
  }

  factory FileSystemUser.fromMap(Map<String, dynamic> map) {
    return FileSystemUser(
      cifsUser: (() {
        final guardedValue = map['cifsUser'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CifsUser.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      nfsUser: (() {
        final guardedValue = map['nfsUser'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NfsUser.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
    );
  }
}
