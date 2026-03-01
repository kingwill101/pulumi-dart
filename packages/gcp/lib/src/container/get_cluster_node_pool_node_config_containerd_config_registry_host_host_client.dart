// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_pool_node_config_containerd_config_registry_host_host_client_cert.dart';
import 'get_cluster_node_pool_node_config_containerd_config_registry_host_host_client_key.dart';

class GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClient {
  /// Configures the client certificate.
  final List<GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientCert> certs;
  /// Configures the client private key.
  final List<GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientKey> keys;

  /// Creates a new [GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClient].
  /// [certs] Configures the client certificate.
  /// [keys] Configures the client private key.
  GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClient({
    required this.certs,
    required this.keys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certs': pulumi.Input.encodeList<GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientCert, Map<String, dynamic>>(certs, (value) => value.toMap()),
      'keys': pulumi.Input.encodeList<GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientKey, Map<String, dynamic>>(keys, (value) => value.toMap()),
    };
  }

  factory GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClient.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClient(
      certs: pulumi.Input.decodeList<GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientCert>(map['certs'], (value) => GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientCert.fromMap((value as Map).cast<String, dynamic>())),
      keys: pulumi.Input.decodeList<GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientKey>(map['keys'], (value) => GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientKey.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

