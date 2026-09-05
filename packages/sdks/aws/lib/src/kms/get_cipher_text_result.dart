// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCipherText.
class GetCipherTextResult {
  /// Base64 encoded ciphertext
  final String? ciphertextBlob;
  final Map<String, String>? context;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? keyId;
  final String? plaintext;
  final String? region;

  /// Creates a new [GetCipherTextResult].
  /// [ciphertextBlob] Base64 encoded ciphertext
  /// [context] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyId] Optional.
  /// [plaintext] Optional.
  /// [region] Optional.
  const GetCipherTextResult({
    this.ciphertextBlob,
    this.context,
    this.id,
    this.keyId,
    this.plaintext,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ciphertextBlob': ?ciphertextBlob,
      'context': ?context,
      'id': ?id,
      'keyId': ?keyId,
      'plaintext': ?plaintext,
      'region': ?region,
    };
  }

  factory GetCipherTextResult.fromMap(Map<String, dynamic> map) {
    return GetCipherTextResult(
      ciphertextBlob: (() { final guardedValue = map['ciphertextBlob']; if (guardedValue == null) return null; return guardedValue as String; })(),
      context: (() { final guardedValue = map['context']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyId: (() { final guardedValue = map['keyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      plaintext: (() { final guardedValue = map['plaintext']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
