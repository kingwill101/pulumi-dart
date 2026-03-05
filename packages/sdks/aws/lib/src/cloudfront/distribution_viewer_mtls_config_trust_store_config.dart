// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DistributionViewerMtlsConfigTrustStoreConfig {
  /// Whether to advertise the trust store CA names to clients. Defaults to `false`.
  final pulumi.Input<bool>? advertiseTrustStoreCaNames;
  /// Whether to ignore certificate expiry for viewer mTLS. Defaults to `false`.
  final pulumi.Input<bool>? ignoreCertificateExpiry;
  /// Identifier of the trust store to use for viewer mTLS.
  final pulumi.Input<String> trustStoreId;

  /// Creates a new [DistributionViewerMtlsConfigTrustStoreConfig].
  /// [advertiseTrustStoreCaNames] Whether to advertise the trust store CA names to clients. Defaults to `false`.
  /// [ignoreCertificateExpiry] Whether to ignore certificate expiry for viewer mTLS. Defaults to `false`.
  /// [trustStoreId] Identifier of the trust store to use for viewer mTLS.
  DistributionViewerMtlsConfigTrustStoreConfig({
    this.advertiseTrustStoreCaNames,
    this.ignoreCertificateExpiry,
    required this.trustStoreId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advertiseTrustStoreCaNames': ?advertiseTrustStoreCaNames,
      'ignoreCertificateExpiry': ?ignoreCertificateExpiry,
      'trustStoreId': trustStoreId,
    };
  }

  factory DistributionViewerMtlsConfigTrustStoreConfig.fromMap(Map<String, dynamic> map) {
    return DistributionViewerMtlsConfigTrustStoreConfig(
      advertiseTrustStoreCaNames: (() { final guardedValue = map['advertiseTrustStoreCaNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ignoreCertificateExpiry: (() { final guardedValue = map['ignoreCertificateExpiry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      trustStoreId: pulumi.Input.fromValue(map['trustStoreId'] as String),
    );
  }
}

