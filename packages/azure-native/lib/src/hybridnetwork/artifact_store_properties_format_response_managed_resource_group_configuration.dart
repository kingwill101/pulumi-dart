// ignore_for_file: unused_element, unnecessary_cast


class ArtifactStorePropertiesFormatResponseManagedResourceGroupConfiguration {
  /// The managed resource group location.
  final String? location;
  /// The managed resource group name.
  final String? name;

  /// Creates a new [ArtifactStorePropertiesFormatResponseManagedResourceGroupConfiguration].
  /// [location] The managed resource group location.
  /// [name] The managed resource group name.
  ArtifactStorePropertiesFormatResponseManagedResourceGroupConfiguration({
    this.location,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
    };
  }

  factory ArtifactStorePropertiesFormatResponseManagedResourceGroupConfiguration.fromMap(Map<String, dynamic> map) {
    return ArtifactStorePropertiesFormatResponseManagedResourceGroupConfiguration(
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

