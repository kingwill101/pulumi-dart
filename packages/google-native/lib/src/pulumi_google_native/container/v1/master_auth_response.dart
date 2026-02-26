// ignore_for_file: unused_element, unnecessary_cast

import 'client_certificate_config_response.dart';

/// The authentication information for accessing the master endpoint. Authentication can be done using HTTP basic auth or using client certificates.
class MasterAuthResponse {
  /// [Output only] Base64-encoded public certificate used by clients to authenticate to the cluster endpoint.
  final String clientCertificate;

  /// Configuration for client certificate authentication on the cluster. For clusters before v1.12, if no configuration is specified, a client certificate is issued.
  final ClientCertificateConfigResponse clientCertificateConfig;

  /// [Output only] Base64-encoded private key used by clients to authenticate to the cluster endpoint.
  final String clientKey;

  /// [Output only] Base64-encoded public certificate that is the root of trust for the cluster.
  final String clusterCaCertificate;

  /// The password to use for HTTP basic authentication to the master endpoint. Because the master endpoint is open to the Internet, you should create a strong password. If a password is provided for cluster creation, username must be non-empty. Warning: basic authentication is deprecated, and will be removed in GKE control plane versions 1.19 and newer. For a list of recommended authentication methods, see: https://cloud.google.com/kubernetes-engine/docs/how-to/api-server-authentication
  final String password;

  /// The username to use for HTTP basic authentication to the master endpoint. For clusters v1.6.0 and later, basic authentication can be disabled by leaving username unspecified (or setting it to the empty string). Warning: basic authentication is deprecated, and will be removed in GKE control plane versions 1.19 and newer. For a list of recommended authentication methods, see: https://cloud.google.com/kubernetes-engine/docs/how-to/api-server-authentication
  final String username;

  MasterAuthResponse({
    required this.clientCertificate,
    required this.clientCertificateConfig,
    required this.clientKey,
    required this.clusterCaCertificate,
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clientCertificate'] = clientCertificate;
    map['clientCertificateConfig'] = clientCertificateConfig.toMap();
    map['clientKey'] = clientKey;
    map['clusterCaCertificate'] = clusterCaCertificate;
    map['password'] = password;
    map['username'] = username;
    return map;
  }

  factory MasterAuthResponse.fromMap(Map<String, dynamic> map) {
    return MasterAuthResponse(
      clientCertificate: map['clientCertificate'] as String,
      clientCertificateConfig: ClientCertificateConfigResponse.fromMap(
          (map['clientCertificateConfig'] as Map).cast<String, dynamic>()),
      clientKey: map['clientKey'] as String,
      clusterCaCertificate: map['clusterCaCertificate'] as String,
      password: map['password'] as String,
      username: map['username'] as String,
    );
  }
}
