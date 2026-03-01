// ignore_for_file: unused_element, unnecessary_cast


/// Network interface IP configuration properties.
class NetworkInterfaceIPConfigurationResponse {
  /// The list of DNS servers IP addresses.
  final List<String>? dnsServers;
  /// The value of the gateway.
  final String? gateway;
  /// The value of the IP address.
  final String? ipAddress;
  /// IP address allocation method.
  final String? ipAllocationMethod;
  /// IP address version.
  final String? ipVersion;
  /// The value of the subnet.
  final String? subnet;

  /// Creates a new [NetworkInterfaceIPConfigurationResponse].
  /// [dnsServers] The list of DNS servers IP addresses.
  /// [gateway] The value of the gateway.
  /// [ipAddress] The value of the IP address.
  /// [ipAllocationMethod] IP address allocation method.
  /// [ipVersion] IP address version.
  /// [subnet] The value of the subnet.
  NetworkInterfaceIPConfigurationResponse({
    this.dnsServers,
    this.gateway,
    this.ipAddress,
    this.ipAllocationMethod,
    this.ipVersion,
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsServers': ?dnsServers,
      'gateway': ?gateway,
      'ipAddress': ?ipAddress,
      'ipAllocationMethod': ?ipAllocationMethod,
      'ipVersion': ?ipVersion,
      'subnet': ?subnet,
    };
  }

  factory NetworkInterfaceIPConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceIPConfigurationResponse(
      dnsServers: map['dnsServers'] == null ? null : (map['dnsServers'] as List).cast<String>(),
      gateway: map['gateway'] == null ? null : map['gateway'] as String,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      ipAllocationMethod: map['ipAllocationMethod'] == null ? null : map['ipAllocationMethod'] as String,
      ipVersion: map['ipVersion'] == null ? null : map['ipVersion'] as String,
      subnet: map['subnet'] == null ? null : map['subnet'] as String,
    );
  }
}

