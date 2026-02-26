// ignore_for_file: unused_element, unnecessary_cast

class GetFirewallFirewallStatusCapacityUsageSummaryCidrIpSetReference {
  /// Total number of CIDR blocks used by the IP set references in a firewall.
  final int resolvedCidrCount;

  GetFirewallFirewallStatusCapacityUsageSummaryCidrIpSetReference({
    required this.resolvedCidrCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resolvedCidrCount'] = resolvedCidrCount;
    return map;
  }

  factory GetFirewallFirewallStatusCapacityUsageSummaryCidrIpSetReference.fromMap(
      Map<String, dynamic> map) {
    return GetFirewallFirewallStatusCapacityUsageSummaryCidrIpSetReference(
      resolvedCidrCount: map['resolvedCidrCount'] as int,
    );
  }
}
