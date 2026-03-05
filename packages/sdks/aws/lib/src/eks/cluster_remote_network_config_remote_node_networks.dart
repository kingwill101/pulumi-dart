// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterRemoteNetworkConfigRemoteNodeNetworks {
  /// List of network CIDRs that can contain hybrid nodes.
  final pulumi.Input<List<String>>? cidrs;

  /// Creates a new [ClusterRemoteNetworkConfigRemoteNodeNetworks].
  /// [cidrs] List of network CIDRs that can contain hybrid nodes.
  ClusterRemoteNetworkConfigRemoteNodeNetworks({
    this.cidrs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrs': ?cidrs,
    };
  }

  factory ClusterRemoteNetworkConfigRemoteNodeNetworks.fromMap(Map<String, dynamic> map) {
    return ClusterRemoteNetworkConfigRemoteNodeNetworks(
      cidrs: (() { final guardedValue = map['cidrs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

