// ignore_for_file: unused_element, unnecessary_cast


/// Describes the connection monitor endpoint scope item.
class ConnectionMonitorEndpointScopeItem {
  /// The address of the endpoint item. Supported types are IPv4/IPv6 subnet mask or IPv4/IPv6 IP address.
  final String? address;

  /// Creates a new [ConnectionMonitorEndpointScopeItem].
  /// [address] The address of the endpoint item. Supported types are IPv4/IPv6 subnet mask or IPv4/IPv6 IP address.
  ConnectionMonitorEndpointScopeItem({
    this.address,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
    };
  }

  factory ConnectionMonitorEndpointScopeItem.fromMap(Map<String, dynamic> map) {
    return ConnectionMonitorEndpointScopeItem(
      address: map['address'] == null ? null : map['address'] as String,
    );
  }
}

