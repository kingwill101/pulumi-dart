// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'location_fsx_ontap_file_system_protocol_nfs_mount_options.dart';

class LocationFsxOntapFileSystemProtocolNfs {
  /// Mount options that are available for DataSync to access an NFS location. See NFS Mount Options below.
  final pulumi.Input<LocationFsxOntapFileSystemProtocolNfsMountOptions>
  mountOptions;

  /// Creates a new [LocationFsxOntapFileSystemProtocolNfs].
  /// [mountOptions] Mount options that are available for DataSync to access an NFS location. See NFS Mount Options below.
  LocationFsxOntapFileSystemProtocolNfs({required this.mountOptions});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountOptions':
          pulumi.Input.mapInputValue<
            LocationFsxOntapFileSystemProtocolNfsMountOptions,
            Map<String, dynamic>
          >(mountOptions, (value) => value.toMap()),
    };
  }

  factory LocationFsxOntapFileSystemProtocolNfs.fromMap(
    Map<String, dynamic> map,
  ) {
    return LocationFsxOntapFileSystemProtocolNfs(
      mountOptions: pulumi.Input.fromValue(
        LocationFsxOntapFileSystemProtocolNfsMountOptions.fromMap(
          (map['mountOptions']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
