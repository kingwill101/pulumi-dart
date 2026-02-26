// ignore_for_file: unused_element, unnecessary_cast

import '../location_fsx_ontap_file_system_protocol_smb_mount_options/location_fsx_ontap_file_system_protocol_smb_mount_options.dart';

class LocationFsxOntapFileSystemProtocolSmb {
  /// Fully qualified domain name of the Microsoft Active Directory (AD) that your storage virtual machine belongs to.
  final String? domain;

  /// Mount options that are available for DataSync to access an SMB location. See SMB Mount Options below.
  final LocationFsxOntapFileSystemProtocolSmbMountOptions mountOptions;

  /// Password of a user who has permission to access your SVM.
  final String password;

  /// Username that can mount the location and access the files, folders, and metadata that you need in the SVM.
  final String user;

  LocationFsxOntapFileSystemProtocolSmb({
    this.domain,
    required this.mountOptions,
    required this.password,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final domainValue = domain;
    if (domainValue != null) {
      map['domain'] = domainValue;
    }
    map['mountOptions'] = mountOptions.toMap();
    map['password'] = password;
    map['user'] = user;
    return map;
  }

  factory LocationFsxOntapFileSystemProtocolSmb.fromMap(
      Map<String, dynamic> map) {
    return LocationFsxOntapFileSystemProtocolSmb(
      domain: map['domain'] == null ? null : map['domain'] as String,
      mountOptions: LocationFsxOntapFileSystemProtocolSmbMountOptions.fromMap(
          (map['mountOptions'] as Map).cast<String, dynamic>()),
      password: map['password'] as String,
      user: map['user'] as String,
    );
  }
}
