// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_firewall_firewall_status_capacity_usage_summary_cidr_ip_set_reference/get_firewall_firewall_status_capacity_usage_summary_cidr_ip_set_reference.dart';

class GetFirewallFirewallStatusCapacityUsageSummaryCidr {
  /// Available number of CIDR blocks available for use by the IP set references in a firewall.
  final int availableCidrCount;

  /// The list of IP set references used by a firewall.
  final List<GetFirewallFirewallStatusCapacityUsageSummaryCidrIpSetReference>
      ipSetReferences;

  /// Number of CIDR blocks used by the IP set references in a firewall.
  final int utilizedCidrCount;

  GetFirewallFirewallStatusCapacityUsageSummaryCidr({
    required this.availableCidrCount,
    required this.ipSetReferences,
    required this.utilizedCidrCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['availableCidrCount'] = availableCidrCount;
    map['ipSetReferences'] = Input.encodeList<
        GetFirewallFirewallStatusCapacityUsageSummaryCidrIpSetReference,
        Map<String, dynamic>>(ipSetReferences, (value) => value.toMap());
    map['utilizedCidrCount'] = utilizedCidrCount;
    return map;
  }

  factory GetFirewallFirewallStatusCapacityUsageSummaryCidr.fromMap(
      Map<String, dynamic> map) {
    return GetFirewallFirewallStatusCapacityUsageSummaryCidr(
      availableCidrCount: map['availableCidrCount'] as int,
      ipSetReferences: Input.decodeList<
              GetFirewallFirewallStatusCapacityUsageSummaryCidrIpSetReference>(
          map['ipSetReferences'],
          (value) =>
              GetFirewallFirewallStatusCapacityUsageSummaryCidrIpSetReference
                  .fromMap((value as Map).cast<String, dynamic>())),
      utilizedCidrCount: map['utilizedCidrCount'] as int,
    );
  }
}
