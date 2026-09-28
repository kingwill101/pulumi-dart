// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFirewallFirewallStatusCapacityUsageSummaryCidrIpSetReference {
  /// Total number of CIDR blocks used by the IP set references in a firewall.
  final pulumi.Input<int> resolvedCidrCount;

  /// Creates a new [GetFirewallFirewallStatusCapacityUsageSummaryCidrIpSetReference].
  /// [resolvedCidrCount] Total number of CIDR blocks used by the IP set references in a firewall.
  const GetFirewallFirewallStatusCapacityUsageSummaryCidrIpSetReference({
    required this.resolvedCidrCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resolvedCidrCount': resolvedCidrCount,
    };
  }

  factory GetFirewallFirewallStatusCapacityUsageSummaryCidrIpSetReference.fromMap(Map<String, dynamic> map) {
    return GetFirewallFirewallStatusCapacityUsageSummaryCidrIpSetReference(
      resolvedCidrCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['resolvedCidrCount'])),
    );
  }
}
