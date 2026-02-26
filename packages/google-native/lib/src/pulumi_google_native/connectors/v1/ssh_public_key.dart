// ignore_for_file: unused_element, unnecessary_cast

import 'secret2.dart';

/// Parameters to support Ssh public key Authentication.
class SshPublicKey {
  /// Format of SSH Client cert.
  final String? certType;

  /// SSH Client Cert. It should contain both public and private key.
  final Secret2? sshClientCert;

  /// Password (passphrase) for ssh client certificate if it has one.
  final Secret2? sshClientCertPass;

  /// The user account used to authenticate.
  final String? username;

  SshPublicKey({
    this.certType,
    this.sshClientCert,
    this.sshClientCertPass,
    this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final certTypeValue = certType;
    if (certTypeValue != null) {
      map['certType'] = certTypeValue;
    }
    final sshClientCertValue = sshClientCert;
    if (sshClientCertValue != null) {
      map['sshClientCert'] = sshClientCertValue.toMap();
    }
    final sshClientCertPassValue = sshClientCertPass;
    if (sshClientCertPassValue != null) {
      map['sshClientCertPass'] = sshClientCertPassValue.toMap();
    }
    final usernameValue = username;
    if (usernameValue != null) {
      map['username'] = usernameValue;
    }
    return map;
  }

  factory SshPublicKey.fromMap(Map<String, dynamic> map) {
    return SshPublicKey(
      certType: map['certType'] == null ? null : map['certType'] as String,
      sshClientCert: map['sshClientCert'] == null
          ? null
          : Secret2.fromMap(
              (map['sshClientCert'] as Map).cast<String, dynamic>()),
      sshClientCertPass: map['sshClientCertPass'] == null
          ? null
          : Secret2.fromMap(
              (map['sshClientCertPass'] as Map).cast<String, dynamic>()),
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}
