// ignore_for_file: unused_element, unnecessary_cast


class DistributionTenantManagedCertificateRequest {
  /// Certificate transparency logging preference. Valid values: `enabled`, `disabled`.
  final String? certificateTransparencyLoggingPreference;
  /// Primary domain name for the certificate.
  final String? primaryDomainName;
  /// Host for validation token. Valid values: `cloudfront`, `domain`.
  final String? validationTokenHost;

  /// Creates a new [DistributionTenantManagedCertificateRequest].
  /// [certificateTransparencyLoggingPreference] Certificate transparency logging preference. Valid values: `enabled`, `disabled`.
  /// [primaryDomainName] Primary domain name for the certificate.
  /// [validationTokenHost] Host for validation token. Valid values: `cloudfront`, `domain`.
  DistributionTenantManagedCertificateRequest({
    this.certificateTransparencyLoggingPreference,
    this.primaryDomainName,
    this.validationTokenHost,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateTransparencyLoggingPreference': ?certificateTransparencyLoggingPreference,
      'primaryDomainName': ?primaryDomainName,
      'validationTokenHost': ?validationTokenHost,
    };
  }

  factory DistributionTenantManagedCertificateRequest.fromMap(Map<String, dynamic> map) {
    return DistributionTenantManagedCertificateRequest(
      certificateTransparencyLoggingPreference: map['certificateTransparencyLoggingPreference'] == null ? null : map['certificateTransparencyLoggingPreference'] as String,
      primaryDomainName: map['primaryDomainName'] == null ? null : map['primaryDomainName'] as String,
      validationTokenHost: map['validationTokenHost'] == null ? null : map['validationTokenHost'] as String,
    );
  }
}

