// ignore_for_file: unused_element, unnecessary_cast

class GetDistributionTenantManagedCertificateRequest {
  final String certificateTransparencyLoggingPreference;
  final String primaryDomainName;
  final String validationTokenHost;

  GetDistributionTenantManagedCertificateRequest({
    required this.certificateTransparencyLoggingPreference,
    required this.primaryDomainName,
    required this.validationTokenHost,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateTransparencyLoggingPreference'] =
        certificateTransparencyLoggingPreference;
    map['primaryDomainName'] = primaryDomainName;
    map['validationTokenHost'] = validationTokenHost;
    return map;
  }

  factory GetDistributionTenantManagedCertificateRequest.fromMap(
      Map<String, dynamic> map) {
    return GetDistributionTenantManagedCertificateRequest(
      certificateTransparencyLoggingPreference:
          map['certificateTransparencyLoggingPreference'] as String,
      primaryDomainName: map['primaryDomainName'] as String,
      validationTokenHost: map['validationTokenHost'] as String,
    );
  }
}
