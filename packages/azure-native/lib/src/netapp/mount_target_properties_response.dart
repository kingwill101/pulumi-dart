// ignore_for_file: unused_element, unnecessary_cast


/// Mount target properties
class MountTargetPropertiesResponse {
  /// UUID v4 used to identify the MountTarget
  final String fileSystemId;
  /// The mount target's IPv4 address
  final String ipAddress;
  /// UUID v4 used to identify the MountTarget
  final String mountTargetId;
  /// The SMB server's Fully Qualified Domain Name, FQDN
  final String? smbServerFqdn;

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
      fileSystemId: map['fileSystemId'] as String,
      ipAddress: map['ipAddress'] as String,
      mountTargetId: map['mountTargetId'] as String,
      smbServerFqdn: map['smbServerFqdn'] == null ? null : map['smbServerFqdn'] as String,
    );
  }
}

