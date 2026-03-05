// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'asymmetric_encrypted_secret_response.dart';

/// Symmetric key for authentication.
class SymmetricKeyResponse {
  /// Connection string based on the symmetric key.
  final pulumi.Input<AsymmetricEncryptedSecretResponse>? connectionString;

  /// Creates a new [SymmetricKeyResponse].
  /// [connectionString] Connection string based on the symmetric key.
  SymmetricKeyResponse({
    this.connectionString,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': ?pulumi.Input.mapOptionalInputValue<AsymmetricEncryptedSecretResponse, Map<String, dynamic>>(connectionString, (value) => value.toMap()),
    };
  }

  factory SymmetricKeyResponse.fromMap(Map<String, dynamic> map) {
    return SymmetricKeyResponse(
      connectionString: (() { final guardedValue = map['connectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AsymmetricEncryptedSecretResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

