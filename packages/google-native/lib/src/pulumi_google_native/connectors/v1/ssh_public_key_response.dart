// ignore_for_file: unused_element, unnecessary_cast

import 'secret_response2.dart';

/// Parameters to support Ssh public key Authentication.
class SshPublicKeyResponse {
  /// Format of SSH Client cert.
  final String certType;

  /// SSH Client Cert. It should contain both public and private key.
  final SecretResponse2 sshClientCert;

  /// Password (passphrase) for ssh client certificate if it has one.
  final SecretResponse2 sshClientCertPass;

  /// The user account used to authenticate.
  final String username;

  SshPublicKeyResponse({
    required this.certType,
    required this.sshClientCert,
    required this.sshClientCertPass,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certType'] = certType;
    map['sshClientCert'] = sshClientCert.toMap();
    map['sshClientCertPass'] = sshClientCertPass.toMap();
    map['username'] = username;
    return map;
  }

  factory SshPublicKeyResponse.fromMap(Map<String, dynamic> map) {
    return SshPublicKeyResponse(
      certType: map['certType'] as String,
      sshClientCert: SecretResponse2.fromMap(
          (map['sshClientCert'] as Map).cast<String, dynamic>()),
      sshClientCertPass: SecretResponse2.fromMap(
          (map['sshClientCertPass'] as Map).cast<String, dynamic>()),
      username: map['username'] as String,
    );
  }
}
