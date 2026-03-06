// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains all the information needed to mount an elastic volume
class ElasticMountTargetPropertiesResponse {
  /// The mount target's IPv4 address, used to mount the volume
  final pulumi.Input<String> ipAddress;
  /// The SMB server's Fully Qualified Domain Name, FQDN
  final pulumi.Input<String> smbServerFqdn;

  /// Creates a new [ElasticMountTargetPropertiesResponse].
  /// [ipAddress] The mount target's IPv4 address, used to mount the volume
  /// [smbServerFqdn] The SMB server's Fully Qualified Domain Name, FQDN
  const ElasticMountTargetPropertiesResponse({
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
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
      smbServerFqdn: pulumi.Input.fromValue(map['smbServerFqdn'] as String),
    );
  }
}

