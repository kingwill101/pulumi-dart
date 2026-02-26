// ignore_for_file: unused_element, unnecessary_cast

import '../fsx_open_zfs_file_system_protocol_nfs/fsx_open_zfs_file_system_protocol_nfs.dart';

class FsxOpenZfsFileSystemProtocol {
  /// Represents the Network File System (NFS) protocol that DataSync uses to access your FSx for OpenZFS file system. See below.
  final FsxOpenZfsFileSystemProtocolNfs nfs;

  FsxOpenZfsFileSystemProtocol({
    required this.nfs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['nfs'] = nfs.toMap();
    return map;
  }

  factory FsxOpenZfsFileSystemProtocol.fromMap(Map<String, dynamic> map) {
    return FsxOpenZfsFileSystemProtocol(
      nfs: FsxOpenZfsFileSystemProtocolNfs.fromMap(
          (map['nfs'] as Map).cast<String, dynamic>()),
    );
  }
}
