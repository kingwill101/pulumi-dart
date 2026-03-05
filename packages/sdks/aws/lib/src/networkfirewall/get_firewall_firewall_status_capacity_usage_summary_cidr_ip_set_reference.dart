// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFirewallFirewallStatusCapacityUsageSummaryCidrIpSetReference {
  /// Total number of CIDR blocks used by the IP set references in a firewall.
  final pulumi.Input<int> resolvedCidrCount;

  /// Creates a new [GetFirewallFirewallStatusCapacityUsageSummaryCidrIpSetReference].
  /// [resolvedCidrCount] Total number of CIDR blocks used by the IP set references in a firewall.
  GetFirewallFirewallStatusCapacityUsageSummaryCidrIpSetReference({
    required this.resolvedCidrCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resolvedCidrCount': resolvedCidrCount,
    };
  }

  factory GetFirewallFirewallStatusCapacityUsageSummaryCidrIpSetReference.fromMap(Map<String, dynamic> map) {
    return GetFirewallFirewallStatusCapacityUsageSummaryCidrIpSetReference(
      resolvedCidrCount: pulumi.Input.fromValue(map['resolvedCidrCount'] as int),
    );
  }
}

