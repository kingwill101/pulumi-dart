// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains all the information needed to mount a cache
class CacheMountTargetPropertiesResponse {
  /// The mount target's IPv4 address, used to mount the cache.
  final pulumi.Input<String> ipAddress;
  /// UUID v4 used to identify the MountTarget
  final pulumi.Input<String> mountTargetId;
  /// The SMB server's Fully Qualified Domain Name, FQDN
  final pulumi.Input<String> smbServerFqdn;

  /// Creates a new [CacheMountTargetPropertiesResponse].
  /// [ipAddress] The mount target's IPv4 address, used to mount the cache.
  /// [mountTargetId] UUID v4 used to identify the MountTarget
  /// [smbServerFqdn] The SMB server's Fully Qualified Domain Name, FQDN
  CacheMountTargetPropertiesResponse({
    required this.ipAddress,
    required this.mountTargetId,
    required this.smbServerFqdn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ipAddress,
      'mountTargetId': mountTargetId,
      'smbServerFqdn': smbServerFqdn,
    };
  }

  factory CacheMountTargetPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return CacheMountTargetPropertiesResponse(
      ipAddress: (map['ipAddress'] as String).input(),
      mountTargetId: (map['mountTargetId'] as String).input(),
      smbServerFqdn: (map['smbServerFqdn'] as String).input(),
    );
  }
}

