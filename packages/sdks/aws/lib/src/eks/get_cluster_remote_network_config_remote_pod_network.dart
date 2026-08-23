// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterRemoteNetworkConfigRemotePodNetwork {
  /// List of network CIDRs that can contain pods that run Kubernetes webhooks on hybrid nodes.
  final pulumi.Input<List<String>> cidrs;

  /// Creates a new [GetClusterRemoteNetworkConfigRemotePodNetwork].
  /// [cidrs] List of network CIDRs that can contain pods that run Kubernetes webhooks on hybrid nodes.
  const GetClusterRemoteNetworkConfigRemotePodNetwork({
    required this.cidrs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrs': cidrs,
    };
  }

  factory GetClusterRemoteNetworkConfigRemotePodNetwork.fromMap(Map<String, dynamic> map) {
    return GetClusterRemoteNetworkConfigRemotePodNetwork(
      cidrs: pulumi.Input.fromValue((map['cidrs'] as List).cast<String>()),
    );
  }
}
