// ignore_for_file: unused_element, unnecessary_cast


class GetDdosCooPortsPort {
  /// The source station port.
  final String backendPort;
  /// The forwarding port.
  final String frontendPort;
  /// The forwarding protocol. Valid values `tcp` and `udp`.
  final String frontendProtocol;
  /// The ID of the Port.
  final String id;
  /// The DdosCoo instance ID.
  final String instanceId;
  /// List of source IP addresses.
  final List<String> realServers;

  /// Creates a new [GetDdosCooPortsPort].
  /// [backendPort] The source station port.
  /// [frontendPort] The forwarding port.
  /// [frontendProtocol] The forwarding protocol. Valid values `tcp` and `udp`.
  /// [id] The ID of the Port.
  /// [instanceId] The DdosCoo instance ID.
  /// [realServers] List of source IP addresses.
  GetDdosCooPortsPort({
    required this.backendPort,
    required this.frontendPort,
    required this.frontendProtocol,
    required this.id,
    required this.instanceId,
    required this.realServers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendPort': backendPort,
      'frontendPort': frontendPort,
      'frontendProtocol': frontendProtocol,
      'id': id,
      'instanceId': instanceId,
      'realServers': realServers,
    };
  }

  factory GetDdosCooPortsPort.fromMap(Map<String, dynamic> map) {
    return GetDdosCooPortsPort(
      backendPort: map['backendPort'] as String,
      frontendPort: map['frontendPort'] as String,
      frontendProtocol: map['frontendProtocol'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      realServers: (map['realServers'] as List).cast<String>(),
    );
  }
}

