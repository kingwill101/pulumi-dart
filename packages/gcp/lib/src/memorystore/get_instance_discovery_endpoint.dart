// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceDiscoveryEndpoint {
  /// Output only. IP address of the exposed endpoint clients connect to.
  final String address;

  /// Output only. The network where the IP address of the discovery endpoint will be
  /// reserved, in the form of
  /// projects/{network_project}/global/networks/{network_id}.
  final String network;

  /// Output only. The port number of the exposed endpoint.
  final int port;

  /// Creates a new [GetInstanceDiscoveryEndpoint].
  /// [address] Output only. IP address of the exposed endpoint clients connect to.
  /// [network] Output only. The network where the IP address of the discovery endpoint will be
  /// [port] Output only. The port number of the exposed endpoint.
  GetInstanceDiscoveryEndpoint({
    required this.address,
    required this.network,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['address'] = address;
    map['network'] = network;
    map['port'] = port;
    return map;
  }

  factory GetInstanceDiscoveryEndpoint.fromMap(Map<String, dynamic> map) {
    return GetInstanceDiscoveryEndpoint(
      address: map['address'] as String,
      network: map['network'] as String,
      port: map['port'] as int,
    );
  }
}
