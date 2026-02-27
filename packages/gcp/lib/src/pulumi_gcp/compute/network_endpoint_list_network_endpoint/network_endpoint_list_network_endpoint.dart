// ignore_for_file: unused_element, unnecessary_cast

class NetworkEndpointListNetworkEndpoint {
  /// The name for a specific VM instance that the IP address belongs to.
  /// This is required for network endpoints of type GCE_VM_IP_PORT.
  /// The instance must be in the same zone as the network endpoint group.
  final String? instance;

  /// IPv4 address of network endpoint. The IP address must belong
  /// to a VM in GCE (either the primary IP or as part of an aliased IP
  /// range).
  final String ipAddress;

  /// Port number of network endpoint.
  /// **Note** `port` is required unless the Network Endpoint Group is created
  /// with the type of `GCE_VM_IP`
  final int? port;

  NetworkEndpointListNetworkEndpoint({
    this.instance,
    required this.ipAddress,
    this.port,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final instanceValue = instance;
    if (instanceValue != null) {
      map['instance'] = instanceValue;
    }
    map['ipAddress'] = ipAddress;
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    return map;
  }

  factory NetworkEndpointListNetworkEndpoint.fromMap(Map<String, dynamic> map) {
    return NetworkEndpointListNetworkEndpoint(
      instance: map['instance'] == null ? null : map['instance'] as String,
      ipAddress: map['ipAddress'] as String,
      port: map['port'] == null ? null : map['port'] as int,
    );
  }
}
