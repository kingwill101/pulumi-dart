// ignore_for_file: unused_element, unnecessary_cast

import 'nsg_reference_response.dart';

/// Defines the virtual network subnets resource settings.
class SubnetResourceSettingsResponse {
  /// Gets or sets address prefix for the subnet.
  final String? addressPrefix;
  /// Gets or sets the Subnet name.
  final String? name;
  /// Defines reference to NSG.
  final NsgReferenceResponse? networkSecurityGroup;

  /// Creates a new [SubnetResourceSettingsResponse].
  /// [addressPrefix] Gets or sets address prefix for the subnet.
  /// [name] Gets or sets the Subnet name.
  /// [networkSecurityGroup] Defines reference to NSG.
  SubnetResourceSettingsResponse({
    this.addressPrefix,
    this.name,
    this.networkSecurityGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': ?addressPrefix,
      'name': ?name,
      'networkSecurityGroup': ?networkSecurityGroup == null ? null : networkSecurityGroup!.toMap(),
    };
  }

  factory SubnetResourceSettingsResponse.fromMap(Map<String, dynamic> map) {
    return SubnetResourceSettingsResponse(
      addressPrefix: map['addressPrefix'] == null ? null : map['addressPrefix'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      networkSecurityGroup: map['networkSecurityGroup'] == null ? null : NsgReferenceResponse.fromMap((map['networkSecurityGroup'] as Map).cast<String, dynamic>()),
    );
  }
}

