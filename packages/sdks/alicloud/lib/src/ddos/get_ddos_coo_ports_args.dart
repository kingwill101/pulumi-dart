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
    pulumi.Output<String>? frontendPort,
    pulumi.Output<String>? frontendProtocol,
    pulumi.Output<List<String>>? ids,
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? outputFile,
  }) :
      frontendPort = pulumi.Input.asOptionalInput<String>(frontendPort),
      frontendProtocol = pulumi.Input.asOptionalInput<String>(frontendProtocol),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

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
      frontendPort: map['frontendPort'] == null ? null : pulumi.Output.create<String>(map['frontendPort'] as String),
      frontendProtocol: map['frontendProtocol'] == null ? null : pulumi.Output.create<String>(map['frontendProtocol'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

