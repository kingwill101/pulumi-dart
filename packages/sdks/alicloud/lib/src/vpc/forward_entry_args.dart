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
    required pulumi.Output<String> externalIp,
    required pulumi.Output<String> externalPort,
    pulumi.Output<String>? forwardEntryName,
    required pulumi.Output<String> forwardTableId,
    required pulumi.Output<String> internalIp,
    required pulumi.Output<String> internalPort,
    required pulumi.Output<String> ipProtocol,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? portBreak,
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
      externalIp: pulumi.Output.create<String>(map['externalIp'] as String),
      externalPort: pulumi.Output.create<String>(map['externalPort'] as String),
      forwardEntryName: map['forwardEntryName'] == null ? null : pulumi.Output.create<String>(map['forwardEntryName'] as String),
      forwardTableId: pulumi.Output.create<String>(map['forwardTableId'] as String),
      internalIp: pulumi.Output.create<String>(map['internalIp'] as String),
      internalPort: pulumi.Output.create<String>(map['internalPort'] as String),
      ipProtocol: pulumi.Output.create<String>(map['ipProtocol'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      portBreak: map['portBreak'] == null ? null : pulumi.Output.create<bool>(map['portBreak'] as bool),
    );
  }
}

