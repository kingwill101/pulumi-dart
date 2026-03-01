// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DnatEntry resources.
class DnatEntryState {
  /// The external public IP address.when "type" is "Internet",automatically identify the external ip.
  final pulumi.Input<String>? externalIp;
  /// The public port.Value range: 1 to 65535 or "any".
  final pulumi.Input<String>? externalPort;
  /// The destination private IP address.
  final pulumi.Input<String>? internalIp;
  /// The destination private port.Value range: 1 to 65535 or "any".
  final pulumi.Input<String>? internalPort;
  /// The protocol type. Valid values: TCP: Forwards packets of the TCP protocol. UDP: Forwards packets of the UDP protocol. Any: Forwards packets of all protocols.
  final pulumi.Input<String>? ipProtocol;
  /// The ID of the SAG instance.
  final pulumi.Input<String>? sagId;
  /// The DNAT type. Valid values: Intranet: DNAT of private IP addresses. Internet: DNAT of public IP addresses
  final pulumi.Input<String>? type;

  /// Creates a new [DnatEntryState].
  /// [externalIp] The external public IP address.when "type" is "Internet",automatically identify the external ip.
  /// [externalPort] The public port.Value range: 1 to 65535 or "any".
  /// [internalIp] The destination private IP address.
  /// [internalPort] The destination private port.Value range: 1 to 65535 or "any".
  /// [ipProtocol] The protocol type. Valid values: TCP: Forwards packets of the TCP protocol. UDP: Forwards packets of the UDP protocol. Any: Forwards packets of all protocols.
  /// [sagId] The ID of the SAG instance.
  /// [type] The DNAT type. Valid values: Intranet: DNAT of private IP addresses. Internet: DNAT of public IP addresses
  DnatEntryState({
    pulumi.Output<String>? externalIp,
    pulumi.Output<String>? externalPort,
    pulumi.Output<String>? internalIp,
    pulumi.Output<String>? internalPort,
    pulumi.Output<String>? ipProtocol,
    pulumi.Output<String>? sagId,
    pulumi.Output<String>? type,
  }) :
      externalIp = pulumi.Input.asOptionalInput<String>(externalIp),
      externalPort = pulumi.Input.asOptionalInput<String>(externalPort),
      internalIp = pulumi.Input.asOptionalInput<String>(internalIp),
      internalPort = pulumi.Input.asOptionalInput<String>(internalPort),
      ipProtocol = pulumi.Input.asOptionalInput<String>(ipProtocol),
      sagId = pulumi.Input.asOptionalInput<String>(sagId),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalIp': ?externalIp,
      'externalPort': ?externalPort,
      'internalIp': ?internalIp,
      'internalPort': ?internalPort,
      'ipProtocol': ?ipProtocol,
      'sagId': ?sagId,
      'type': ?type,
    };
  }

  factory DnatEntryState.fromMap(Map<String, dynamic> map) {
    return DnatEntryState(
      externalIp: map['externalIp'] == null ? null : pulumi.Output.create<String>(map['externalIp'] as String),
      externalPort: map['externalPort'] == null ? null : pulumi.Output.create<String>(map['externalPort'] as String),
      internalIp: map['internalIp'] == null ? null : pulumi.Output.create<String>(map['internalIp'] as String),
      internalPort: map['internalPort'] == null ? null : pulumi.Output.create<String>(map['internalPort'] as String),
      ipProtocol: map['ipProtocol'] == null ? null : pulumi.Output.create<String>(map['ipProtocol'] as String),
      sagId: map['sagId'] == null ? null : pulumi.Output.create<String>(map['sagId'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

