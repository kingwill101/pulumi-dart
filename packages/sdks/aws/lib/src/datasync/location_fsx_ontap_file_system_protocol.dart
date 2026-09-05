// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'location_fsx_ontap_file_system_protocol_nfs.dart';
import 'location_fsx_ontap_file_system_protocol_smb.dart';

class LocationFsxOntapFileSystemProtocol {
  /// Network File System (NFS) protocol that DataSync uses to access your FSx ONTAP file system. See NFS below.
  final pulumi.Input<LocationFsxOntapFileSystemProtocolNfs?>? nfs;
  /// Server Message Block (SMB) protocol that DataSync uses to access your FSx ONTAP file system. See [SMB] (#smb) below.
  final pulumi.Input<LocationFsxOntapFileSystemProtocolSmb?>? smb;

  /// Creates a new [LocationFsxOntapFileSystemProtocol].
  /// [nfs] Network File System (NFS) protocol that DataSync uses to access your FSx ONTAP file system. See NFS below.
  /// [smb] Server Message Block (SMB) protocol that DataSync uses to access your FSx ONTAP file system. See [SMB] (#smb) below.
  const LocationFsxOntapFileSystemProtocol({
    this.nfs,
    this.smb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nfs': ?pulumi.Input.mapOptionalInputValue<LocationFsxOntapFileSystemProtocolNfs, Map<String, dynamic>>(nfs, (value) => value.toMap()),
      'smb': ?pulumi.Input.mapOptionalInputValue<LocationFsxOntapFileSystemProtocolSmb, Map<String, dynamic>>(smb, (value) => value.toMap()),
    };
  }

  factory LocationFsxOntapFileSystemProtocol.fromMap(Map<String, dynamic> map) {
    return LocationFsxOntapFileSystemProtocol(
      nfs: (() { final guardedValue = map['nfs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LocationFsxOntapFileSystemProtocolNfs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      smb: (() { final guardedValue = map['smb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LocationFsxOntapFileSystemProtocolSmb.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
