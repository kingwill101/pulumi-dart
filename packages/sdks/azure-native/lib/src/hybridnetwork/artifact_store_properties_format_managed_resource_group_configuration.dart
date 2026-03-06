// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ArtifactStorePropertiesFormatManagedResourceGroupConfiguration {
  /// The managed resource group location.
  final pulumi.Input<String>? location;
  /// The managed resource group name.
  final pulumi.Input<String>? name;

  /// Creates a new [ArtifactStorePropertiesFormatManagedResourceGroupConfiguration].
  /// [location] The managed resource group location.
  /// [name] The managed resource group name.
  const ArtifactStorePropertiesFormatManagedResourceGroupConfiguration({
    this.location,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
    };
  }

  factory ArtifactStorePropertiesFormatManagedResourceGroupConfiguration.fromMap(Map<String, dynamic> map) {
    return ArtifactStorePropertiesFormatManagedResourceGroupConfiguration(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

