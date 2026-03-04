// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Managed Resource Group configuration properties.
class ManagedResourceGroupConfigurationResponse {
  /// Managed resource group location.
  final pulumi.Input<String>? location;

  /// The NFC service will be hosted in a Managed resource group.
  final pulumi.Input<String>? name;

  /// Creates a new [ManagedResourceGroupConfigurationResponse].
  /// [location] Managed resource group location.
  /// [name] The NFC service will be hosted in a Managed resource group.
  ManagedResourceGroupConfigurationResponse({this.location, this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'location': ?location, 'name': ?name};
  }

  factory ManagedResourceGroupConfigurationResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ManagedResourceGroupConfigurationResponse(
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
