// ignore_for_file: unused_element, unnecessary_cast

import 'symmetric_key_response.dart';

/// Authentication mechanism for IoT devices.
class AuthenticationResponse {
  /// Symmetric key for authentication.
  final SymmetricKeyResponse? symmetricKey;

  /// Creates a new [AuthenticationResponse].
  /// [symmetricKey] Symmetric key for authentication.
  AuthenticationResponse({
    this.symmetricKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'symmetricKey': ?symmetricKey == null ? null : symmetricKey!.toMap(),
    };
  }

  factory AuthenticationResponse.fromMap(Map<String, dynamic> map) {
    return AuthenticationResponse(
      symmetricKey: map['symmetricKey'] == null ? null : SymmetricKeyResponse.fromMap((map['symmetricKey'] as Map).cast<String, dynamic>()),
    );
  }
}

