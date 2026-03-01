// ignore_for_file: unused_element, unnecessary_cast


class GetDistributionTenantManagedCertificateRequest {
  final String certificateTransparencyLoggingPreference;
  final String primaryDomainName;
  final String validationTokenHost;

  /// Creates a new [GetDistributionTenantManagedCertificateRequest].
  /// [certificateTransparencyLoggingPreference] Required.
  /// [primaryDomainName] Required.
  /// [validationTokenHost] Required.
  GetDistributionTenantManagedCertificateRequest({
    required this.certificateTransparencyLoggingPreference,
    required this.primaryDomainName,
    required this.validationTokenHost,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateTransparencyLoggingPreference': certificateTransparencyLoggingPreference,
      'primaryDomainName': primaryDomainName,
      'validationTokenHost': validationTokenHost,
    };
  }

  factory GetDistributionTenantManagedCertificateRequest.fromMap(Map<String, dynamic> map) {
    return GetDistributionTenantManagedCertificateRequest(
      certificateTransparencyLoggingPreference: map['certificateTransparencyLoggingPreference'] as String,
      primaryDomainName: map['primaryDomainName'] as String,
      validationTokenHost: map['validationTokenHost'] as String,
    );
  }
}

