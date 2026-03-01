// ignore_for_file: unused_element, unnecessary_cast


class GetServiceNatIpConfiguration {
  /// The name of the private link service.
  final String name;
  /// Value that indicates if the IP configuration is the primary configuration or not.
  final bool primary;
  /// The private IP address of the NAT IP configuration.
  final String privateIpAddress;
  /// The version of the IP Protocol.
  final String privateIpAddressVersion;
  /// The ID of the subnet to be used by the service.
  final String subnetId;

  /// Creates a new [GetServiceNatIpConfiguration].
  /// [name] The name of the private link service.
  /// [primary] Value that indicates if the IP configuration is the primary configuration or not.
  /// [privateIpAddress] The private IP address of the NAT IP configuration.
  /// [privateIpAddressVersion] The version of the IP Protocol.
  /// [subnetId] The ID of the subnet to be used by the service.
  GetServiceNatIpConfiguration({
    required this.name,
    required this.primary,
    required this.privateIpAddress,
    required this.privateIpAddressVersion,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'primary': primary,
      'privateIpAddress': privateIpAddress,
      'privateIpAddressVersion': privateIpAddressVersion,
      'subnetId': subnetId,
    };
  }

  factory GetServiceNatIpConfiguration.fromMap(Map<String, dynamic> map) {
    return GetServiceNatIpConfiguration(
      name: map['name'] as String,
      primary: map['primary'] as bool,
      privateIpAddress: map['privateIpAddress'] as String,
      privateIpAddressVersion: map['privateIpAddressVersion'] as String,
      subnetId: map['subnetId'] as String,
    );
  }
}

