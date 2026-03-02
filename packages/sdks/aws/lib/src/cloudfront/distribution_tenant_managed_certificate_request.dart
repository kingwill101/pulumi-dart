// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DistributionTenantManagedCertificateRequest {
  /// Certificate transparency logging preference. Valid values: `enabled`, `disabled`.
  final pulumi.Input<String>? certificateTransparencyLoggingPreference;
  /// Primary domain name for the certificate.
  final pulumi.Input<String>? primaryDomainName;
  /// Host for validation token. Valid values: `cloudfront`, `domain`.
  final pulumi.Input<String>? validationTokenHost;

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
      certificateTransparencyLoggingPreference: map['certificateTransparencyLoggingPreference'] == null ? null : (map['certificateTransparencyLoggingPreference'] as String).input(),
      primaryDomainName: map['primaryDomainName'] == null ? null : (map['primaryDomainName'] as String).input(),
      validationTokenHost: map['validationTokenHost'] == null ? null : (map['validationTokenHost'] as String).input(),
    );
  }
}

