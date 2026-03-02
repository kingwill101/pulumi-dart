// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FsxOpenZfsFileSystemProtocolNfsMountOptions {
  /// The specific NFS version that you want DataSync to use for mounting your NFS share. Valid values: `AUTOMATIC`, `NFS3`, `NFS4_0` and `NFS4_1`. Default: `AUTOMATIC`
  final pulumi.Input<String>? version;

  /// Creates a new [FsxOpenZfsFileSystemProtocolNfsMountOptions].
  /// [version] The specific NFS version that you want DataSync to use for mounting your NFS share. Valid values: `AUTOMATIC`, `NFS3`, `NFS4_0` and `NFS4_1`. Default: `AUTOMATIC`
  FsxOpenZfsFileSystemProtocolNfsMountOptions({
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'version': ?version,
    };
  }

  factory FsxOpenZfsFileSystemProtocolNfsMountOptions.fromMap(Map<String, dynamic> map) {
    return FsxOpenZfsFileSystemProtocolNfsMountOptions(
      version: map['version'] == null ? null : ((map['version'] as String).input()).input(),
    );
  }
}

