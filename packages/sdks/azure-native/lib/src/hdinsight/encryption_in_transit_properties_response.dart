// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The encryption-in-transit properties.
class EncryptionInTransitPropertiesResponse {
  /// Indicates whether or not inter cluster node communication is encrypted in transit.
  final pulumi.Input<bool>? isEncryptionInTransitEnabled;

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
      isEncryptionInTransitEnabled: map['isEncryptionInTransitEnabled'] == null ? null : (map['isEncryptionInTransitEnabled'] as bool).input(),
    );
  }
}

