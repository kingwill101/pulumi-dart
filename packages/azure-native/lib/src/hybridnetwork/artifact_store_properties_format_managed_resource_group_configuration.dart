// ignore_for_file: unused_element, unnecessary_cast


class ArtifactStorePropertiesFormatManagedResourceGroupConfiguration {
  /// The managed resource group location.
  final String? location;
  /// The managed resource group name.
  final String? name;

  /// Creates a new [ArtifactStorePropertiesFormatManagedResourceGroupConfiguration].
  /// [location] The managed resource group location.
  /// [name] The managed resource group name.
  ArtifactStorePropertiesFormatManagedResourceGroupConfiguration({
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
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

