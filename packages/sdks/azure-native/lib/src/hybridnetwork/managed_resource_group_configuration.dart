// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Managed resource group configuration.
class ManagedResourceGroupConfiguration {
  /// Managed resource group location.
  final pulumi.Input<String>? location;
  /// Managed resource group name.
  final pulumi.Input<String>? name;

  /// Creates a new [ManagedResourceGroupConfiguration].
  /// [location] Managed resource group location.
  /// [name] Managed resource group name.
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

