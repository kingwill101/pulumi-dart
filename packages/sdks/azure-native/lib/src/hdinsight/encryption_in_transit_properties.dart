// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The encryption-in-transit properties.
class EncryptionInTransitProperties {
  /// Indicates whether or not inter cluster node communication is encrypted in transit.
  final pulumi.Input<bool>? isEncryptionInTransitEnabled;

  /// Creates a new [EncryptionInTransitProperties].
  /// [isEncryptionInTransitEnabled] Indicates whether or not inter cluster node communication is encrypted in transit.
  const EncryptionInTransitProperties({
    this.isEncryptionInTransitEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isEncryptionInTransitEnabled': ?isEncryptionInTransitEnabled,
    };
  }

  factory EncryptionInTransitProperties.fromMap(Map<String, dynamic> map) {
    return EncryptionInTransitProperties(
      isEncryptionInTransitEnabled: (() { final guardedValue = map['isEncryptionInTransitEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

