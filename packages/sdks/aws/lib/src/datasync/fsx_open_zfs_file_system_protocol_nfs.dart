// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fsx_open_zfs_file_system_protocol_nfs_mount_options.dart';

class FsxOpenZfsFileSystemProtocolNfs {
  /// Represents the mount options that are available for DataSync to access an NFS location. See below.
  final pulumi.Input<FsxOpenZfsFileSystemProtocolNfsMountOptions> mountOptions;

  /// Creates a new [FsxOpenZfsFileSystemProtocolNfs].
  /// [mountOptions] Represents the mount options that are available for DataSync to access an NFS location. See below.
  FsxOpenZfsFileSystemProtocolNfs({
    required this.mountOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountOptions': pulumi.Input.mapInputValue<FsxOpenZfsFileSystemProtocolNfsMountOptions, Map<String, dynamic>>(mountOptions, (value) => value.toMap()),
    };
  }

  factory FsxOpenZfsFileSystemProtocolNfs.fromMap(Map<String, dynamic> map) {
    return FsxOpenZfsFileSystemProtocolNfs(
      mountOptions: pulumi.Input.fromValue(FsxOpenZfsFileSystemProtocolNfsMountOptions.fromMap((map['mountOptions']! as Map).cast<String, dynamic>())),
    );
  }
}

