// ignore_for_file: unused_element, unnecessary_cast

import 'asymmetric_encrypted_secret_response.dart';

/// Symmetric key for authentication.
class SymmetricKeyResponse {
  /// Connection string based on the symmetric key.
  final AsymmetricEncryptedSecretResponse? connectionString;

  /// Creates a new [SymmetricKeyResponse].
  /// [connectionString] Connection string based on the symmetric key.
  SymmetricKeyResponse({
    this.connectionString,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': ?connectionString == null ? null : connectionString!.toMap(),
    };
  }

  factory SymmetricKeyResponse.fromMap(Map<String, dynamic> map) {
    return SymmetricKeyResponse(
      connectionString: map['connectionString'] == null ? null : AsymmetricEncryptedSecretResponse.fromMap((map['connectionString'] as Map).cast<String, dynamic>()),
    );
  }
}

