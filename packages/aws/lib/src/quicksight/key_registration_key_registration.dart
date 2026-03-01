// ignore_for_file: unused_element, unnecessary_cast


class KeyRegistrationKeyRegistration {
  /// Whether the key is set as the default key for encryption and decryption use.
  final bool? defaultKey;
  /// ARN of the AWS KMS key that is registered for encryption and decryption use.
  final String keyArn;

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
      defaultKey: map['defaultKey'] == null ? null : map['defaultKey'] as bool,
      keyArn: map['keyArn'] as String,
    );
  }
}

