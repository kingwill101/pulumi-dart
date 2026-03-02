// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Managed Resource Group configuration properties.
class ManagedResourceGroupConfiguration {
  /// Managed resource group location.
  final pulumi.Input<String>? location;
  /// The NFC service will be hosted in a Managed resource group.
  final pulumi.Input<String>? name;

  /// Creates a new [ManagedResourceGroupConfiguration].
  /// [location] Managed resource group location.
  /// [name] The NFC service will be hosted in a Managed resource group.
  ManagedResourceGroupConfiguration({
    this.location,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
    };
  }

  factory ManagedResourceGroupConfiguration.fromMap(Map<String, dynamic> map) {
    return ManagedResourceGroupConfiguration(
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

