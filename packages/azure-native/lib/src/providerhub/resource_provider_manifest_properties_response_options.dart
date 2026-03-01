// ignore_for_file: unused_element, unnecessary_cast


/// Response options.
class ResourceProviderManifestPropertiesResponseOptions {
  final String? serviceClientOptionsType;

  /// Creates a new [ResourceProviderManifestPropertiesResponseOptions].
  /// [serviceClientOptionsType] Optional.
  ResourceProviderManifestPropertiesResponseOptions({
    this.serviceClientOptionsType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceClientOptionsType': ?serviceClientOptionsType,
    };
  }

  factory ResourceProviderManifestPropertiesResponseOptions.fromMap(Map<String, dynamic> map) {
    return ResourceProviderManifestPropertiesResponseOptions(
      serviceClientOptionsType: map['serviceClientOptionsType'] == null ? null : map['serviceClientOptionsType'] as String,
    );
  }
}

