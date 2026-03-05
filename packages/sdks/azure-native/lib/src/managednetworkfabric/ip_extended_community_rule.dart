// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// List of IP Extended Community Rules.
class IpExtendedCommunityRule {
  /// Action to be taken on the configuration. Example: Permit | Deny.
  final pulumi.Input<String> action;
  /// Route Target List.The expected formats are ASN(plain):NN &gt;&gt; example 4294967294:50, ASN.ASN:NN &gt;&gt; example 65533.65333:40, IP-address:NN &gt;&gt; example 10.10.10.10:65535. The possible values of ASN,NN are in range of 0-65535, ASN(plain) is in range of 0-4294967295.
  final pulumi.Input<List<String>> routeTargets;
  /// Sequence to insert to/delete from existing route. Prefix lists are evaluated starting with the lowest sequence number and continue down the list until a match is made. Once a match is made, the permit or deny statement is applied to that network and the rest of the list is ignored.
  final pulumi.Input<double> sequenceNumber;

  /// Creates a new [IpExtendedCommunityRule].
  /// [action] Action to be taken on the configuration. Example: Permit | Deny.
  /// [routeTargets] Route Target List.The expected formats are ASN(plain):NN &gt;&gt; example 4294967294:50, ASN.ASN:NN &gt;&gt; example 65533.65333:40, IP-address:NN &gt;&gt; example 10.10.10.10:65535. The possible values of ASN,NN are in range of 0-65535, ASN(plain) is in range of 0-4294967295.
  /// [sequenceNumber] Sequence to insert to/delete from existing route. Prefix lists are evaluated starting with the lowest sequence number and continue down the list until a match is made. Once a match is made, the permit or deny statement is applied to that network and the rest of the list is ignored.
  IpExtendedCommunityRule({
    required this.action,
    required this.routeTargets,
    required this.sequenceNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'routeTargets': routeTargets,
      'sequenceNumber': sequenceNumber,
    };
  }

  factory IpExtendedCommunityRule.fromMap(Map<String, dynamic> map) {
    return IpExtendedCommunityRule(
      action: pulumi.Input.fromValue(map['action'] as String),
      routeTargets: pulumi.Input.fromValue((map['routeTargets'] as List).cast<String>()),
      sequenceNumber: pulumi.Input.fromValue(map['sequenceNumber'] as double),
    );
  }
}

