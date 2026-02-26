// ignore_for_file: unused_element, unnecessary_cast

class V2QueuedResourceTpuNodeSpecNodeNetworkConfig {
  /// Allows the TPU node to send and receive packets with non-matching destination or source
  /// IPs. This is required if you plan to use the TPU workers to forward routes.
  final bool? canIpForward;

  /// Indicates that external IP addresses would be associated with the TPU workers. If set to
  /// false, the specified subnetwork or network should have Private Google Access enabled.
  final bool? enableExternalIps;

  /// The name of the network for the TPU node. It must be a preexisting Google Compute Engine
  /// network. If none is provided, "default" will be used.
  final String? network;

  /// Specifies networking queue count for TPU VM instance's network interface.
  final int? queueCount;

  /// The name of the subnetwork for the TPU node. It must be a preexisting Google Compute
  /// Engine subnetwork. If none is provided, "default" will be used.
  final String? subnetwork;

  V2QueuedResourceTpuNodeSpecNodeNetworkConfig({
    this.canIpForward,
    this.enableExternalIps,
    this.network,
    this.queueCount,
    this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final canIpForwardValue = canIpForward;
    if (canIpForwardValue != null) {
      map['canIpForward'] = canIpForwardValue;
    }
    final enableExternalIpsValue = enableExternalIps;
    if (enableExternalIpsValue != null) {
      map['enableExternalIps'] = enableExternalIpsValue;
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final queueCountValue = queueCount;
    if (queueCountValue != null) {
      map['queueCount'] = queueCountValue;
    }
    final subnetworkValue = subnetwork;
    if (subnetworkValue != null) {
      map['subnetwork'] = subnetworkValue;
    }
    return map;
  }

  factory V2QueuedResourceTpuNodeSpecNodeNetworkConfig.fromMap(
      Map<String, dynamic> map) {
    return V2QueuedResourceTpuNodeSpecNodeNetworkConfig(
      canIpForward:
          map['canIpForward'] == null ? null : map['canIpForward'] as bool,
      enableExternalIps: map['enableExternalIps'] == null
          ? null
          : map['enableExternalIps'] as bool,
      network: map['network'] == null ? null : map['network'] as String,
      queueCount: map['queueCount'] == null ? null : map['queueCount'] as int,
      subnetwork:
          map['subnetwork'] == null ? null : map['subnetwork'] as String,
    );
  }
}
