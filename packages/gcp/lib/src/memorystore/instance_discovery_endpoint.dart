// ignore_for_file: unused_element, unnecessary_cast


class InstanceDiscoveryEndpoint {
  /// (Output)
  /// Output only. IP address of the exposed endpoint clients connect to.
  final String? address;
  /// (Output)
  /// Output only. The consumer network where the IP address resides, in the form of
  /// projects/{project_id}/global/networks/{network_id}.
  final String? network;
  /// (Output)
  /// Output only. Ports of the exposed endpoint.
  final int? port;

  /// Creates a new [InstanceDiscoveryEndpoint].
  /// [address] (Output)
  /// [network] (Output)
  /// [port] (Output)
  InstanceDiscoveryEndpoint({
    this.address,
    this.network,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'network': ?network,
      'port': ?port,
    };
  }

  factory InstanceDiscoveryEndpoint.fromMap(Map<String, dynamic> map) {
    return InstanceDiscoveryEndpoint(
      address: map['address'] == null ? null : map['address'] as String,
      network: map['network'] == null ? null : map['network'] as String,
      port: map['port'] == null ? null : map['port'] as int,
    );
  }
}

