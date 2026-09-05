// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DistributionTenantManagedCertificateRequest {
  /// Certificate transparency logging preference. Valid values: `enabled`, `disabled`.
  final pulumi.Input<String?>? certificateTransparencyLoggingPreference;
  /// Primary domain name for the certificate.
  final pulumi.Input<String?>? primaryDomainName;
  /// Host for validation token. Valid values: `cloudfront`, `self-hosted`.
  final pulumi.Input<String?>? validationTokenHost;

  /// Creates a new [DistributionTenantManagedCertificateRequest].
  /// [certificateTransparencyLoggingPreference] Certificate transparency logging preference. Valid values: `enabled`, `disabled`.
  /// [primaryDomainName] Primary domain name for the certificate.
  /// [validationTokenHost] Host for validation token. Valid values: `cloudfront`, `self-hosted`.
  const DistributionTenantManagedCertificateRequest({
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
      certificateTransparencyLoggingPreference: (() { final guardedValue = map['certificateTransparencyLoggingPreference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryDomainName: (() { final guardedValue = map['primaryDomainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validationTokenHost: (() { final guardedValue = map['validationTokenHost']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
