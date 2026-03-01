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
    pulumi.Output<String>? ciphertextBlob,
    pulumi.Output<Map<String, String>>? encryptionContext,
    pulumi.Output<String>? keyId,
    pulumi.Output<String>? plaintext,
  }) :
      ciphertextBlob = pulumi.Input.asOptionalInput<String>(ciphertextBlob),
      encryptionContext = pulumi.Input.asOptionalInput<Map<String, String>>(encryptionContext),
      keyId = pulumi.Input.asOptionalInput<String>(keyId),
      plaintext = pulumi.Input.asOptionalInput<String>(plaintext);

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
      ciphertextBlob: map['ciphertextBlob'] == null ? null : pulumi.Output.create<String>(map['ciphertextBlob'] as String),
      encryptionContext: map['encryptionContext'] == null ? null : pulumi.Output.create<Map<String, String>>((map['encryptionContext'] as Map).cast<String, String>()),
      keyId: map['keyId'] == null ? null : pulumi.Output.create<String>(map['keyId'] as String),
      plaintext: map['plaintext'] == null ? null : pulumi.Output.create<String>(map['plaintext'] as String),
    );
  }
}

