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
  final pulumi.Input<String?>? smbServerFqdn;

  /// Creates a new [MountTargetPropertiesResponse].
  /// [fileSystemId] UUID v4 used to identify the MountTarget
  /// [ipAddress] The mount target's IPv4 address
  /// [mountTargetId] UUID v4 used to identify the MountTarget
  /// [smbServerFqdn] The SMB server's Fully Qualified Domain Name, FQDN
  const MountTargetPropertiesResponse({
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
      fileSystemId: pulumi.Input.fromValue(map['fileSystemId'] as String),
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
      mountTargetId: pulumi.Input.fromValue(map['mountTargetId'] as String),
      smbServerFqdn: (() { final guardedValue = map['smbServerFqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
