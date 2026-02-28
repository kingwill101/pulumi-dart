// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_node_pool_defaults_node_config_defaults_containerd_config_registry_host_host_client_cert.dart';
import 'cluster_node_pool_defaults_node_config_defaults_containerd_config_registry_host_host_client_key.dart';

class ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostClient {
  /// Configures the client certificate.
  final ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostClientCert
      cert;

  /// Configures the client private key.
  final ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostClientKey?
      key;

  /// Creates a new [ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostClient].
  /// [cert] Configures the client certificate.
  /// [key] Configures the client private key.
  ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostClient({
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

  factory ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostClient.fromMap(
      Map<String, dynamic> map) {
    return ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostClient(
      cert:
          ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostClientCert
              .fromMap((map['cert'] as Map).cast<String, dynamic>()),
      key: map['key'] == null
          ? null
          : ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostClientKey
              .fromMap((map['key'] as Map).cast<String, dynamic>()),
    );
  }
}
