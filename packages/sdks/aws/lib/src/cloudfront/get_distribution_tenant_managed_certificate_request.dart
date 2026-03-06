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
  const GetDistributionTenantManagedCertificateRequest({
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
      certificateTransparencyLoggingPreference: pulumi.Input.fromValue(map['certificateTransparencyLoggingPreference'] as String),
      primaryDomainName: pulumi.Input.fromValue(map['primaryDomainName'] as String),
      validationTokenHost: pulumi.Input.fromValue(map['validationTokenHost'] as String),
    );
  }
}

