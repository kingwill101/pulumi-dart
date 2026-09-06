// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Preferences related to the Encryption.
class EncryptionPreferences {
  /// Defines secondary layer of software-based encryption enablement.
  final pulumi.Input<dynamic>? doubleEncryption;
  /// Defines Hardware level encryption (Only for disk)
  final pulumi.Input<dynamic>? hardwareEncryption;

  /// Creates a new [EncryptionPreferences].
  /// [doubleEncryption] Defines secondary layer of software-based encryption enablement.
  /// [hardwareEncryption] Defines Hardware level encryption (Only for disk)
  EncryptionPreferences({
    pulumi.Input<dynamic>? doubleEncryption,
    this.hardwareEncryption,
  }) : doubleEncryption = doubleEncryption ?? pulumi.Input.fromValue('Disabled');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'doubleEncryption': ?doubleEncryption,
      'hardwareEncryption': ?hardwareEncryption,
    };
  }

  factory EncryptionPreferences.fromMap(Map<String, dynamic> map) {
    return EncryptionPreferences(
      doubleEncryption: (() { final guardedValue = map['doubleEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      hardwareEncryption: (() { final guardedValue = map['hardwareEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
