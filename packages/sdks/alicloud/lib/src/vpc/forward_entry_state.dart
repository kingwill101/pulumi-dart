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
  /// &gt; **NOTE:** A SNAT entry and a DNAT entry may use the same public IP address. If you want to specify a port number greater than 1024 in this case, set `port_break` to true.
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
    this.externalIp,
    this.externalPort,
    this.forwardEntryId,
    this.forwardEntryName,
    this.forwardTableId,
    this.internalIp,
    this.internalPort,
    this.ipProtocol,
    this.name,
    this.portBreak,
    this.status,
  });

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
      externalIp: (() {
        final guardedValue = map['externalIp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      externalPort: (() {
        final guardedValue = map['externalPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      forwardEntryId: (() {
        final guardedValue = map['forwardEntryId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      forwardEntryName: (() {
        final guardedValue = map['forwardEntryName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      forwardTableId: (() {
        final guardedValue = map['forwardTableId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      internalIp: (() {
        final guardedValue = map['internalIp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      internalPort: (() {
        final guardedValue = map['internalPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipProtocol: (() {
        final guardedValue = map['ipProtocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      portBreak: (() {
        final guardedValue = map['portBreak'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
