// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Network Adapter configuration of a DataBox.
class ApplianceNetworkConfigurationResponse {
  /// Mac Address.
  final pulumi.Input<String> macAddress;
  /// Name of the network.
  final pulumi.Input<String> name;

  /// Creates a new [ApplianceNetworkConfigurationResponse].
  /// [macAddress] Mac Address.
  /// [name] Name of the network.
  ApplianceNetworkConfigurationResponse({
    required this.macAddress,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'macAddress': macAddress,
      'name': name,
    };
  }

  factory ApplianceNetworkConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ApplianceNetworkConfigurationResponse(
      macAddress: pulumi.Input.fromValue(map['macAddress'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

