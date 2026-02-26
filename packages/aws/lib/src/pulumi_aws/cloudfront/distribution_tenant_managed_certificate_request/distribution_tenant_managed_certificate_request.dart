// ignore_for_file: unused_element, unnecessary_cast

class DistributionTenantManagedCertificateRequest {
  /// Certificate transparency logging preference. Valid values: <span pulumi-lang-nodejs="`enabled`" pulumi-lang-dotnet="`Enabled`" pulumi-lang-go="`enabled`" pulumi-lang-python="`enabled`" pulumi-lang-yaml="`enabled`" pulumi-lang-java="`enabled`">`enabled`</span>, <span pulumi-lang-nodejs="`disabled`" pulumi-lang-dotnet="`Disabled`" pulumi-lang-go="`disabled`" pulumi-lang-python="`disabled`" pulumi-lang-yaml="`disabled`" pulumi-lang-java="`disabled`">`disabled`</span>.
  final String? certificateTransparencyLoggingPreference;

  /// Primary domain name for the certificate.
  final String? primaryDomainName;

  /// Host for validation token. Valid values: <span pulumi-lang-nodejs="`cloudfront`" pulumi-lang-dotnet="`Cloudfront`" pulumi-lang-go="`cloudfront`" pulumi-lang-python="`cloudfront`" pulumi-lang-yaml="`cloudfront`" pulumi-lang-java="`cloudfront`">`cloudfront`</span>, <span pulumi-lang-nodejs="`domain`" pulumi-lang-dotnet="`Domain`" pulumi-lang-go="`domain`" pulumi-lang-python="`domain`" pulumi-lang-yaml="`domain`" pulumi-lang-java="`domain`">`domain`</span>.
  final String? validationTokenHost;

  DistributionTenantManagedCertificateRequest({
    this.certificateTransparencyLoggingPreference,
    this.primaryDomainName,
    this.validationTokenHost,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final certificateTransparencyLoggingPreferenceValue =
        certificateTransparencyLoggingPreference;
    if (certificateTransparencyLoggingPreferenceValue != null) {
      map['certificateTransparencyLoggingPreference'] =
          certificateTransparencyLoggingPreferenceValue;
    }
    final primaryDomainNameValue = primaryDomainName;
    if (primaryDomainNameValue != null) {
      map['primaryDomainName'] = primaryDomainNameValue;
    }
    final validationTokenHostValue = validationTokenHost;
    if (validationTokenHostValue != null) {
      map['validationTokenHost'] = validationTokenHostValue;
    }
    return map;
  }

  factory DistributionTenantManagedCertificateRequest.fromMap(
      Map<String, dynamic> map) {
    return DistributionTenantManagedCertificateRequest(
      certificateTransparencyLoggingPreference:
          map['certificateTransparencyLoggingPreference'] == null
              ? null
              : map['certificateTransparencyLoggingPreference'] as String,
      primaryDomainName: map['primaryDomainName'] == null
          ? null
          : map['primaryDomainName'] as String,
      validationTokenHost: map['validationTokenHost'] == null
          ? null
          : map['validationTokenHost'] as String,
    );
  }
}
