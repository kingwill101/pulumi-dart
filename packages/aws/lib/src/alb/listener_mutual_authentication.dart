// ignore_for_file: unused_element, unnecessary_cast

class ListenerMutualAuthentication {
  /// Valid values are `off` and `on`.
  final String? advertiseTrustStoreCaNames;

  /// Whether client certificate expiry is ignored.
  /// Default is `false`.
  final bool? ignoreClientCertificateExpiry;

  /// Valid values are `off`, `passthrough`, and `verify`.
  final String mode;

  /// ARN of the elbv2 Trust Store.
  final String? trustStoreArn;

  /// Creates a new [ListenerMutualAuthentication].
  /// [advertiseTrustStoreCaNames] Valid values are `off` and `on`.
  /// [ignoreClientCertificateExpiry] Whether client certificate expiry is ignored.
  /// [mode] Valid values are `off`, `passthrough`, and `verify`.
  /// [trustStoreArn] ARN of the elbv2 Trust Store.
  ListenerMutualAuthentication({
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

  factory ListenerMutualAuthentication.fromMap(Map<String, dynamic> map) {
    return ListenerMutualAuthentication(
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
