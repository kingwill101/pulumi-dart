// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_cluster_node_config_containerd_config_registry_host_host_client_cert/get_cluster_node_config_containerd_config_registry_host_host_client_cert.dart';
import '../get_cluster_node_config_containerd_config_registry_host_host_client_key/get_cluster_node_config_containerd_config_registry_host_host_client_key.dart';

class GetClusterNodeConfigContainerdConfigRegistryHostHostClient {
  /// Configures the client certificate.
  final List<GetClusterNodeConfigContainerdConfigRegistryHostHostClientCert>
      certs;

  /// Configures the client private key.
  final List<GetClusterNodeConfigContainerdConfigRegistryHostHostClientKey>
      keys;

  GetClusterNodeConfigContainerdConfigRegistryHostHostClient({
    required this.certs,
    required this.keys,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certs'] = Input.encodeList<
        GetClusterNodeConfigContainerdConfigRegistryHostHostClientCert,
        Map<String, dynamic>>(certs, (value) => value.toMap());
    map['keys'] = Input.encodeList<
        GetClusterNodeConfigContainerdConfigRegistryHostHostClientKey,
        Map<String, dynamic>>(keys, (value) => value.toMap());
    return map;
  }

  factory GetClusterNodeConfigContainerdConfigRegistryHostHostClient.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodeConfigContainerdConfigRegistryHostHostClient(
      certs: Input.decodeList<
              GetClusterNodeConfigContainerdConfigRegistryHostHostClientCert>(
          map['certs'],
          (value) =>
              GetClusterNodeConfigContainerdConfigRegistryHostHostClientCert
                  .fromMap((value as Map).cast<String, dynamic>())),
      keys: Input.decodeList<
              GetClusterNodeConfigContainerdConfigRegistryHostHostClientKey>(
          map['keys'],
          (value) =>
              GetClusterNodeConfigContainerdConfigRegistryHostHostClientKey
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
