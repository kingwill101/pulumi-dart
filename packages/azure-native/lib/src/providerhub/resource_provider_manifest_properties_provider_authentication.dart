// ignore_for_file: unused_element, unnecessary_cast


/// The provider authentication.
class ResourceProviderManifestPropertiesProviderAuthentication {
  /// The allowed audiences.
  final List<String> allowedAudiences;

  /// Creates a new [ResourceProviderManifestPropertiesProviderAuthentication].
  /// [allowedAudiences] The allowed audiences.
  ResourceProviderManifestPropertiesProviderAuthentication({
    required this.allowedAudiences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedAudiences': allowedAudiences,
    };
  }

  factory ResourceProviderManifestPropertiesProviderAuthentication.fromMap(Map<String, dynamic> map) {
    return ResourceProviderManifestPropertiesProviderAuthentication(
      allowedAudiences: (map['allowedAudiences'] as List).cast<String>(),
    );
  }
}

