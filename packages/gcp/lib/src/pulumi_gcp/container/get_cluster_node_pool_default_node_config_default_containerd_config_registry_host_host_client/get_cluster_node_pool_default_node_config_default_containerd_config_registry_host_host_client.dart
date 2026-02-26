// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_cluster_node_pool_default_node_config_default_containerd_config_registry_host_host_client_cert/get_cluster_node_pool_default_node_config_default_containerd_config_registry_host_host_client_cert.dart';
import '../get_cluster_node_pool_default_node_config_default_containerd_config_registry_host_host_client_key/get_cluster_node_pool_default_node_config_default_containerd_config_registry_host_host_client_key.dart';

class GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostClient {
  /// Configures the client certificate.
  final List<
          GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostClientCert>
      certs;

  /// Configures the client private key.
  final List<
          GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostClientKey>
      keys;

  GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostClient({
    required this.certs,
    required this.keys,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certs'] = Input.encodeList<
        GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostClientCert,
        Map<String, dynamic>>(certs, (value) => value.toMap());
    map['keys'] = Input.encodeList<
        GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostClientKey,
        Map<String, dynamic>>(keys, (value) => value.toMap());
    return map;
  }

  factory GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostClient.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostClient(
      certs: Input.decodeList<
              GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostClientCert>(
          map['certs'],
          (value) =>
              GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostClientCert
                  .fromMap((value as Map).cast<String, dynamic>())),
      keys: Input.decodeList<
              GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostClientKey>(
          map['keys'],
          (value) =>
              GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostClientKey
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
