// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GrantConstraint {
  /// A list of key-value pairs that must match the encryption context in subsequent cryptographic operation requests. The grant allows the operation only when the encryption context in the request is the same as the encryption context specified in this constraint. Conflicts with `encryption_context_subset`.
  final pulumi.Input<Map<String, String>>? encryptionContextEquals;
  /// A list of key-value pairs that must be included in the encryption context of subsequent cryptographic operation requests. The grant allows the cryptographic operation only when the encryption context in the request includes the key-value pairs specified in this constraint, although it can include additional key-value pairs. Conflicts with `encryption_context_equals`.
  final pulumi.Input<Map<String, String>>? encryptionContextSubset;

  /// Creates a new [GrantConstraint].
  /// [encryptionContextEquals] A list of key-value pairs that must match the encryption context in subsequent cryptographic operation requests. The grant allows the operation only when the encryption context in the request is the same as the encryption context specified in this constraint. Conflicts with `encryption_context_subset`.
  /// [encryptionContextSubset] A list of key-value pairs that must be included in the encryption context of subsequent cryptographic operation requests. The grant allows the cryptographic operation only when the encryption context in the request includes the key-value pairs specified in this constraint, although it can include additional key-value pairs. Conflicts with `encryption_context_equals`.
  const GrantConstraint({
    this.encryptionContextEquals,
    this.encryptionContextSubset,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionContextEquals': ?encryptionContextEquals,
      'encryptionContextSubset': ?encryptionContextSubset,
    };
  }

  factory GrantConstraint.fromMap(Map<String, dynamic> map) {
    return GrantConstraint(
      encryptionContextEquals: (() { final guardedValue = map['encryptionContextEquals']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      encryptionContextSubset: (() { final guardedValue = map['encryptionContextSubset']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

