// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewall_firewall_status_capacity_usage_summary_cidr.dart';

class GetFirewallFirewallStatusCapacityUsageSummary {
  /// Capacity usage of CIDR blocks used by IP set references in a firewall.
  final List<GetFirewallFirewallStatusCapacityUsageSummaryCidr> cidrs;

  /// Creates a new [GetFirewallFirewallStatusCapacityUsageSummary].
  /// [cidrs] Capacity usage of CIDR blocks used by IP set references in a firewall.
  GetFirewallFirewallStatusCapacityUsageSummary({
    required this.cidrs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cidrs'] = pulumi.Input.encodeList<
        GetFirewallFirewallStatusCapacityUsageSummaryCidr,
        Map<String, dynamic>>(cidrs, (value) => value.toMap());
    return map;
  }

  factory GetFirewallFirewallStatusCapacityUsageSummary.fromMap(
      Map<String, dynamic> map) {
    return GetFirewallFirewallStatusCapacityUsageSummary(
      cidrs: pulumi.Input.decodeList<
              GetFirewallFirewallStatusCapacityUsageSummaryCidr>(
          map['cidrs'],
          (value) => GetFirewallFirewallStatusCapacityUsageSummaryCidr.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
