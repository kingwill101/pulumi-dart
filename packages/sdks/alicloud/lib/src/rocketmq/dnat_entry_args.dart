// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rocketmq_dnat_entry_dnat_entry_args_doc}
/// The set of arguments for DnatEntry.
/// {@endtemplate}
/// {@macro pulumi_rocketmq_dnat_entry_dnat_entry_args_doc}
class DnatEntryArgs {
  /// The external public IP address.when "type" is "Internet",automatically identify the external ip.
  final pulumi.Input<String>? externalIp;
  /// The public port.Value range: 1 to 65535 or "any".
  final pulumi.Input<String> externalPort;
  /// The destination private IP address.
  final pulumi.Input<String> internalIp;
  /// The destination private port.Value range: 1 to 65535 or "any".
  final pulumi.Input<String> internalPort;
  /// The protocol type. Valid values: TCP: Forwards packets of the TCP protocol. UDP: Forwards packets of the UDP protocol. Any: Forwards packets of all protocols.
  final pulumi.Input<String> ipProtocol;
  /// The ID of the SAG instance.
  final pulumi.Input<String> sagId;
  /// The DNAT type. Valid values: Intranet: DNAT of private IP addresses. Internet: DNAT of public IP addresses
  final pulumi.Input<String> type;

  /// Creates a new [DnatEntryArgs].
  /// [externalIp] The external public IP address.when "type" is "Internet",automatically identify the external ip.
  /// [externalPort] The public port.Value range: 1 to 65535 or "any".
  /// [internalIp] The destination private IP address.
  /// [internalPort] The destination private port.Value range: 1 to 65535 or "any".
  /// [ipProtocol] The protocol type. Valid values: TCP: Forwards packets of the TCP protocol. UDP: Forwards packets of the UDP protocol. Any: Forwards packets of all protocols.
  /// [sagId] The ID of the SAG instance.
  /// [type] The DNAT type. Valid values: Intranet: DNAT of private IP addresses. Internet: DNAT of public IP addresses
  DnatEntryArgs({
    this.externalIp,
    required this.externalPort,
    required this.internalIp,
    required this.internalPort,
    required this.ipProtocol,
    required this.sagId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalIp': ?externalIp,
      'externalPort': externalPort,
      'internalIp': internalIp,
      'internalPort': internalPort,
      'ipProtocol': ipProtocol,
      'sagId': sagId,
      'type': type,
    };
  }

  factory DnatEntryArgs.fromMap(Map<String, dynamic> map) {
    return DnatEntryArgs(
      externalIp: map['externalIp'] == null ? null : (map['externalIp']! as String).input(),
      externalPort: (map['externalPort'] as String).input(),
      internalIp: (map['internalIp'] as String).input(),
      internalPort: (map['internalPort'] as String).input(),
      ipProtocol: (map['ipProtocol'] as String).input(),
      sagId: (map['sagId'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

