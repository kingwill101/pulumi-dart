// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Mount target properties
class MountTargetPropertiesResponse {
  /// UUID v4 used to identify the MountTarget
  final pulumi.Input<String> fileSystemId;
  /// The mount target's IPv4 address
  final pulumi.Input<String> ipAddress;
  /// UUID v4 used to identify the MountTarget
  final pulumi.Input<String> mountTargetId;
  /// The SMB server's Fully Qualified Domain Name, FQDN
  final pulumi.Input<String>? smbServerFqdn;

  /// Creates a new [MountTargetPropertiesResponse].
  /// [fileSystemId] UUID v4 used to identify the MountTarget
  /// [ipAddress] The mount target's IPv4 address
  /// [mountTargetId] UUID v4 used to identify the MountTarget
  /// [smbServerFqdn] The SMB server's Fully Qualified Domain Name, FQDN
  MountTargetPropertiesResponse({
    required this.fileSystemId,
    required this.ipAddress,
    required this.mountTargetId,
    this.smbServerFqdn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystemId': fileSystemId,
      'ipAddress': ipAddress,
      'mountTargetId': mountTargetId,
      'smbServerFqdn': ?smbServerFqdn,
    };
  }

  factory MountTargetPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MountTargetPropertiesResponse(
      fileSystemId: (map['fileSystemId'] as String).input(),
      ipAddress: (map['ipAddress'] as String).input(),
      mountTargetId: (map['mountTargetId'] as String).input(),
      smbServerFqdn: map['smbServerFqdn'] == null ? null : (map['smbServerFqdn'] as String).input(),
    );
  }
}

