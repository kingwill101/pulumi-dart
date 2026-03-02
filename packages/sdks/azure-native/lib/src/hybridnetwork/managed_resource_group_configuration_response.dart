// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Managed resource group configuration.
class ManagedResourceGroupConfigurationResponse {
  /// Managed resource group location.
  final pulumi.Input<String>? location;
  /// Managed resource group name.
  final pulumi.Input<String>? name;

  /// Creates a new [ManagedResourceGroupConfigurationResponse].
  /// [location] Managed resource group location.
  /// [name] Managed resource group name.
  ManagedResourceGroupConfigurationResponse({
    this.location,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
    };
  }

  factory ManagedResourceGroupConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ManagedResourceGroupConfigurationResponse(
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

