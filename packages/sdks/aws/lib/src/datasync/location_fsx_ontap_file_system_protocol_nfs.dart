// ignore_for_file: unused_element, unnecessary_cast

import 'location_fsx_ontap_file_system_protocol_nfs_mount_options.dart';

class LocationFsxOntapFileSystemProtocolNfs {
  /// Mount options that are available for DataSync to access an NFS location. See NFS Mount Options below.
  final LocationFsxOntapFileSystemProtocolNfsMountOptions mountOptions;

  /// Creates a new [LocationFsxOntapFileSystemProtocolNfs].
  /// [mountOptions] Mount options that are available for DataSync to access an NFS location. See NFS Mount Options below.
  LocationFsxOntapFileSystemProtocolNfs({
    required this.mountOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountOptions': mountOptions.toMap(),
    };
  }

  factory LocationFsxOntapFileSystemProtocolNfs.fromMap(Map<String, dynamic> map) {
    return LocationFsxOntapFileSystemProtocolNfs(
      mountOptions: LocationFsxOntapFileSystemProtocolNfsMountOptions.fromMap((map['mountOptions'] as Map).cast<String, dynamic>()),
    );
  }
}

