// ignore_for_file: unused_element, unnecessary_cast

class FlexibleAppVersionNetwork {
  /// List of ports, or port pairs, to forward from the virtual machine to the application container.
  final List<String>? forwardedPorts;

  /// Prevent instances from receiving an ephemeral external IP address.
  /// Possible values are: `EXTERNAL`, `INTERNAL`.
  final String? instanceIpMode;

  /// Tag to apply to the instance during creation.
  final String? instanceTag;

  /// Google Compute Engine network where the virtual machines are created. Specify the short name, not the resource path.
  final String name;

  /// Enable session affinity.
  final bool? sessionAffinity;

  /// Google Cloud Platform sub-network where the virtual machines are created. Specify the short name, not the resource path.
  /// If the network that the instance is being created in is a Legacy network, then the IP address is allocated from the IPv4Range.
  /// If the network that the instance is being created in is an auto Subnet Mode Network, then only network name should be specified (not the subnetworkName) and the IP address is created from the IPCidrRange of the subnetwork that exists in that zone for that network.
  /// If the network that the instance is being created in is a custom Subnet Mode Network, then the subnetworkName must be specified and the IP address is created from the IPCidrRange of the subnetwork.
  /// If specified, the subnetwork must exist in the same region as the App Engine flexible environment application.
  final String? subnetwork;

  FlexibleAppVersionNetwork({
    this.forwardedPorts,
    this.instanceIpMode,
    this.instanceTag,
    required this.name,
    this.sessionAffinity,
    this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final forwardedPortsValue = forwardedPorts;
    if (forwardedPortsValue != null) {
      map['forwardedPorts'] = forwardedPortsValue;
    }
    final instanceIpModeValue = instanceIpMode;
    if (instanceIpModeValue != null) {
      map['instanceIpMode'] = instanceIpModeValue;
    }
    final instanceTagValue = instanceTag;
    if (instanceTagValue != null) {
      map['instanceTag'] = instanceTagValue;
    }
    map['name'] = name;
    final sessionAffinityValue = sessionAffinity;
    if (sessionAffinityValue != null) {
      map['sessionAffinity'] = sessionAffinityValue;
    }
    final subnetworkValue = subnetwork;
    if (subnetworkValue != null) {
      map['subnetwork'] = subnetworkValue;
    }
    return map;
  }

  factory FlexibleAppVersionNetwork.fromMap(Map<String, dynamic> map) {
    return FlexibleAppVersionNetwork(
      forwardedPorts: map['forwardedPorts'] == null
          ? null
          : (map['forwardedPorts'] as List).cast<String>(),
      instanceIpMode: map['instanceIpMode'] == null
          ? null
          : map['instanceIpMode'] as String,
      instanceTag:
          map['instanceTag'] == null ? null : map['instanceTag'] as String,
      name: map['name'] as String,
      sessionAffinity: map['sessionAffinity'] == null
          ? null
          : map['sessionAffinity'] as bool,
      subnetwork:
          map['subnetwork'] == null ? null : map['subnetwork'] as String,
    );
  }
}
