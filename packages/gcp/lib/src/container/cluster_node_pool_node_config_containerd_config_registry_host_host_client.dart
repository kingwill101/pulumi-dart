// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_node_pool_node_config_containerd_config_registry_host_host_client_cert.dart';
import 'cluster_node_pool_node_config_containerd_config_registry_host_host_client_key.dart';

class ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClient {
  /// Configures the client certificate.
  final ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientCert cert;
  /// Configures the client private key.
  final ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientKey? key;

  /// Creates a new [ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClient].
  /// [cert] Configures the client certificate.
  /// [key] Configures the client private key.
  ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClient({
    required this.cert,
    this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cert': cert.toMap(),
      'key': ?key == null ? null : key!.toMap(),
    };
  }

  factory ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClient.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClient(
      cert: ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientCert.fromMap((map['cert'] as Map).cast<String, dynamic>()),
      key: map['key'] == null ? null : ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientKey.fromMap((map['key'] as Map).cast<String, dynamic>()),
    );
  }
}

