// ignore_for_file: unused_element, unnecessary_cast


/// MachineKey of an app.
class SiteMachineKeyResponse {
  /// Algorithm used for decryption.
  final String? decryption;
  /// Decryption key.
  final String? decryptionKey;
  /// MachineKey validation.
  final String? validation;
  /// Validation key.
  final String? validationKey;

  /// Creates a new [SiteMachineKeyResponse].
  /// [decryption] Algorithm used for decryption.
  /// [decryptionKey] Decryption key.
  /// [validation] MachineKey validation.
  /// [validationKey] Validation key.
  SiteMachineKeyResponse({
    this.decryption,
    this.decryptionKey,
    this.validation,
    this.validationKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'decryption': ?decryption,
      'decryptionKey': ?decryptionKey,
      'validation': ?validation,
      'validationKey': ?validationKey,
    };
  }

  factory SiteMachineKeyResponse.fromMap(Map<String, dynamic> map) {
    return SiteMachineKeyResponse(
      decryption: map['decryption'] == null ? null : map['decryption'] as String,
      decryptionKey: map['decryptionKey'] == null ? null : map['decryptionKey'] as String,
      validation: map['validation'] == null ? null : map['validation'] as String,
      validationKey: map['validationKey'] == null ? null : map['validationKey'] as String,
    );
  }
}

