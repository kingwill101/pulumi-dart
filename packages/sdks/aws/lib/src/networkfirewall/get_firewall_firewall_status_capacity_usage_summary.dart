// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewall_firewall_status_capacity_usage_summary_cidr.dart';

class GetFirewallFirewallStatusCapacityUsageSummary {
  /// Capacity usage of CIDR blocks used by IP set references in a firewall.
  final pulumi.Input<List<GetFirewallFirewallStatusCapacityUsageSummaryCidr>> cidrs;

  /// Creates a new [GetFirewallFirewallStatusCapacityUsageSummary].
  /// [cidrs] Capacity usage of CIDR blocks used by IP set references in a firewall.
  const GetFirewallFirewallStatusCapacityUsageSummary({
    required this.cidrs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrs': pulumi.Input.mapInputValue<List<GetFirewallFirewallStatusCapacityUsageSummaryCidr>, List<Map<String, dynamic>>>(cidrs, (value) => pulumi.Input.encodeList<GetFirewallFirewallStatusCapacityUsageSummaryCidr, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetFirewallFirewallStatusCapacityUsageSummary.fromMap(Map<String, dynamic> map) {
    return GetFirewallFirewallStatusCapacityUsageSummary(
      cidrs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFirewallFirewallStatusCapacityUsageSummaryCidr>(map['cidrs']!, (value) => GetFirewallFirewallStatusCapacityUsageSummaryCidr.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

