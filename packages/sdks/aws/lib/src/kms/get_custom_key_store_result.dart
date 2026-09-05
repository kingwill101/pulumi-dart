// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCustomKeyStore.
class GetCustomKeyStoreResult {
  final String? cloudHsmClusterId;
  /// Indicates whether the custom key store is connected to its CloudHSM cluster.
  final String? connectionState;
  /// The date and time when the custom key store was created.
  final String? creationDate;
  final String? customKeyStoreId;
  final String? customKeyStoreName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? region;
  /// The trust anchor certificate of the associated CloudHSM cluster.
  final String? trustAnchorCertificate;

  /// Creates a new [GetCustomKeyStoreResult].
  /// [cloudHsmClusterId] Optional.
  /// [connectionState] Indicates whether the custom key store is connected to its CloudHSM cluster.
  /// [creationDate] The date and time when the custom key store was created.
  /// [customKeyStoreId] Optional.
  /// [customKeyStoreName] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  /// [trustAnchorCertificate] The trust anchor certificate of the associated CloudHSM cluster.
  const GetCustomKeyStoreResult({
    this.cloudHsmClusterId,
    this.connectionState,
    this.creationDate,
    this.customKeyStoreId,
    this.customKeyStoreName,
    this.id,
    this.region,
    this.trustAnchorCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudHsmClusterId': ?cloudHsmClusterId,
      'connectionState': ?connectionState,
      'creationDate': ?creationDate,
      'customKeyStoreId': ?customKeyStoreId,
      'customKeyStoreName': ?customKeyStoreName,
      'id': ?id,
      'region': ?region,
      'trustAnchorCertificate': ?trustAnchorCertificate,
    };
  }

  factory GetCustomKeyStoreResult.fromMap(Map<String, dynamic> map) {
    return GetCustomKeyStoreResult(
      cloudHsmClusterId: (() { final guardedValue = map['cloudHsmClusterId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectionState: (() { final guardedValue = map['connectionState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationDate: (() { final guardedValue = map['creationDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customKeyStoreId: (() { final guardedValue = map['customKeyStoreId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customKeyStoreName: (() { final guardedValue = map['customKeyStoreName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      trustAnchorCertificate: (() { final guardedValue = map['trustAnchorCertificate']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
