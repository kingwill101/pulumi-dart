// ignore_for_file: unused_element, unnecessary_cast

class KeyRegistrationKeyRegistration {
  /// Whether the key is set as the default key for encryption and decryption use.
  final bool? defaultKey;

  /// ARN of the AWS KMS key that is registered for encryption and decryption use.
  final String keyArn;

  KeyRegistrationKeyRegistration({
    this.defaultKey,
    required this.keyArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultKeyValue = defaultKey;
    if (defaultKeyValue != null) {
      map['defaultKey'] = defaultKeyValue;
    }
    map['keyArn'] = keyArn;
    return map;
  }

  factory KeyRegistrationKeyRegistration.fromMap(Map<String, dynamic> map) {
    return KeyRegistrationKeyRegistration(
      defaultKey: map['defaultKey'] == null ? null : map['defaultKey'] as bool,
      keyArn: map['keyArn'] as String,
    );
  }
}
