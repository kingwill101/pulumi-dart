// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// IP Prefix Rule properties.
class IpPrefixRule {
  /// Action to be taken on the configuration. Example: Permit | Deny.
  final pulumi.Input<String> action;
  /// Specify prefix-list bounds.
  final pulumi.Input<String>? condition;
  /// Network Prefix specifying IPv4/IPv6 packets to be permitted or denied. Example: 1.1.1.0/24 | 3FFE:FFFF:0:CD30::/126
  final pulumi.Input<String> networkPrefix;
  /// Sequence to insert to/delete from existing route. Prefix lists are evaluated starting with the lowest sequence number and continue down the list until a match is made. Once a match is made, the permit or deny statement is applied to that network and the rest of the list is ignored.
  final pulumi.Input<double> sequenceNumber;
  /// SubnetMaskLength gives the minimum NetworkPrefix length to be matched. Possible values for IPv4 are 1 - 32 . Possible values of IPv6 are 1 - 128.
  final pulumi.Input<String>? subnetMaskLength;

  /// Creates a new [IpPrefixRule].
  /// [action] Action to be taken on the configuration. Example: Permit | Deny.
  /// [condition] Specify prefix-list bounds.
  /// [networkPrefix] Network Prefix specifying IPv4/IPv6 packets to be permitted or denied. Example: 1.1.1.0/24 | 3FFE:FFFF:0:CD30::/126
  /// [sequenceNumber] Sequence to insert to/delete from existing route. Prefix lists are evaluated starting with the lowest sequence number and continue down the list until a match is made. Once a match is made, the permit or deny statement is applied to that network and the rest of the list is ignored.
  /// [subnetMaskLength] SubnetMaskLength gives the minimum NetworkPrefix length to be matched. Possible values for IPv4 are 1 - 32 . Possible values of IPv6 are 1 - 128.
  IpPrefixRule({
    required this.action,
    this.condition,
    required this.networkPrefix,
    required this.sequenceNumber,
    this.subnetMaskLength,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'condition': ?condition,
      'networkPrefix': networkPrefix,
      'sequenceNumber': sequenceNumber,
      'subnetMaskLength': ?subnetMaskLength,
    };
  }

  factory IpPrefixRule.fromMap(Map<String, dynamic> map) {
    return IpPrefixRule(
      action: pulumi.Input.fromValue(map['action'] as String),
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkPrefix: pulumi.Input.fromValue(map['networkPrefix'] as String),
      sequenceNumber: pulumi.Input.fromValue(map['sequenceNumber'] as double),
      subnetMaskLength: (() { final guardedValue = map['subnetMaskLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

