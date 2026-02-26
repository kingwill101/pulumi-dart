// ignore_for_file: unused_element, unnecessary_cast

import '../location_fsx_ontap_file_system_protocol_nfs/location_fsx_ontap_file_system_protocol_nfs.dart';
import '../location_fsx_ontap_file_system_protocol_smb/location_fsx_ontap_file_system_protocol_smb.dart';

class LocationFsxOntapFileSystemProtocol {
  /// Network File System (NFS) protocol that DataSync uses to access your FSx ONTAP file system. See NFS below.
  final LocationFsxOntapFileSystemProtocolNfs? nfs;

  /// Server Message Block (SMB) protocol that DataSync uses to access your FSx ONTAP file system. See [SMB] (#smb) below.
  final LocationFsxOntapFileSystemProtocolSmb? smb;

  LocationFsxOntapFileSystemProtocol({
    this.nfs,
    this.smb,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nfsValue = nfs;
    if (nfsValue != null) {
      map['nfs'] = nfsValue.toMap();
    }
    final smbValue = smb;
    if (smbValue != null) {
      map['smb'] = smbValue.toMap();
    }
    return map;
  }

  factory LocationFsxOntapFileSystemProtocol.fromMap(Map<String, dynamic> map) {
    return LocationFsxOntapFileSystemProtocol(
      nfs: map['nfs'] == null
          ? null
          : LocationFsxOntapFileSystemProtocolNfs.fromMap(
              (map['nfs'] as Map).cast<String, dynamic>()),
      smb: map['smb'] == null
          ? null
          : LocationFsxOntapFileSystemProtocolSmb.fromMap(
              (map['smb'] as Map).cast<String, dynamic>()),
    );
  }
}
