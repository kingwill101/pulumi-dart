// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_master_auth_client_certificate_config.dart';

class ClusterMasterAuth {
  /// Base64 encoded public certificate used by clients to authenticate to the cluster endpoint.
  final String? clientCertificate;

  /// Whether client certificate authorization is enabled for this cluster.  For example:
  final ClusterMasterAuthClientCertificateConfig clientCertificateConfig;

  /// Base64 encoded private key used by clients to authenticate to the cluster endpoint.
  final String? clientKey;

  /// Base64 encoded public certificate that is the root of trust for the cluster.
  final String? clusterCaCertificate;

  /// Creates a new [ClusterMasterAuth].
  /// [clientCertificate] Base64 encoded public certificate used by clients to authenticate to the cluster endpoint.
  /// [clientCertificateConfig] Whether client certificate authorization is enabled for this cluster.  For example:
  /// [clientKey] Base64 encoded private key used by clients to authenticate to the cluster endpoint.
  /// [clusterCaCertificate] Base64 encoded public certificate that is the root of trust for the cluster.
  ClusterMasterAuth({
    this.clientCertificate,
    required this.clientCertificateConfig,
    this.clientKey,
    this.clusterCaCertificate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clientCertificateValue = clientCertificate;
    if (clientCertificateValue != null) {
      map['clientCertificate'] = clientCertificateValue;
    }
    map['clientCertificateConfig'] = clientCertificateConfig.toMap();
    final clientKeyValue = clientKey;
    if (clientKeyValue != null) {
      map['clientKey'] = clientKeyValue;
    }
    final clusterCaCertificateValue = clusterCaCertificate;
    if (clusterCaCertificateValue != null) {
      map['clusterCaCertificate'] = clusterCaCertificateValue;
    }
    return map;
  }

  factory ClusterMasterAuth.fromMap(Map<String, dynamic> map) {
    return ClusterMasterAuth(
      clientCertificate: map['clientCertificate'] == null
          ? null
          : map['clientCertificate'] as String,
      clientCertificateConfig: ClusterMasterAuthClientCertificateConfig.fromMap(
          (map['clientCertificateConfig'] as Map).cast<String, dynamic>()),
      clientKey: map['clientKey'] == null ? null : map['clientKey'] as String,
      clusterCaCertificate: map['clusterCaCertificate'] == null
          ? null
          : map['clusterCaCertificate'] as String,
    );
  }
}
