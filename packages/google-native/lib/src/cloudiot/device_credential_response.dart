// ignore_for_file: unused_element, unnecessary_cast

import 'public_key_credential_response.dart';

/// A server-stored device credential used for authentication.
class DeviceCredentialResponse {
  /// [Optional] The time at which this credential becomes invalid. This credential will be ignored for new client authentication requests after this timestamp; however, it will not be automatically deleted.
  final String expirationTime;

  /// A public key used to verify the signature of JSON Web Tokens (JWTs). When adding a new device credential, either via device creation or via modifications, this public key credential may be required to be signed by one of the registry level certificates. More specifically, if the registry contains at least one certificate, any new device credential must be signed by one of the registry certificates. As a result, when the registry contains certificates, only X.509 certificates are accepted as device credentials. However, if the registry does not contain a certificate, self-signed certificates and public keys will be accepted. New device credentials must be different from every registry-level certificate.
  final PublicKeyCredentialResponse publicKey;

  /// Creates a new [DeviceCredentialResponse].
  /// [expirationTime] [Optional] The time at which this credential becomes invalid. This credential will be ignored for new client authentication requests after this timestamp; however, it will not be automatically deleted.
  /// [publicKey] A public key used to verify the signature of JSON Web Tokens (JWTs). When adding a new device credential, either via device creation or via modifications, this public key credential may be required to be signed by one of the registry level certificates. More specifically, if the registry contains at least one certificate, any new device credential must be signed by one of the registry certificates. As a result, when the registry contains certificates, only X.509 certificates are accepted as device credentials. However, if the registry does not contain a certificate, self-signed certificates and public keys will be accepted. New device credentials must be different from every registry-level certificate.
  DeviceCredentialResponse({
    required this.expirationTime,
    required this.publicKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['expirationTime'] = expirationTime;
    map['publicKey'] = publicKey.toMap();
    return map;
  }

  factory DeviceCredentialResponse.fromMap(Map<String, dynamic> map) {
    return DeviceCredentialResponse(
      expirationTime: map['expirationTime'] as String,
      publicKey: PublicKeyCredentialResponse.fromMap(
          (map['publicKey'] as Map).cast<String, dynamic>()),
    );
  }
}
