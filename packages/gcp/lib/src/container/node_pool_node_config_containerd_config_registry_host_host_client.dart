// ignore_for_file: unused_element, unnecessary_cast

import 'node_pool_node_config_containerd_config_registry_host_host_client_cert.dart';
import 'node_pool_node_config_containerd_config_registry_host_host_client_key.dart';

class NodePoolNodeConfigContainerdConfigRegistryHostHostClient {
  /// Configures the client certificate.
  final NodePoolNodeConfigContainerdConfigRegistryHostHostClientCert cert;
  /// Configures the client private key.
  final NodePoolNodeConfigContainerdConfigRegistryHostHostClientKey? key;

  /// Creates a new [NodePoolNodeConfigContainerdConfigRegistryHostHostClient].
  /// [cert] Configures the client certificate.
  /// [key] Configures the client private key.
  NodePoolNodeConfigContainerdConfigRegistryHostHostClient({
    required this.cert,
    this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cert': cert.toMap(),
      'key': ?key == null ? null : key!.toMap(),
    };
  }

  factory NodePoolNodeConfigContainerdConfigRegistryHostHostClient.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigContainerdConfigRegistryHostHostClient(
      cert: NodePoolNodeConfigContainerdConfigRegistryHostHostClientCert.fromMap((map['cert'] as Map).cast<String, dynamic>()),
      key: map['key'] == null ? null : NodePoolNodeConfigContainerdConfigRegistryHostHostClientKey.fromMap((map['key'] as Map).cast<String, dynamic>()),
    );
  }
}

