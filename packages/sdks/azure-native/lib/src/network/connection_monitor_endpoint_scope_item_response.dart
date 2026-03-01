// ignore_for_file: unused_element, unnecessary_cast


/// Describes the connection monitor endpoint scope item.
class ConnectionMonitorEndpointScopeItemResponse {
  /// The address of the endpoint item. Supported types are IPv4/IPv6 subnet mask or IPv4/IPv6 IP address.
  final String? address;

  /// Creates a new [ConnectionMonitorEndpointScopeItemResponse].
  /// [address] The address of the endpoint item. Supported types are IPv4/IPv6 subnet mask or IPv4/IPv6 IP address.
  ConnectionMonitorEndpointScopeItemResponse({
    this.address,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
    };
  }

  factory ConnectionMonitorEndpointScopeItemResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionMonitorEndpointScopeItemResponse(
      address: map['address'] == null ? null : map['address'] as String,
    );
  }
}

