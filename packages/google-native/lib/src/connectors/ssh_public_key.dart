// ignore_for_file: unused_element, unnecessary_cast

import 'secret.dart';

/// Parameters to support Ssh public key Authentication.
class SshPublicKey {
  /// Format of SSH Client cert.
  final String? certType;

  /// SSH Client Cert. It should contain both public and private key.
  final Secret? sshClientCert;

  /// Password (passphrase) for ssh client certificate if it has one.
  final Secret? sshClientCertPass;

  /// The user account used to authenticate.
  final String? username;

  /// Creates a new [SshPublicKey].
  /// [certType] Format of SSH Client cert.
  /// [sshClientCert] SSH Client Cert. It should contain both public and private key.
  /// [sshClientCertPass] Password (passphrase) for ssh client certificate if it has one.
  /// [username] The user account used to authenticate.
  SshPublicKey({
    this.certType,
    this.sshClientCert,
    this.sshClientCertPass,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certType': ?certType,
      'sshClientCert': ?sshClientCert == null ? null : sshClientCert!.toMap(),
      'sshClientCertPass': ?sshClientCertPass == null
          ? null
          : sshClientCertPass!.toMap(),
      'username': ?username,
    };
  }

  factory SshPublicKey.fromMap(Map<String, dynamic> map) {
    return SshPublicKey(
      certType: map['certType'] == null ? null : map['certType'] as String,
      sshClientCert: map['sshClientCert'] == null
          ? null
          : Secret.fromMap(
              (map['sshClientCert'] as Map).cast<String, dynamic>(),
            ),
      sshClientCertPass: map['sshClientCertPass'] == null
          ? null
          : Secret.fromMap(
              (map['sshClientCertPass'] as Map).cast<String, dynamic>(),
            ),
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}
