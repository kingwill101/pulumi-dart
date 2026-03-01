// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_remote_network_config_remote_node_network.dart';
import 'get_cluster_remote_network_config_remote_pod_network.dart';

class GetClusterRemoteNetworkConfig {
  /// The networks that can contain hybrid nodes.
  final List<GetClusterRemoteNetworkConfigRemoteNodeNetwork> remoteNodeNetworks;

  /// The networks that can contain pods that run Kubernetes webhooks on hybrid nodes.
  final List<GetClusterRemoteNetworkConfigRemotePodNetwork> remotePodNetworks;

  /// Creates a new [GetClusterRemoteNetworkConfig].
  /// [remoteNodeNetworks] The networks that can contain hybrid nodes.
  /// [remotePodNetworks] The networks that can contain pods that run Kubernetes webhooks on hybrid nodes.
  GetClusterRemoteNetworkConfig({
    required this.remoteNodeNetworks,
    required this.remotePodNetworks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'remoteNodeNetworks':
          pulumi.Input.encodeList<
            GetClusterRemoteNetworkConfigRemoteNodeNetwork,
            Map<String, dynamic>
          >(remoteNodeNetworks, (value) => value.toMap()),
      'remotePodNetworks':
          pulumi.Input.encodeList<
            GetClusterRemoteNetworkConfigRemotePodNetwork,
            Map<String, dynamic>
          >(remotePodNetworks, (value) => value.toMap()),
    };
  }

  factory GetClusterRemoteNetworkConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterRemoteNetworkConfig(
      remoteNodeNetworks:
          pulumi
              .Input.decodeList<GetClusterRemoteNetworkConfigRemoteNodeNetwork>(
            map['remoteNodeNetworks'],
            (value) => GetClusterRemoteNetworkConfigRemoteNodeNetwork.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      remotePodNetworks:
          pulumi
              .Input.decodeList<GetClusterRemoteNetworkConfigRemotePodNetwork>(
            map['remotePodNetworks'],
            (value) => GetClusterRemoteNetworkConfigRemotePodNetwork.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
    );
  }
}
