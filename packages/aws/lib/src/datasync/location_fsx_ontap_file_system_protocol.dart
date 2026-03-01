// ignore_for_file: unused_element, unnecessary_cast

import 'location_fsx_ontap_file_system_protocol_nfs.dart';
import 'location_fsx_ontap_file_system_protocol_smb.dart';

class LocationFsxOntapFileSystemProtocol {
  /// Network File System (NFS) protocol that DataSync uses to access your FSx ONTAP file system. See NFS below.
  final LocationFsxOntapFileSystemProtocolNfs? nfs;
  /// Server Message Block (SMB) protocol that DataSync uses to access your FSx ONTAP file system. See [SMB] (#smb) below.
  final LocationFsxOntapFileSystemProtocolSmb? smb;

  /// Creates a new [LocationFsxOntapFileSystemProtocol].
  /// [nfs] Network File System (NFS) protocol that DataSync uses to access your FSx ONTAP file system. See NFS below.
  /// [smb] Server Message Block (SMB) protocol that DataSync uses to access your FSx ONTAP file system. See [SMB] (#smb) below.
  LocationFsxOntapFileSystemProtocol({
    this.nfs,
    this.smb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nfs': ?nfs == null ? null : nfs!.toMap(),
      'smb': ?smb == null ? null : smb!.toMap(),
    };
  }

  factory LocationFsxOntapFileSystemProtocol.fromMap(Map<String, dynamic> map) {
    return LocationFsxOntapFileSystemProtocol(
      nfs: map['nfs'] == null ? null : LocationFsxOntapFileSystemProtocolNfs.fromMap((map['nfs'] as Map).cast<String, dynamic>()),
      smb: map['smb'] == null ? null : LocationFsxOntapFileSystemProtocolSmb.fromMap((map['smb'] as Map).cast<String, dynamic>()),
    );
  }
}

