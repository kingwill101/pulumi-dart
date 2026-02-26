// ignore_for_file: unused_element, unnecessary_cast

import 'client_certificate_config2.dart';

/// The authentication information for accessing the master endpoint. Authentication can be done using HTTP basic auth or using client certificates.
class MasterAuth2 {
  /// Configuration for client certificate authentication on the cluster. For clusters before v1.12, if no configuration is specified, a client certificate is issued.
  final ClientCertificateConfig2? clientCertificateConfig;
  final String? clusterCaCertificate;

  /// The password to use for HTTP basic authentication to the master endpoint. Because the master endpoint is open to the Internet, you should create a strong password. If a password is provided for cluster creation, username must be non-empty. Warning: basic authentication is deprecated, and will be removed in GKE control plane versions 1.19 and newer. For a list of recommended authentication methods, see: https://cloud.google.com/kubernetes-engine/docs/how-to/api-server-authentication
  final String? password;

  /// The username to use for HTTP basic authentication to the master endpoint. For clusters v1.6.0 and later, basic authentication can be disabled by leaving username unspecified (or setting it to the empty string). Warning: basic authentication is deprecated, and will be removed in GKE control plane versions 1.19 and newer. For a list of recommended authentication methods, see: https://cloud.google.com/kubernetes-engine/docs/how-to/api-server-authentication
  final String? username;

  MasterAuth2({
    this.clientCertificateConfig,
    this.clusterCaCertificate,
    this.password,
    this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clientCertificateConfigValue = clientCertificateConfig;
    if (clientCertificateConfigValue != null) {
      map['clientCertificateConfig'] = clientCertificateConfigValue.toMap();
    }
    final clusterCaCertificateValue = clusterCaCertificate;
    if (clusterCaCertificateValue != null) {
      map['clusterCaCertificate'] = clusterCaCertificateValue;
    }
    final passwordValue = password;
    if (passwordValue != null) {
      map['password'] = passwordValue;
    }
    final usernameValue = username;
    if (usernameValue != null) {
      map['username'] = usernameValue;
    }
    return map;
  }

  factory MasterAuth2.fromMap(Map<String, dynamic> map) {
    return MasterAuth2(
      clientCertificateConfig: map['clientCertificateConfig'] == null
          ? null
          : ClientCertificateConfig2.fromMap(
              (map['clientCertificateConfig'] as Map).cast<String, dynamic>()),
      clusterCaCertificate: map['clusterCaCertificate'] == null
          ? null
          : map['clusterCaCertificate'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}
