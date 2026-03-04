// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Ciphertext resources.
class CiphertextState {
  /// The ciphertext of the data key encrypted with the primary CMK version.
  final pulumi.Input<String>? ciphertextBlob;

  /// The Encryption context. If you specify this parameter here, it is also required when you call the Decrypt API operation. For more information, see [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm).
  final pulumi.Input<Map<String, String>>? encryptionContext;

  /// The globally unique ID of the CMK.
  final pulumi.Input<String>? keyId;

  /// The plaintext to be encrypted which must be encoded in Base64.
  final pulumi.Input<String>? plaintext;

  /// Creates a new [CiphertextState].
  /// [ciphertextBlob] The ciphertext of the data key encrypted with the primary CMK version.
  /// [encryptionContext] The Encryption context. If you specify this parameter here, it is also required when you call the Decrypt API operation. For more information, see [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm).
  /// [keyId] The globally unique ID of the CMK.
  /// [plaintext] The plaintext to be encrypted which must be encoded in Base64.
  CiphertextState({
    this.ciphertextBlob,
    this.encryptionContext,
    this.keyId,
    this.plaintext,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ciphertextBlob': ?ciphertextBlob,
      'encryptionContext': ?encryptionContext,
      'keyId': ?keyId,
      'plaintext': ?plaintext,
    };
  }

  factory CiphertextState.fromMap(Map<String, dynamic> map) {
    return CiphertextState(
      ciphertextBlob: (() {
        final guardedValue = map['ciphertextBlob'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      encryptionContext: (() {
        final guardedValue = map['encryptionContext'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      keyId: (() {
        final guardedValue = map['keyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      plaintext: (() {
        final guardedValue = map['plaintext'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
