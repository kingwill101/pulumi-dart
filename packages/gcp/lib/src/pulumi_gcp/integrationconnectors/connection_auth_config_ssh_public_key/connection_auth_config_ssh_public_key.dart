// ignore_for_file: unused_element, unnecessary_cast

import '../connection_auth_config_ssh_public_key_ssh_client_cert/connection_auth_config_ssh_public_key_ssh_client_cert.dart';
import '../connection_auth_config_ssh_public_key_ssh_client_cert_pass/connection_auth_config_ssh_public_key_ssh_client_cert_pass.dart';

class ConnectionAuthConfigSshPublicKey {
  /// Format of SSH Client cert.
  final String? certType;

  /// SSH Client Cert. It should contain both public and private key.
  /// Structure is documented below.
  final ConnectionAuthConfigSshPublicKeySshClientCert? sshClientCert;

  /// Password (passphrase) for ssh client certificate if it has one.
  /// Structure is documented below.
  final ConnectionAuthConfigSshPublicKeySshClientCertPass? sshClientCertPass;

  /// The user account used to authenticate.
  final String username;

  ConnectionAuthConfigSshPublicKey({
    this.certType,
    this.sshClientCert,
    this.sshClientCertPass,
    required this.username,
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
    map['username'] = username;
    return map;
  }

  factory ConnectionAuthConfigSshPublicKey.fromMap(Map<String, dynamic> map) {
    return ConnectionAuthConfigSshPublicKey(
      certType: map['certType'] == null ? null : map['certType'] as String,
      sshClientCert: map['sshClientCert'] == null
          ? null
          : ConnectionAuthConfigSshPublicKeySshClientCert.fromMap(
              (map['sshClientCert'] as Map).cast<String, dynamic>()),
      sshClientCertPass: map['sshClientCertPass'] == null
          ? null
          : ConnectionAuthConfigSshPublicKeySshClientCertPass.fromMap(
              (map['sshClientCertPass'] as Map).cast<String, dynamic>()),
      username: map['username'] as String,
    );
  }
}
