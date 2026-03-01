// ignore_for_file: unused_element, unnecessary_cast


/// The dsts configuration.
class ResourceProviderManifestPropertiesDstsConfiguration {
  /// This is a URI property.
  final String? serviceDnsName;
  /// The service name.
  final String serviceName;

  /// Creates a new [ResourceProviderManifestPropertiesDstsConfiguration].
  /// [serviceDnsName] This is a URI property.
  /// [serviceName] The service name.
  ResourceProviderManifestPropertiesDstsConfiguration({
    this.serviceDnsName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceDnsName': ?serviceDnsName,
      'serviceName': serviceName,
    };
  }

  factory ResourceProviderManifestPropertiesDstsConfiguration.fromMap(Map<String, dynamic> map) {
    return ResourceProviderManifestPropertiesDstsConfiguration(
      serviceDnsName: map['serviceDnsName'] == null ? null : map['serviceDnsName'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}

