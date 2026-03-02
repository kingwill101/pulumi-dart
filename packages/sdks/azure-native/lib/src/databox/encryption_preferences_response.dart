// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Preferences related to the Encryption.
class EncryptionPreferencesResponse {
  /// Defines secondary layer of software-based encryption enablement.
  final pulumi.Input<String>? doubleEncryption;
  /// Defines Hardware level encryption (Only for disk)
  final pulumi.Input<String>? hardwareEncryption;

  /// Creates a new [EncryptionPreferencesResponse].
  /// [doubleEncryption] Defines secondary layer of software-based encryption enablement.
  /// [hardwareEncryption] Defines Hardware level encryption (Only for disk)
  EncryptionPreferencesResponse({
    this.doubleEncryption,
    this.hardwareEncryption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'doubleEncryption': ?doubleEncryption,
      'hardwareEncryption': ?hardwareEncryption,
    };
  }

  factory EncryptionPreferencesResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionPreferencesResponse(
      doubleEncryption: map['doubleEncryption'] == null ? null : (map['doubleEncryption']! as String).input(),
      hardwareEncryption: map['hardwareEncryption'] == null ? null : (map['hardwareEncryption']! as String).input(),
    );
  }
}

