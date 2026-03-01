// ignore_for_file: unused_element, unnecessary_cast


class BackendAddressPoolTunnelInterface {
  /// The unique identifier of this Gateway Load Balancer Tunnel Interface.
  final int identifier;
  /// The port number that this Gateway Load Balancer Tunnel Interface listens to.
  final int port;
  /// The protocol used for this Gateway Load Balancer Tunnel Interface. Possible values are `None`, `Native` and `VXLAN`.
  final String protocol;
  /// The traffic type of this Gateway Load Balancer Tunnel Interface. Possible values are `None`, `Internal` and `External`.
  final String type;

  /// Creates a new [BackendAddressPoolTunnelInterface].
  /// [identifier] The unique identifier of this Gateway Load Balancer Tunnel Interface.
  /// [port] The port number that this Gateway Load Balancer Tunnel Interface listens to.
  /// [protocol] The protocol used for this Gateway Load Balancer Tunnel Interface. Possible values are `None`, `Native` and `VXLAN`.
  /// [type] The traffic type of this Gateway Load Balancer Tunnel Interface. Possible values are `None`, `Internal` and `External`.
  BackendAddressPoolTunnelInterface({
    required this.identifier,
    required this.port,
    required this.protocol,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identifier': identifier,
      'port': port,
      'protocol': protocol,
      'type': type,
    };
  }

  factory BackendAddressPoolTunnelInterface.fromMap(Map<String, dynamic> map) {
    return BackendAddressPoolTunnelInterface(
      identifier: map['identifier'] as int,
      port: map['port'] as int,
      protocol: map['protocol'] as String,
      type: map['type'] as String,
    );
  }
}

