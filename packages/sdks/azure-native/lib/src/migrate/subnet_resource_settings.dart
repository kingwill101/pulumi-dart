// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nsg_reference.dart';

/// Defines the virtual network subnets resource settings.
class SubnetResourceSettings {
  /// Gets or sets address prefix for the subnet.
  final pulumi.Input<String>? addressPrefix;
  /// Gets or sets the Subnet name.
  final pulumi.Input<String>? name;
  /// Defines reference to NSG.
  final pulumi.Input<NsgReference>? networkSecurityGroup;

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
      'networkSecurityGroup': ?pulumi.Input.mapOptionalInputValue<NsgReference, Map<String, dynamic>>(networkSecurityGroup, (value) => value.toMap()),
    };
  }

  factory SubnetResourceSettings.fromMap(Map<String, dynamic> map) {
    return SubnetResourceSettings(
      addressPrefix: (() { final guardedValue = map['addressPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkSecurityGroup: (() { final guardedValue = map['networkSecurityGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NsgReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

