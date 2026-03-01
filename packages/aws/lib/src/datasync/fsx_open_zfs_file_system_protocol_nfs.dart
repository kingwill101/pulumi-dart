// ignore_for_file: unused_element, unnecessary_cast

import 'fsx_open_zfs_file_system_protocol_nfs_mount_options.dart';

class FsxOpenZfsFileSystemProtocolNfs {
  /// Represents the mount options that are available for DataSync to access an NFS location. See below.
  final FsxOpenZfsFileSystemProtocolNfsMountOptions mountOptions;

  /// Creates a new [FsxOpenZfsFileSystemProtocolNfs].
  /// [mountOptions] Represents the mount options that are available for DataSync to access an NFS location. See below.
  FsxOpenZfsFileSystemProtocolNfs({required this.mountOptions});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'mountOptions': mountOptions.toMap()};
  }

  factory FsxOpenZfsFileSystemProtocolNfs.fromMap(Map<String, dynamic> map) {
    return FsxOpenZfsFileSystemProtocolNfs(
      mountOptions: FsxOpenZfsFileSystemProtocolNfsMountOptions.fromMap(
        (map['mountOptions'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
