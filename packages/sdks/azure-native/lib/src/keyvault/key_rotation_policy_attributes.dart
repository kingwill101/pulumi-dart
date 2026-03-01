// ignore_for_file: unused_element, unnecessary_cast


class KeyRotationPolicyAttributes {
  /// The expiration time for the new key version. It should be in ISO8601 format. Eg: 'P90D', 'P1Y'.
  final String? expiryTime;

  /// Creates a new [KeyRotationPolicyAttributes].
  /// [expiryTime] The expiration time for the new key version. It should be in ISO8601 format. Eg: 'P90D', 'P1Y'.
  KeyRotationPolicyAttributes({
    this.expiryTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expiryTime': ?expiryTime,
    };
  }

  factory KeyRotationPolicyAttributes.fromMap(Map<String, dynamic> map) {
    return KeyRotationPolicyAttributes(
      expiryTime: map['expiryTime'] == null ? null : map['expiryTime'] as String,
    );
  }
}

