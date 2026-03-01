// ignore_for_file: unused_element, unnecessary_cast


/// Contains all the information needed to mount an elastic volume
class ElasticMountTargetPropertiesResponse {
  /// The mount target's IPv4 address, used to mount the volume
  final String ipAddress;
  /// The SMB server's Fully Qualified Domain Name, FQDN
  final String smbServerFqdn;

  /// Creates a new [ElasticMountTargetPropertiesResponse].
  /// [ipAddress] The mount target's IPv4 address, used to mount the volume
  /// [smbServerFqdn] The SMB server's Fully Qualified Domain Name, FQDN
  ElasticMountTargetPropertiesResponse({
    required this.ipAddress,
    required this.smbServerFqdn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ipAddress,
      'smbServerFqdn': smbServerFqdn,
    };
  }

  factory ElasticMountTargetPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ElasticMountTargetPropertiesResponse(
      ipAddress: map['ipAddress'] as String,
      smbServerFqdn: map['smbServerFqdn'] as String,
    );
  }
}

