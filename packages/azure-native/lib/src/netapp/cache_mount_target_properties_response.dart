// ignore_for_file: unused_element, unnecessary_cast


/// Contains all the information needed to mount a cache
class CacheMountTargetPropertiesResponse {
  /// The mount target's IPv4 address, used to mount the cache.
  final String ipAddress;
  /// UUID v4 used to identify the MountTarget
  final String mountTargetId;
  /// The SMB server's Fully Qualified Domain Name, FQDN
  final String smbServerFqdn;

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
      ipAddress: map['ipAddress'] as String,
      mountTargetId: map['mountTargetId'] as String,
      smbServerFqdn: map['smbServerFqdn'] as String,
    );
  }
}

