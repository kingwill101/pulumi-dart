// ignore_for_file: unused_element, unnecessary_cast


/// The properties of custom domain for API portal
class ApiPortalCustomDomainPropertiesResponse {
  /// The thumbprint of bound certificate.
  final String? thumbprint;

  /// Creates a new [ApiPortalCustomDomainPropertiesResponse].
  /// [thumbprint] The thumbprint of bound certificate.
  ApiPortalCustomDomainPropertiesResponse({
    this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'thumbprint': ?thumbprint,
    };
  }

  factory ApiPortalCustomDomainPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ApiPortalCustomDomainPropertiesResponse(
      thumbprint: map['thumbprint'] == null ? null : map['thumbprint'] as String,
    );
  }
}

