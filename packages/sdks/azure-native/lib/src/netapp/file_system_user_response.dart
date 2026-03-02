// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cifs_user_response.dart';
import 'nfs_user_response.dart';

/// File System user having access to volume data. For Unix, this is the user's uid and gid. For Windows, this is the user's username. Note that the Unix and Windows user details are mutually exclusive, meaning one or other must be supplied, but not both.
class FileSystemUserResponse {
  /// The effective CIFS username when accessing the volume data.
  final pulumi.Input<CifsUserResponse>? cifsUser;
  /// The effective NFS User ID and Group ID when accessing the volume data.
  final pulumi.Input<NfsUserResponse>? nfsUser;

  /// Creates a new [FileSystemUserResponse].
  /// [cifsUser] The effective CIFS username when accessing the volume data.
  /// [nfsUser] The effective NFS User ID and Group ID when accessing the volume data.
  FileSystemUserResponse({
    this.cifsUser,
    this.nfsUser,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cifsUser': ?pulumi.Input.mapOptionalInputValue<CifsUserResponse, Map<String, dynamic>>(cifsUser, (value) => value.toMap()),
      'nfsUser': ?pulumi.Input.mapOptionalInputValue<NfsUserResponse, Map<String, dynamic>>(nfsUser, (value) => value.toMap()),
    };
  }

  factory FileSystemUserResponse.fromMap(Map<String, dynamic> map) {
    return FileSystemUserResponse(
      cifsUser: map['cifsUser'] == null ? null : (CifsUserResponse.fromMap((map['cifsUser'] as Map).cast<String, dynamic>())).input(),
      nfsUser: map['nfsUser'] == null ? null : (NfsUserResponse.fromMap((map['nfsUser'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

