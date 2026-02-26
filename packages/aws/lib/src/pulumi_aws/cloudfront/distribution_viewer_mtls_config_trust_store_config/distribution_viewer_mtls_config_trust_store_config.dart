// ignore_for_file: unused_element, unnecessary_cast

class DistributionViewerMtlsConfigTrustStoreConfig {
  /// Whether to advertise the trust store CA names to clients. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? advertiseTrustStoreCaNames;

  /// Whether to ignore certificate expiry for viewer mTLS. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? ignoreCertificateExpiry;

  /// Identifier of the trust store to use for viewer mTLS.
  final String trustStoreId;

  DistributionViewerMtlsConfigTrustStoreConfig({
    this.advertiseTrustStoreCaNames,
    this.ignoreCertificateExpiry,
    required this.trustStoreId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final advertiseTrustStoreCaNamesValue = advertiseTrustStoreCaNames;
    if (advertiseTrustStoreCaNamesValue != null) {
      map['advertiseTrustStoreCaNames'] = advertiseTrustStoreCaNamesValue;
    }
    final ignoreCertificateExpiryValue = ignoreCertificateExpiry;
    if (ignoreCertificateExpiryValue != null) {
      map['ignoreCertificateExpiry'] = ignoreCertificateExpiryValue;
    }
    map['trustStoreId'] = trustStoreId;
    return map;
  }

  factory DistributionViewerMtlsConfigTrustStoreConfig.fromMap(
      Map<String, dynamic> map) {
    return DistributionViewerMtlsConfigTrustStoreConfig(
      advertiseTrustStoreCaNames: map['advertiseTrustStoreCaNames'] == null
          ? null
          : map['advertiseTrustStoreCaNames'] as bool,
      ignoreCertificateExpiry: map['ignoreCertificateExpiry'] == null
          ? null
          : map['ignoreCertificateExpiry'] as bool,
      trustStoreId: map['trustStoreId'] as String,
    );
  }
}
