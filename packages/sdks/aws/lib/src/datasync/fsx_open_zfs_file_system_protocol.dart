// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fsx_open_zfs_file_system_protocol_nfs.dart';

class FsxOpenZfsFileSystemProtocol {
  /// Represents the Network File System (NFS) protocol that DataSync uses to access your FSx for OpenZFS file system. See below.
  final pulumi.Input<FsxOpenZfsFileSystemProtocolNfs> nfs;

  /// Creates a new [FsxOpenZfsFileSystemProtocol].
  /// [nfs] Represents the Network File System (NFS) protocol that DataSync uses to access your FSx for OpenZFS file system. See below.
  FsxOpenZfsFileSystemProtocol({
    required this.nfs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nfs': pulumi.Input.mapInputValue<FsxOpenZfsFileSystemProtocolNfs, Map<String, dynamic>>(nfs, (value) => value.toMap()),
    };
  }

  factory FsxOpenZfsFileSystemProtocol.fromMap(Map<String, dynamic> map) {
    return FsxOpenZfsFileSystemProtocol(
      nfs: (FsxOpenZfsFileSystemProtocolNfs.fromMap((map['nfs'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

