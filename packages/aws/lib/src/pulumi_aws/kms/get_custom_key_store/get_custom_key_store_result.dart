// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getCustomKeyStore.
class GetCustomKeyStoreResult {
  final String cloudHsmClusterId;

  /// Indicates whether the custom key store is connected to its CloudHSM cluster.
  final String connectionState;

  /// The date and time when the custom key store was created.
  final String creationDate;
  final String customKeyStoreId;
  final String customKeyStoreName;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  /// The trust anchor certificate of the associated CloudHSM cluster.
  final String trustAnchorCertificate;

  GetCustomKeyStoreResult({
    required this.cloudHsmClusterId,
    required this.connectionState,
    required this.creationDate,
    required this.customKeyStoreId,
    required this.customKeyStoreName,
    required this.id,
    required this.region,
    required this.trustAnchorCertificate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudHsmClusterId'] = cloudHsmClusterId;
    map['connectionState'] = connectionState;
    map['creationDate'] = creationDate;
    map['customKeyStoreId'] = customKeyStoreId;
    map['customKeyStoreName'] = customKeyStoreName;
    map['id'] = id;
    map['region'] = region;
    map['trustAnchorCertificate'] = trustAnchorCertificate;
    return map;
  }

  factory GetCustomKeyStoreResult.fromMap(Map<String, dynamic> map) {
    return GetCustomKeyStoreResult(
      cloudHsmClusterId: map['cloudHsmClusterId'] as String,
      connectionState: map['connectionState'] as String,
      creationDate: map['creationDate'] as String,
      customKeyStoreId: map['customKeyStoreId'] as String,
      customKeyStoreName: map['customKeyStoreName'] as String,
      id: map['id'] as String,
      region: map['region'] as String,
      trustAnchorCertificate: map['trustAnchorCertificate'] as String,
    );
  }
}
