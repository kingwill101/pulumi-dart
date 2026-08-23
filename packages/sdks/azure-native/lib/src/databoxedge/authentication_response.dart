// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'symmetric_key_response.dart';

/// Authentication mechanism for IoT devices.
class AuthenticationResponse {
  /// Symmetric key for authentication.
  final pulumi.Input<SymmetricKeyResponse>? symmetricKey;

  /// Creates a new [AuthenticationResponse].
  /// [symmetricKey] Symmetric key for authentication.
  const AuthenticationResponse({
    this.symmetricKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'symmetricKey': ?pulumi.Input.mapOptionalInputValue<SymmetricKeyResponse, Map<String, dynamic>>(symmetricKey, (value) => value.toMap()),
    };
  }

  factory AuthenticationResponse.fromMap(Map<String, dynamic> map) {
    return AuthenticationResponse(
      symmetricKey: (() { final guardedValue = map['symmetricKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SymmetricKeyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
