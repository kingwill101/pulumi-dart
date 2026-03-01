// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ForwardEntry resources.
class ForwardEntryState {
  /// The external ip address, the ip must along bandwidth package public ip which `alicloud.vpc.NatGateway` argument `bandwidth_packages`.
  final pulumi.Input<String>? externalIp;
  /// The external port, valid value is 1~65535|any.
  final pulumi.Input<String>? externalPort;
  /// The id of the forward entry on the server.
  final pulumi.Input<String>? forwardEntryId;
  /// The name of forward entry.
  final pulumi.Input<String>? forwardEntryName;
  /// The value can get from `alicloud.vpc.NatGateway` Attributes "forward_table_ids".
  final pulumi.Input<String>? forwardTableId;
  /// The internal ip, must a private ip.
  final pulumi.Input<String>? internalIp;
  /// The internal port, valid value is 1~65535|any.
  final pulumi.Input<String>? internalPort;
  /// The ip protocol, valid value is tcp|udp|any.
  final pulumi.Input<String>? ipProtocol;
  /// Field `name` has been deprecated from provider version 1.119.1. New field `forward_entry_name` instead.
  final pulumi.Input<String>? name;
  /// Specifies whether to remove limits on the port range. Default value is `false`.
  ///
  /// > **NOTE:** A SNAT entry and a DNAT entry may use the same public IP address. If you want to specify a port number greater than 1024 in this case, set `port_break` to true.
  final pulumi.Input<bool>? portBreak;
  /// (Available since v1.119.1) The status of forward entry.
  final pulumi.Input<String>? status;

  /// Creates a new [ForwardEntryState].
  /// [externalIp] The external ip address, the ip must along bandwidth package public ip which `alicloud.vpc.NatGateway` argument `bandwidth_packages`.
  /// [externalPort] The external port, valid value is 1~65535|any.
  /// [forwardEntryId] The id of the forward entry on the server.
  /// [forwardEntryName] The name of forward entry.
  /// [forwardTableId] The value can get from `alicloud.vpc.NatGateway` Attributes "forward_table_ids".
  /// [internalIp] The internal ip, must a private ip.
  /// [internalPort] The internal port, valid value is 1~65535|any.
  /// [ipProtocol] The ip protocol, valid value is tcp|udp|any.
  /// [name] Field `name` has been deprecated from provider version 1.119.1. New field `forward_entry_name` instead.
  /// [portBreak] Specifies whether to remove limits on the port range. Default value is `false`.
  /// [status] (Available since v1.119.1) The status of forward entry.
  ForwardEntryState({
    pulumi.Output<String>? externalIp,
    pulumi.Output<String>? externalPort,
    pulumi.Output<String>? forwardEntryId,
    pulumi.Output<String>? forwardEntryName,
    pulumi.Output<String>? forwardTableId,
    pulumi.Output<String>? internalIp,
    pulumi.Output<String>? internalPort,
    pulumi.Output<String>? ipProtocol,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? portBreak,
    pulumi.Output<String>? status,
  }) :
      externalIp = pulumi.Input.asOptionalInput<String>(externalIp),
      externalPort = pulumi.Input.asOptionalInput<String>(externalPort),
      forwardEntryId = pulumi.Input.asOptionalInput<String>(forwardEntryId),
      forwardEntryName = pulumi.Input.asOptionalInput<String>(forwardEntryName),
      forwardTableId = pulumi.Input.asOptionalInput<String>(forwardTableId),
      internalIp = pulumi.Input.asOptionalInput<String>(internalIp),
      internalPort = pulumi.Input.asOptionalInput<String>(internalPort),
      ipProtocol = pulumi.Input.asOptionalInput<String>(ipProtocol),
      name = pulumi.Input.asOptionalInput<String>(name),
      portBreak = pulumi.Input.asOptionalInput<bool>(portBreak),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalIp': ?externalIp,
      'externalPort': ?externalPort,
      'forwardEntryId': ?forwardEntryId,
      'forwardEntryName': ?forwardEntryName,
      'forwardTableId': ?forwardTableId,
      'internalIp': ?internalIp,
      'internalPort': ?internalPort,
      'ipProtocol': ?ipProtocol,
      'name': ?name,
      'portBreak': ?portBreak,
      'status': ?status,
    };
  }

  factory ForwardEntryState.fromMap(Map<String, dynamic> map) {
    return ForwardEntryState(
      externalIp: map['externalIp'] == null ? null : pulumi.Output.create<String>(map['externalIp'] as String),
      externalPort: map['externalPort'] == null ? null : pulumi.Output.create<String>(map['externalPort'] as String),
      forwardEntryId: map['forwardEntryId'] == null ? null : pulumi.Output.create<String>(map['forwardEntryId'] as String),
      forwardEntryName: map['forwardEntryName'] == null ? null : pulumi.Output.create<String>(map['forwardEntryName'] as String),
      forwardTableId: map['forwardTableId'] == null ? null : pulumi.Output.create<String>(map['forwardTableId'] as String),
      internalIp: map['internalIp'] == null ? null : pulumi.Output.create<String>(map['internalIp'] as String),
      internalPort: map['internalPort'] == null ? null : pulumi.Output.create<String>(map['internalPort'] as String),
      ipProtocol: map['ipProtocol'] == null ? null : pulumi.Output.create<String>(map['ipProtocol'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      portBreak: map['portBreak'] == null ? null : pulumi.Output.create<bool>(map['portBreak'] as bool),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

