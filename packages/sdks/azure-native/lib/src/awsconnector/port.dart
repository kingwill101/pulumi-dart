// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Port
class Port {
  /// Access Direction for Protocol of the Instance(inbound/outbound).
  final pulumi.Input<String>? accessDirection;
  /// Access From Protocol of the Instance.
  final pulumi.Input<String>? accessFrom;
  /// Access Type Protocol of the Instance.
  final pulumi.Input<String>? accessType;
  /// cidr List Aliases
  final pulumi.Input<List<String>>? cidrListAliases;
  /// Property cidrs
  final pulumi.Input<List<String>>? cidrs;
  /// CommonName for Protocol of the Instance.
  final pulumi.Input<String>? commonName;
  /// From Port of the Instance.
  final pulumi.Input<int>? fromPort;
  /// IPv6 Cidrs
  final pulumi.Input<List<String>>? ipv6Cidrs;
  /// Port Protocol of the Instance.
  final pulumi.Input<String>? protocol;
  /// To Port of the Instance.
  final pulumi.Input<int>? toPort;

  /// Creates a new [Port].
  /// [accessDirection] Access Direction for Protocol of the Instance(inbound/outbound).
  /// [accessFrom] Access From Protocol of the Instance.
  /// [accessType] Access Type Protocol of the Instance.
  /// [cidrListAliases] cidr List Aliases
  /// [cidrs] Property cidrs
  /// [commonName] CommonName for Protocol of the Instance.
  /// [fromPort] From Port of the Instance.
  /// [ipv6Cidrs] IPv6 Cidrs
  /// [protocol] Port Protocol of the Instance.
  /// [toPort] To Port of the Instance.
  const Port({
    this.accessDirection,
    this.accessFrom,
    this.accessType,
    this.cidrListAliases,
    this.cidrs,
    this.commonName,
    this.fromPort,
    this.ipv6Cidrs,
    this.protocol,
    this.toPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessDirection': ?accessDirection,
      'accessFrom': ?accessFrom,
      'accessType': ?accessType,
      'cidrListAliases': ?cidrListAliases,
      'cidrs': ?cidrs,
      'commonName': ?commonName,
      'fromPort': ?fromPort,
      'ipv6Cidrs': ?ipv6Cidrs,
      'protocol': ?protocol,
      'toPort': ?toPort,
    };
  }

  factory Port.fromMap(Map<String, dynamic> map) {
    return Port(
      accessDirection: (() { final guardedValue = map['accessDirection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accessFrom: (() { final guardedValue = map['accessFrom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accessType: (() { final guardedValue = map['accessType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cidrListAliases: (() { final guardedValue = map['cidrListAliases']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      cidrs: (() { final guardedValue = map['cidrs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      commonName: (() { final guardedValue = map['commonName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fromPort: (() { final guardedValue = map['fromPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ipv6Cidrs: (() { final guardedValue = map['ipv6Cidrs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      toPort: (() { final guardedValue = map['toPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

