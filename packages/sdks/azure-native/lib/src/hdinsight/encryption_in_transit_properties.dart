// ignore_for_file: unused_element, unnecessary_cast


/// The encryption-in-transit properties.
class EncryptionInTransitProperties {
  /// Indicates whether or not inter cluster node communication is encrypted in transit.
  final bool? isEncryptionInTransitEnabled;

  /// Creates a new [EncryptionInTransitProperties].
  /// [isEncryptionInTransitEnabled] Indicates whether or not inter cluster node communication is encrypted in transit.
  EncryptionInTransitProperties({
    this.isEncryptionInTransitEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isEncryptionInTransitEnabled': ?isEncryptionInTransitEnabled,
    };
  }

  factory EncryptionInTransitProperties.fromMap(Map<String, dynamic> map) {
    return EncryptionInTransitProperties(
      isEncryptionInTransitEnabled: map['isEncryptionInTransitEnabled'] == null ? null : map['isEncryptionInTransitEnabled'] as bool,
    );
  }
}

