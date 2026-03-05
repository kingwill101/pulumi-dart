// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ddos_coo_ports_port.dart';

/// Result data returned by getDdosCooPorts.
class GetDdosCooPortsResult {
  /// The forwarding port.
  final String? frontendPort;
  /// The forwarding protocol.
  final String? frontendProtocol;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  /// The Ddoscoo instance ID.
  final String instanceId;
  final String? outputFile;
  /// A list of DdosCoo Ports. Each element contains the following attributes:
  final List<GetDdosCooPortsPort> ports;

  /// Creates a new [GetDdosCooPortsResult].
  /// [frontendPort] The forwarding port.
  /// [frontendProtocol] The forwarding protocol.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instanceId] The Ddoscoo instance ID.
  /// [outputFile] Optional.
  /// [ports] A list of DdosCoo Ports. Each element contains the following attributes:
  GetDdosCooPortsResult({
    this.frontendPort,
    this.frontendProtocol,
    required this.id,
    required this.ids,
    required this.instanceId,
    this.outputFile,
    required this.ports,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frontendPort': ?frontendPort,
      'frontendProtocol': ?frontendProtocol,
      'id': id,
      'ids': ids,
      'instanceId': instanceId,
      'outputFile': ?outputFile,
      'ports': pulumi.Input.encodeList<GetDdosCooPortsPort, Map<String, dynamic>>(ports, (value) => value.toMap()),
    };
  }

  factory GetDdosCooPortsResult.fromMap(Map<String, dynamic> map) {
    return GetDdosCooPortsResult(
      frontendPort: (() { final guardedValue = map['frontendPort']; if (guardedValue == null) return null; return guardedValue as String; })(),
      frontendProtocol: (() { final guardedValue = map['frontendProtocol']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] as String,
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ports: pulumi.Input.decodeList<GetDdosCooPortsPort>(map['ports']!, (value) => GetDdosCooPortsPort.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

