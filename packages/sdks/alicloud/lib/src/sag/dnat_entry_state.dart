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
  const DnatEntryState({
    this.externalIp,
    this.externalPort,
    this.internalIp,
    this.internalPort,
    this.ipProtocol,
    this.sagId,
    this.type,
  });

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
      externalIp: (() { final guardedValue = map['externalIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalPort: (() { final guardedValue = map['externalPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      internalIp: (() { final guardedValue = map['internalIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      internalPort: (() { final guardedValue = map['internalPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipProtocol: (() { final guardedValue = map['ipProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sagId: (() { final guardedValue = map['sagId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

