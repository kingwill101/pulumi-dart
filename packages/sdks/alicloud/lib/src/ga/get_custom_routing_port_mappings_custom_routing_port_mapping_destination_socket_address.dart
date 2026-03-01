// ignore_for_file: unused_element, unnecessary_cast


class GetCustomRoutingPortMappingsCustomRoutingPortMappingDestinationSocketAddress {
  /// The service IP address of the backend instance.
  final String ipAddress;
  /// The service port of the backend instance.
  final int port;

  /// Creates a new [GetCustomRoutingPortMappingsCustomRoutingPortMappingDestinationSocketAddress].
  /// [ipAddress] The service IP address of the backend instance.
  /// [port] The service port of the backend instance.
  GetCustomRoutingPortMappingsCustomRoutingPortMappingDestinationSocketAddress({
    required this.ipAddress,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ipAddress,
      'port': port,
    };
  }

  factory GetCustomRoutingPortMappingsCustomRoutingPortMappingDestinationSocketAddress.fromMap(Map<String, dynamic> map) {
    return GetCustomRoutingPortMappingsCustomRoutingPortMappingDestinationSocketAddress(
      ipAddress: map['ipAddress'] as String,
      port: map['port'] as int,
    );
  }
}

