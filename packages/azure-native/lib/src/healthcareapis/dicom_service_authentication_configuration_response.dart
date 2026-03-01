// ignore_for_file: unused_element, unnecessary_cast


/// Authentication configuration information
class DicomServiceAuthenticationConfigurationResponse {
  /// The audiences for the service
  final List<String> audiences;
  /// The authority url for the service
  final String authority;

  /// Creates a new [DicomServiceAuthenticationConfigurationResponse].
  /// [audiences] The audiences for the service
  /// [authority] The authority url for the service
  DicomServiceAuthenticationConfigurationResponse({
    required this.audiences,
    required this.authority,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audiences': audiences,
      'authority': authority,
    };
  }

  factory DicomServiceAuthenticationConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return DicomServiceAuthenticationConfigurationResponse(
      audiences: (map['audiences'] as List).cast<String>(),
      authority: map['authority'] as String,
    );
  }
}

