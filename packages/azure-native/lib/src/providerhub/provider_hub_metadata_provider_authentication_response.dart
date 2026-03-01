// ignore_for_file: unused_element, unnecessary_cast


/// The provider authentication.
class ProviderHubMetadataProviderAuthenticationResponse {
  /// The allowed audiences.
  final List<String> allowedAudiences;

  /// Creates a new [ProviderHubMetadataProviderAuthenticationResponse].
  /// [allowedAudiences] The allowed audiences.
  ProviderHubMetadataProviderAuthenticationResponse({
    required this.allowedAudiences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedAudiences': allowedAudiences,
    };
  }

  factory ProviderHubMetadataProviderAuthenticationResponse.fromMap(Map<String, dynamic> map) {
    return ProviderHubMetadataProviderAuthenticationResponse(
      allowedAudiences: (map['allowedAudiences'] as List).cast<String>(),
    );
  }
}

