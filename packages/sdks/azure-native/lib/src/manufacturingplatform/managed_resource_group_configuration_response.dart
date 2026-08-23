// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration of the managed resource group associated with the resource.
class ManagedResourceGroupConfigurationResponse {
  /// The resource group location.
  final pulumi.Input<String> location;
  /// The resource group name.
  final pulumi.Input<String> name;

  /// Creates a new [ManagedResourceGroupConfigurationResponse].
  /// [location] The resource group location.
  /// [name] The resource group name.
  const ManagedResourceGroupConfigurationResponse({
    required this.location,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'name': name,
    };
  }

  factory ManagedResourceGroupConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ManagedResourceGroupConfigurationResponse(
      location: pulumi.Input.fromValue(map['location'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
