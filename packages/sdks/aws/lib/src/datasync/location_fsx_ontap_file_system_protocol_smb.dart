// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'location_fsx_ontap_file_system_protocol_smb_mount_options.dart';

class LocationFsxOntapFileSystemProtocolSmb {
  /// Fully qualified domain name of the Microsoft Active Directory (AD) that your storage virtual machine belongs to.
  final pulumi.Input<String>? domain;
  /// Mount options that are available for DataSync to access an SMB location. See SMB Mount Options below.
  final pulumi.Input<LocationFsxOntapFileSystemProtocolSmbMountOptions> mountOptions;
  /// Password of a user who has permission to access your SVM.
  final pulumi.Input<String> password;
  /// Username that can mount the location and access the files, folders, and metadata that you need in the SVM.
  final pulumi.Input<String> user;

  /// Creates a new [LocationFsxOntapFileSystemProtocolSmb].
  /// [domain] Fully qualified domain name of the Microsoft Active Directory (AD) that your storage virtual machine belongs to.
  /// [mountOptions] Mount options that are available for DataSync to access an SMB location. See SMB Mount Options below.
  /// [password] Password of a user who has permission to access your SVM.
  /// [user] Username that can mount the location and access the files, folders, and metadata that you need in the SVM.
  LocationFsxOntapFileSystemProtocolSmb({
    this.domain,
    required this.mountOptions,
    required this.password,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': ?domain,
      'mountOptions': pulumi.Input.mapInputValue<LocationFsxOntapFileSystemProtocolSmbMountOptions, Map<String, dynamic>>(mountOptions, (value) => value.toMap()),
      'password': password,
      'user': user,
    };
  }

  factory LocationFsxOntapFileSystemProtocolSmb.fromMap(Map<String, dynamic> map) {
    return LocationFsxOntapFileSystemProtocolSmb(
      domain: map['domain'] == null ? null : ((map['domain'] as String).input()).input(),
      mountOptions: (LocationFsxOntapFileSystemProtocolSmbMountOptions.fromMap((map['mountOptions']! as Map).cast<String, dynamic>())).input(),
      password: (map['password'] as String).input(),
      user: (map['user'] as String).input(),
    );
  }
}

