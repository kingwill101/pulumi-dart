// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KeyRotationPolicyAttributes {
  /// The expiration time for the new key version. It should be in ISO8601 format. Eg: 'P90D', 'P1Y'.
  final pulumi.Input<String>? expiryTime;

  /// Creates a new [KeyRotationPolicyAttributes].
  /// [expiryTime] The expiration time for the new key version. It should be in ISO8601 format. Eg: 'P90D', 'P1Y'.
  const KeyRotationPolicyAttributes({
    this.expiryTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expiryTime': ?expiryTime,
    };
  }

  factory KeyRotationPolicyAttributes.fromMap(Map<String, dynamic> map) {
    return KeyRotationPolicyAttributes(
      expiryTime: (() { final guardedValue = map['expiryTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
