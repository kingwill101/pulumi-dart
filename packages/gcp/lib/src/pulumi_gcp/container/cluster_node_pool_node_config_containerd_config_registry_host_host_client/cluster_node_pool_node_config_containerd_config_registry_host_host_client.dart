// ignore_for_file: unused_element, unnecessary_cast

import '../cluster_node_pool_node_config_containerd_config_registry_host_host_client_cert/cluster_node_pool_node_config_containerd_config_registry_host_host_client_cert.dart';
import '../cluster_node_pool_node_config_containerd_config_registry_host_host_client_key/cluster_node_pool_node_config_containerd_config_registry_host_host_client_key.dart';

class ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClient {
  /// Configures the client certificate.
  final ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientCert
      cert;

  /// Configures the client private key.
  final ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientKey? key;

  ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClient({
    required this.cert,
    this.key,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cert'] = cert.toMap();
    final keyValue = key;
    if (keyValue != null) {
      map['key'] = keyValue.toMap();
    }
    return map;
  }

  factory ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClient.fromMap(
      Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClient(
      cert: ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientCert
          .fromMap((map['cert'] as Map).cast<String, dynamic>()),
      key: map['key'] == null
          ? null
          : ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientKey
              .fromMap((map['key'] as Map).cast<String, dynamic>()),
    );
  }
}
