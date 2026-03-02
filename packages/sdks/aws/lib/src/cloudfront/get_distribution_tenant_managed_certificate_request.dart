// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDistributionTenantManagedCertificateRequest {
  final pulumi.Input<String> certificateTransparencyLoggingPreference;
  final pulumi.Input<String> primaryDomainName;
  final pulumi.Input<String> validationTokenHost;

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
      certificateTransparencyLoggingPreference: (map['certificateTransparencyLoggingPreference'] as String).input(),
      primaryDomainName: (map['primaryDomainName'] as String).input(),
      validationTokenHost: (map['validationTokenHost'] as String).input(),
    );
  }
}

