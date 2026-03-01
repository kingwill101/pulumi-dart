// ignore_for_file: unused_element, unnecessary_cast


/// Response options.
class ResourceProviderManifestPropertiesResponseOptionsResponse {
  final String? serviceClientOptionsType;

  /// Creates a new [ResourceProviderManifestPropertiesResponseOptionsResponse].
  /// [serviceClientOptionsType] Optional.
  ResourceProviderManifestPropertiesResponseOptionsResponse({
    this.serviceClientOptionsType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceClientOptionsType': ?serviceClientOptionsType,
    };
  }

  factory ResourceProviderManifestPropertiesResponseOptionsResponse.fromMap(Map<String, dynamic> map) {
    return ResourceProviderManifestPropertiesResponseOptionsResponse(
      serviceClientOptionsType: map['serviceClientOptionsType'] == null ? null : map['serviceClientOptionsType'] as String,
    );
  }
}

