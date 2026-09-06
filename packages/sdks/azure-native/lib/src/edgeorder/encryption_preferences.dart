// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Preferences related to the double encryption.
class EncryptionPreferences {
  /// Double encryption status as entered by the customer. It is compulsory to give this parameter if the 'Deny' or 'Disabled' policy is configured.
  final pulumi.Input<dynamic>? doubleEncryptionStatus;

  /// Creates a new [EncryptionPreferences].
  /// [doubleEncryptionStatus] Double encryption status as entered by the customer. It is compulsory to give this parameter if the 'Deny' or 'Disabled' policy is configured.
  const EncryptionPreferences({
    this.doubleEncryptionStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'doubleEncryptionStatus': ?doubleEncryptionStatus,
    };
  }

  factory EncryptionPreferences.fromMap(Map<String, dynamic> map) {
    return EncryptionPreferences(
      doubleEncryptionStatus: (() { final guardedValue = map['doubleEncryptionStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
