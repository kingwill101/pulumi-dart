// ignore_for_file: unused_element, unnecessary_cast

import 'asymmetric_encrypted_secret.dart';

/// Symmetric key for authentication.
class SymmetricKey {
  /// Connection string based on the symmetric key.
  final AsymmetricEncryptedSecret? connectionString;

  /// Creates a new [SymmetricKey].
  /// [connectionString] Connection string based on the symmetric key.
  SymmetricKey({
    this.connectionString,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': ?connectionString == null ? null : connectionString!.toMap(),
    };
  }

  factory SymmetricKey.fromMap(Map<String, dynamic> map) {
    return SymmetricKey(
      connectionString: map['connectionString'] == null ? null : AsymmetricEncryptedSecret.fromMap((map['connectionString'] as Map).cast<String, dynamic>()),
    );
  }
}

