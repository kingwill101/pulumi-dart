// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KeyRegistrationKeyRegistration {
  /// Whether the key is set as the default key for encryption and decryption use.
  final pulumi.Input<bool>? defaultKey;
  /// ARN of the AWS KMS key that is registered for encryption and decryption use.
  final pulumi.Input<String> keyArn;

  /// Creates a new [KeyRegistrationKeyRegistration].
  /// [defaultKey] Whether the key is set as the default key for encryption and decryption use.
  /// [keyArn] ARN of the AWS KMS key that is registered for encryption and decryption use.
  KeyRegistrationKeyRegistration({
    this.defaultKey,
    required this.keyArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultKey': ?defaultKey,
      'keyArn': keyArn,
    };
  }

  factory KeyRegistrationKeyRegistration.fromMap(Map<String, dynamic> map) {
    return KeyRegistrationKeyRegistration(
      defaultKey: (() { final guardedValue = map['defaultKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      keyArn: pulumi.Input.fromValue(map['keyArn'] as String),
    );
  }
}

