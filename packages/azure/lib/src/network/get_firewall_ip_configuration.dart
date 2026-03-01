// ignore_for_file: unused_element, unnecessary_cast


class GetFirewallIpConfiguration {
  /// The name of the Azure Firewall.
  final String name;
  /// The private IP address associated with the Azure Firewall.
  final String privateIpAddress;
  /// The ID of the Public IP address of the Azure Firewall.
  final String publicIpAddressId;
  /// The ID of the Subnet where the Azure Firewall is deployed.
  final String subnetId;

  /// Creates a new [GetFirewallIpConfiguration].
  /// [name] The name of the Azure Firewall.
  /// [privateIpAddress] The private IP address associated with the Azure Firewall.
  /// [publicIpAddressId] The ID of the Public IP address of the Azure Firewall.
  /// [subnetId] The ID of the Subnet where the Azure Firewall is deployed.
  GetFirewallIpConfiguration({
    required this.name,
    required this.privateIpAddress,
    required this.publicIpAddressId,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'privateIpAddress': privateIpAddress,
      'publicIpAddressId': publicIpAddressId,
      'subnetId': subnetId,
    };
  }

  factory GetFirewallIpConfiguration.fromMap(Map<String, dynamic> map) {
    return GetFirewallIpConfiguration(
      name: map['name'] as String,
      privateIpAddress: map['privateIpAddress'] as String,
      publicIpAddressId: map['publicIpAddressId'] as String,
      subnetId: map['subnetId'] as String,
    );
  }
}

