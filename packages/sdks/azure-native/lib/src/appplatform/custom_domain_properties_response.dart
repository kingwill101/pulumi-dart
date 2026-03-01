// ignore_for_file: unused_element, unnecessary_cast


/// Custom domain of app resource payload.
class CustomDomainPropertiesResponse {
  /// The app name of domain.
  final String appName;
  /// The bound certificate name of domain.
  final String? certName;
  /// Provisioning state of the Domain
  final String provisioningState;
  /// The thumbprint of bound certificate.
  final String? thumbprint;

  /// Creates a new [CustomDomainPropertiesResponse].
  /// [appName] The app name of domain.
  /// [certName] The bound certificate name of domain.
  /// [provisioningState] Provisioning state of the Domain
  /// [thumbprint] The thumbprint of bound certificate.
  CustomDomainPropertiesResponse({
    required this.appName,
    this.certName,
    required this.provisioningState,
    this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appName': appName,
      'certName': ?certName,
      'provisioningState': provisioningState,
      'thumbprint': ?thumbprint,
    };
  }

  factory CustomDomainPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return CustomDomainPropertiesResponse(
      appName: map['appName'] as String,
      certName: map['certName'] == null ? null : map['certName'] as String,
      provisioningState: map['provisioningState'] as String,
      thumbprint: map['thumbprint'] == null ? null : map['thumbprint'] as String,
    );
  }
}

