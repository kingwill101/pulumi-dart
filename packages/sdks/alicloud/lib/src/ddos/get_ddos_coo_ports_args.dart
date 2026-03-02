// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ddos_get_ddos_coo_ports_get_ddos_coo_ports_args_doc}
/// Arguments for getDdosCooPorts.
/// {@endtemplate}
/// {@macro pulumi_ddos_get_ddos_coo_ports_get_ddos_coo_ports_args_doc}
class GetDdosCooPortsArgs {
  /// The forwarding port.
  final pulumi.Input<String>? frontendPort;
  /// The forwarding protocol. Valid values `tcp` and `udp`.
  final pulumi.Input<String>? frontendProtocol;
  /// A list of Port IDs.
  final pulumi.Input<List<String>>? ids;
  /// The DdosCoo instance ID.
  final pulumi.Input<String> instanceId;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetDdosCooPortsArgs].
  /// [frontendPort] The forwarding port.
  /// [frontendProtocol] The forwarding protocol. Valid values `tcp` and `udp`.
  /// [ids] A list of Port IDs.
  /// [instanceId] The DdosCoo instance ID.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetDdosCooPortsArgs({
    this.frontendPort,
    this.frontendProtocol,
    this.ids,
    required this.instanceId,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frontendPort': ?frontendPort,
      'frontendProtocol': ?frontendProtocol,
      'ids': ?ids,
      'instanceId': instanceId,
      'outputFile': ?outputFile,
    };
  }

  factory GetDdosCooPortsArgs.fromMap(Map<String, dynamic> map) {
    return GetDdosCooPortsArgs(
      frontendPort: map['frontendPort'] == null ? null : (map['frontendPort']! as String).input(),
      frontendProtocol: map['frontendProtocol'] == null ? null : (map['frontendProtocol']! as String).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      instanceId: (map['instanceId'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
    );
  }
}

