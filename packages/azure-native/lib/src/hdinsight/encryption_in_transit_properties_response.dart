// ignore_for_file: unused_element, unnecessary_cast


/// The encryption-in-transit properties.
class EncryptionInTransitPropertiesResponse {
  /// Indicates whether or not inter cluster node communication is encrypted in transit.
  final bool? isEncryptionInTransitEnabled;

  /// Creates a new [EncryptionInTransitPropertiesResponse].
  /// [isEncryptionInTransitEnabled] Indicates whether or not inter cluster node communication is encrypted in transit.
  EncryptionInTransitPropertiesResponse({
    this.isEncryptionInTransitEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isEncryptionInTransitEnabled': ?isEncryptionInTransitEnabled,
    };
  }

  factory EncryptionInTransitPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionInTransitPropertiesResponse(
      isEncryptionInTransitEnabled: map['isEncryptionInTransitEnabled'] == null ? null : map['isEncryptionInTransitEnabled'] as bool,
    );
  }
}

