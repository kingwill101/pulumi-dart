// ignore_for_file: unused_element, unnecessary_cast

class ListenerMutualAuthentication2 {
  /// Valid values are <span pulumi-lang-nodejs="`off`" pulumi-lang-dotnet="`Off`" pulumi-lang-go="`off`" pulumi-lang-python="`off`" pulumi-lang-yaml="`off`" pulumi-lang-java="`off`">`off`</span> and <span pulumi-lang-nodejs="`on`" pulumi-lang-dotnet="`On`" pulumi-lang-go="`on`" pulumi-lang-python="`on`" pulumi-lang-yaml="`on`" pulumi-lang-java="`on`">`on`</span>.
  final String? advertiseTrustStoreCaNames;

  /// Whether client certificate expiry is ignored.
  /// Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? ignoreClientCertificateExpiry;

  /// Valid values are <span pulumi-lang-nodejs="`off`" pulumi-lang-dotnet="`Off`" pulumi-lang-go="`off`" pulumi-lang-python="`off`" pulumi-lang-yaml="`off`" pulumi-lang-java="`off`">`off`</span>, <span pulumi-lang-nodejs="`passthrough`" pulumi-lang-dotnet="`Passthrough`" pulumi-lang-go="`passthrough`" pulumi-lang-python="`passthrough`" pulumi-lang-yaml="`passthrough`" pulumi-lang-java="`passthrough`">`passthrough`</span>, and <span pulumi-lang-nodejs="`verify`" pulumi-lang-dotnet="`Verify`" pulumi-lang-go="`verify`" pulumi-lang-python="`verify`" pulumi-lang-yaml="`verify`" pulumi-lang-java="`verify`">`verify`</span>.
  final String mode;

  /// ARN of the elbv2 Trust Store.
  final String? trustStoreArn;

  ListenerMutualAuthentication2({
    this.advertiseTrustStoreCaNames,
    this.ignoreClientCertificateExpiry,
    required this.mode,
    this.trustStoreArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final advertiseTrustStoreCaNamesValue = advertiseTrustStoreCaNames;
    if (advertiseTrustStoreCaNamesValue != null) {
      map['advertiseTrustStoreCaNames'] = advertiseTrustStoreCaNamesValue;
    }
    final ignoreClientCertificateExpiryValue = ignoreClientCertificateExpiry;
    if (ignoreClientCertificateExpiryValue != null) {
      map['ignoreClientCertificateExpiry'] = ignoreClientCertificateExpiryValue;
    }
    map['mode'] = mode;
    final trustStoreArnValue = trustStoreArn;
    if (trustStoreArnValue != null) {
      map['trustStoreArn'] = trustStoreArnValue;
    }
    return map;
  }

  factory ListenerMutualAuthentication2.fromMap(Map<String, dynamic> map) {
    return ListenerMutualAuthentication2(
      advertiseTrustStoreCaNames: map['advertiseTrustStoreCaNames'] == null
          ? null
          : map['advertiseTrustStoreCaNames'] as String,
      ignoreClientCertificateExpiry:
          map['ignoreClientCertificateExpiry'] == null
              ? null
              : map['ignoreClientCertificateExpiry'] as bool,
      mode: map['mode'] as String,
      trustStoreArn:
          map['trustStoreArn'] == null ? null : map['trustStoreArn'] as String,
    );
  }
}
