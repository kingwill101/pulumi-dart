// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_forward_entry_forward_entry_args_doc}
/// The set of arguments for ForwardEntry.
/// {@endtemplate}
/// {@macro pulumi_vpc_forward_entry_forward_entry_args_doc}
class ForwardEntryArgs {
  /// The external ip address, the ip must along bandwidth package public ip which `alicloud.vpc.NatGateway` argument `bandwidth_packages`.
  final pulumi.Input<String> externalIp;
  /// The external port, valid value is 1~65535|any.
  final pulumi.Input<String> externalPort;
  /// The name of forward entry.
  final pulumi.Input<String>? forwardEntryName;
  /// The value can get from `alicloud.vpc.NatGateway` Attributes "forward_table_ids".
  final pulumi.Input<String> forwardTableId;
  /// The internal ip, must a private ip.
  final pulumi.Input<String> internalIp;
  /// The internal port, valid value is 1~65535|any.
  final pulumi.Input<String> internalPort;
  /// The ip protocol, valid value is tcp|udp|any.
  final pulumi.Input<String> ipProtocol;
  /// Field `name` has been deprecated from provider version 1.119.1. New field `forward_entry_name` instead.
  final pulumi.Input<String>? name;
  /// Specifies whether to remove limits on the port range. Default value is `false`.
  ///
  /// > **NOTE:** A SNAT entry and a DNAT entry may use the same public IP address. If you want to specify a port number greater than 1024 in this case, set `port_break` to true.
  final pulumi.Input<bool>? portBreak;

  /// Creates a new [ForwardEntryArgs].
  /// [externalIp] The external ip address, the ip must along bandwidth package public ip which `alicloud.vpc.NatGateway` argument `bandwidth_packages`.
  /// [externalPort] The external port, valid value is 1~65535|any.
  /// [forwardEntryName] The name of forward entry.
  /// [forwardTableId] The value can get from `alicloud.vpc.NatGateway` Attributes "forward_table_ids".
  /// [internalIp] The internal ip, must a private ip.
  /// [internalPort] The internal port, valid value is 1~65535|any.
  /// [ipProtocol] The ip protocol, valid value is tcp|udp|any.
  /// [name] Field `name` has been deprecated from provider version 1.119.1. New field `forward_entry_name` instead.
  /// [portBreak] Specifies whether to remove limits on the port range. Default value is `false`.
  ForwardEntryArgs({
    required String externalIp,
    required String externalPort,
    String? forwardEntryName,
    required String forwardTableId,
    required String internalIp,
    required String internalPort,
    required String ipProtocol,
    String? name,
    bool? portBreak,
  }) :
      externalIp = pulumi.Input.asInput<String>(externalIp),
      externalPort = pulumi.Input.asInput<String>(externalPort),
      forwardEntryName = pulumi.Input.asOptionalInput<String>(forwardEntryName),
      forwardTableId = pulumi.Input.asInput<String>(forwardTableId),
      internalIp = pulumi.Input.asInput<String>(internalIp),
      internalPort = pulumi.Input.asInput<String>(internalPort),
      ipProtocol = pulumi.Input.asInput<String>(ipProtocol),
      name = pulumi.Input.asOptionalInput<String>(name),
      portBreak = pulumi.Input.asOptionalInput<bool>(portBreak);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalIp': externalIp,
      'externalPort': externalPort,
      'forwardEntryName': ?forwardEntryName,
      'forwardTableId': forwardTableId,
      'internalIp': internalIp,
      'internalPort': internalPort,
      'ipProtocol': ipProtocol,
      'name': ?name,
      'portBreak': ?portBreak,
    };
  }

  factory ForwardEntryArgs.fromMap(Map<String, dynamic> map) {
    return ForwardEntryArgs(
      externalIp: map['externalIp'] as String,
      externalPort: map['externalPort'] as String,
      forwardEntryName: map['forwardEntryName'] == null ? null : map['forwardEntryName'] as String,
      forwardTableId: map['forwardTableId'] as String,
      internalIp: map['internalIp'] as String,
      internalPort: map['internalPort'] as String,
      ipProtocol: map['ipProtocol'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      portBreak: map['portBreak'] == null ? null : map['portBreak'] as bool,
    );
  }
}

