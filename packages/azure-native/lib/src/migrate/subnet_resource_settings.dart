// ignore_for_file: unused_element, unnecessary_cast

import 'nsg_reference.dart';

/// Defines the virtual network subnets resource settings.
class SubnetResourceSettings {
  /// Gets or sets address prefix for the subnet.
  final String? addressPrefix;
  /// Gets or sets the Subnet name.
  final String? name;
  /// Defines reference to NSG.
  final NsgReference? networkSecurityGroup;

  /// Creates a new [SubnetResourceSettings].
  /// [addressPrefix] Gets or sets address prefix for the subnet.
  /// [name] Gets or sets the Subnet name.
  /// [networkSecurityGroup] Defines reference to NSG.
  SubnetResourceSettings({
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

  factory SubnetResourceSettings.fromMap(Map<String, dynamic> map) {
    return SubnetResourceSettings(
      addressPrefix: map['addressPrefix'] == null ? null : map['addressPrefix'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      networkSecurityGroup: map['networkSecurityGroup'] == null ? null : NsgReference.fromMap((map['networkSecurityGroup'] as Map).cast<String, dynamic>()),
    );
  }
}

