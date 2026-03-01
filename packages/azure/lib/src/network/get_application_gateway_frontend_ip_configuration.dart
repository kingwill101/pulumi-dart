// ignore_for_file: unused_element, unnecessary_cast


class GetApplicationGatewayFrontendIpConfiguration {
  /// The ID of the Rewrite Rule Set
  final String id;
  /// The name of this Application Gateway.
  final String name;
  /// The Static IP Address which is used.
  final String privateIpAddress;
  /// The allocation method used for the Private IP Address.
  final String privateIpAddressAllocation;
  /// The ID of the associated Private Link configuration.
  final String privateLinkConfigurationId;
  /// The name of the Private Link configuration in use by this Frontend IP Configuration.
  final String privateLinkConfigurationName;
  /// The ID of the Public IP Address which the Application Gateway will use.
  final String publicIpAddressId;
  /// The ID of the subnet the private link configuration is connected to.
  final String subnetId;

  /// Creates a new [GetApplicationGatewayFrontendIpConfiguration].
  /// [id] The ID of the Rewrite Rule Set
  /// [name] The name of this Application Gateway.
  /// [privateIpAddress] The Static IP Address which is used.
  /// [privateIpAddressAllocation] The allocation method used for the Private IP Address.
  /// [privateLinkConfigurationId] The ID of the associated Private Link configuration.
  /// [privateLinkConfigurationName] The name of the Private Link configuration in use by this Frontend IP Configuration.
  /// [publicIpAddressId] The ID of the Public IP Address which the Application Gateway will use.
  /// [subnetId] The ID of the subnet the private link configuration is connected to.
  GetApplicationGatewayFrontendIpConfiguration({
    required this.id,
    required this.name,
    required this.privateIpAddress,
    required this.privateIpAddressAllocation,
    required this.privateLinkConfigurationId,
    required this.privateLinkConfigurationName,
    required this.publicIpAddressId,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'privateIpAddress': privateIpAddress,
      'privateIpAddressAllocation': privateIpAddressAllocation,
      'privateLinkConfigurationId': privateLinkConfigurationId,
      'privateLinkConfigurationName': privateLinkConfigurationName,
      'publicIpAddressId': publicIpAddressId,
      'subnetId': subnetId,
    };
  }

  factory GetApplicationGatewayFrontendIpConfiguration.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayFrontendIpConfiguration(
      id: map['id'] as String,
      name: map['name'] as String,
      privateIpAddress: map['privateIpAddress'] as String,
      privateIpAddressAllocation: map['privateIpAddressAllocation'] as String,
      privateLinkConfigurationId: map['privateLinkConfigurationId'] as String,
      privateLinkConfigurationName: map['privateLinkConfigurationName'] as String,
      publicIpAddressId: map['publicIpAddressId'] as String,
      subnetId: map['subnetId'] as String,
    );
  }
}

