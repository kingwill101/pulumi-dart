// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterRemoteNetworkConfigRemotePodNetworks {
  /// List of network CIDRs that can contain pods that run Kubernetes webhooks on hybrid nodes.
  final pulumi.Input<List<String>>? cidrs;

  /// Creates a new [ClusterRemoteNetworkConfigRemotePodNetworks].
  /// [cidrs] List of network CIDRs that can contain pods that run Kubernetes webhooks on hybrid nodes.
  ClusterRemoteNetworkConfigRemotePodNetworks({this.cidrs});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'cidrs': ?cidrs};
  }

  factory ClusterRemoteNetworkConfigRemotePodNetworks.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterRemoteNetworkConfigRemotePodNetworks(
      cidrs: (() {
        final guardedValue = map['cidrs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
