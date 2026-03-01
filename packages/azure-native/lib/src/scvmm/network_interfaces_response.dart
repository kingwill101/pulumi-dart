// ignore_for_file: unused_element, unnecessary_cast


/// Network Interface model
class NetworkInterfacesResponse {
  /// Gets the display name of the network interface as shown in the vmmServer. This is the fallback label for a NIC when the name is not set.
  final String displayName;
  /// Gets or sets the ipv4 address type.
  final String? ipv4AddressType;
  /// Gets or sets the nic ipv4 addresses.
  final List<String> ipv4Addresses;
  /// Gets or sets the ipv6 address type.
  final String? ipv6AddressType;
  /// Gets or sets the nic ipv6 addresses.
  final List<String> ipv6Addresses;
  /// Gets or sets the nic MAC address.
  final String? macAddress;
  /// Gets or sets the mac address type.
  final String? macAddressType;
  /// Gets or sets the name of the network interface.
  final String? name;
  /// Gets or sets the name of the virtual network in vmmServer that the nic is connected to.
  final String networkName;
  /// Gets or sets the nic id.
  final String? nicId;
  /// Gets or sets the ARM Id of the Microsoft.ScVmm/virtualNetwork resource to connect the nic.
  final String? virtualNetworkId;

  /// Creates a new [NetworkInterfacesResponse].
  /// [displayName] Gets the display name of the network interface as shown in the vmmServer. This is the fallback label for a NIC when the name is not set.
  /// [ipv4AddressType] Gets or sets the ipv4 address type.
  /// [ipv4Addresses] Gets or sets the nic ipv4 addresses.
  /// [ipv6AddressType] Gets or sets the ipv6 address type.
  /// [ipv6Addresses] Gets or sets the nic ipv6 addresses.
  /// [macAddress] Gets or sets the nic MAC address.
  /// [macAddressType] Gets or sets the mac address type.
  /// [name] Gets or sets the name of the network interface.
  /// [networkName] Gets or sets the name of the virtual network in vmmServer that the nic is connected to.
  /// [nicId] Gets or sets the nic id.
  /// [virtualNetworkId] Gets or sets the ARM Id of the Microsoft.ScVmm/virtualNetwork resource to connect the nic.
  NetworkInterfacesResponse({
    required this.displayName,
    this.ipv4AddressType,
    required this.ipv4Addresses,
    this.ipv6AddressType,
    required this.ipv6Addresses,
    this.macAddress,
    this.macAddressType,
    this.name,
    required this.networkName,
    this.nicId,
    this.virtualNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'ipv4AddressType': ?ipv4AddressType,
      'ipv4Addresses': ipv4Addresses,
      'ipv6AddressType': ?ipv6AddressType,
      'ipv6Addresses': ipv6Addresses,
      'macAddress': ?macAddress,
      'macAddressType': ?macAddressType,
      'name': ?name,
      'networkName': networkName,
      'nicId': ?nicId,
      'virtualNetworkId': ?virtualNetworkId,
    };
  }

  factory NetworkInterfacesResponse.fromMap(Map<String, dynamic> map) {
    return NetworkInterfacesResponse(
      displayName: map['displayName'] as String,
      ipv4AddressType: map['ipv4AddressType'] == null ? null : map['ipv4AddressType'] as String,
      ipv4Addresses: (map['ipv4Addresses'] as List).cast<String>(),
      ipv6AddressType: map['ipv6AddressType'] == null ? null : map['ipv6AddressType'] as String,
      ipv6Addresses: (map['ipv6Addresses'] as List).cast<String>(),
      macAddress: map['macAddress'] == null ? null : map['macAddress'] as String,
      macAddressType: map['macAddressType'] == null ? null : map['macAddressType'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      networkName: map['networkName'] as String,
      nicId: map['nicId'] == null ? null : map['nicId'] as String,
      virtualNetworkId: map['virtualNetworkId'] == null ? null : map['virtualNetworkId'] as String,
    );
  }
}

