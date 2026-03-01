// ignore_for_file: unused_element, unnecessary_cast


/// Guest OS nic customization
class GuestOSNICCustomizationResponse {
  /// IP address allocation method
  final String? allocation;
  /// List of dns servers to use
  final List<String>? dnsServers;
  /// Gateway addresses assigned to nic
  final List<String>? gateway;
  /// Static ip address for nic
  final String? ipAddress;
  /// Network mask for nic
  final String? mask;
  /// primary WINS server for Windows
  final String? primaryWinsServer;
  /// secondary WINS server for Windows
  final String? secondaryWinsServer;

  /// Creates a new [GuestOSNICCustomizationResponse].
  /// [allocation] IP address allocation method
  /// [dnsServers] List of dns servers to use
  /// [gateway] Gateway addresses assigned to nic
  /// [ipAddress] Static ip address for nic
  /// [mask] Network mask for nic
  /// [primaryWinsServer] primary WINS server for Windows
  /// [secondaryWinsServer] secondary WINS server for Windows
  GuestOSNICCustomizationResponse({
    this.allocation,
    this.dnsServers,
    this.gateway,
    this.ipAddress,
    this.mask,
    this.primaryWinsServer,
    this.secondaryWinsServer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocation': ?allocation,
      'dnsServers': ?dnsServers,
      'gateway': ?gateway,
      'ipAddress': ?ipAddress,
      'mask': ?mask,
      'primaryWinsServer': ?primaryWinsServer,
      'secondaryWinsServer': ?secondaryWinsServer,
    };
  }

  factory GuestOSNICCustomizationResponse.fromMap(Map<String, dynamic> map) {
    return GuestOSNICCustomizationResponse(
      allocation: map['allocation'] == null ? null : map['allocation'] as String,
      dnsServers: map['dnsServers'] == null ? null : (map['dnsServers'] as List).cast<String>(),
      gateway: map['gateway'] == null ? null : (map['gateway'] as List).cast<String>(),
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      mask: map['mask'] == null ? null : map['mask'] as String,
      primaryWinsServer: map['primaryWinsServer'] == null ? null : map['primaryWinsServer'] as String,
      secondaryWinsServer: map['secondaryWinsServer'] == null ? null : map['secondaryWinsServer'] as String,
    );
  }
}

