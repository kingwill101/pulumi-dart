// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDdosCooPortsPort {
  /// The source station port.
  final pulumi.Input<String> backendPort;

  /// The forwarding port.
  final pulumi.Input<String> frontendPort;

  /// The forwarding protocol. Valid values `tcp` and `udp`.
  final pulumi.Input<String> frontendProtocol;

  /// The ID of the Port.
  final pulumi.Input<String> id;

  /// The DdosCoo instance ID.
  final pulumi.Input<String> instanceId;

  /// List of source IP addresses.
  final pulumi.Input<List<String>> realServers;

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
      backendPort: pulumi.Input.fromValue(map['backendPort'] as String),
      frontendPort: pulumi.Input.fromValue(map['frontendPort'] as String),
      frontendProtocol: pulumi.Input.fromValue(
        map['frontendProtocol'] as String,
      ),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      realServers: pulumi.Input.fromValue(
        (map['realServers'] as List).cast<String>(),
      ),
    );
  }
}
