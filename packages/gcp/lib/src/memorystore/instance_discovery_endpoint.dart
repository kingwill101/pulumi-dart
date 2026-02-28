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
    final map = <String, dynamic>{};
    final addressValue = address;
    if (addressValue != null) {
      map['address'] = addressValue;
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    return map;
  }

  factory InstanceDiscoveryEndpoint.fromMap(Map<String, dynamic> map) {
    return InstanceDiscoveryEndpoint(
      address: map['address'] == null ? null : map['address'] as String,
      network: map['network'] == null ? null : map['network'] as String,
      port: map['port'] == null ? null : map['port'] as int,
    );
  }
}
