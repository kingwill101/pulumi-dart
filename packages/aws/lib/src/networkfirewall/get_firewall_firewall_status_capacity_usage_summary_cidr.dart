// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewall_firewall_status_capacity_usage_summary_cidr_ip_set_reference.dart';

class GetFirewallFirewallStatusCapacityUsageSummaryCidr {
  /// Available number of CIDR blocks available for use by the IP set references in a firewall.
  final int availableCidrCount;

  /// The list of IP set references used by a firewall.
  final List<GetFirewallFirewallStatusCapacityUsageSummaryCidrIpSetReference>
  ipSetReferences;

  /// Number of CIDR blocks used by the IP set references in a firewall.
  final int utilizedCidrCount;

  /// Creates a new [GetFirewallFirewallStatusCapacityUsageSummaryCidr].
  /// [availableCidrCount] Available number of CIDR blocks available for use by the IP set references in a firewall.
  /// [ipSetReferences] The list of IP set references used by a firewall.
  /// [utilizedCidrCount] Number of CIDR blocks used by the IP set references in a firewall.
  GetFirewallFirewallStatusCapacityUsageSummaryCidr({
    required this.availableCidrCount,
    required this.ipSetReferences,
    required this.utilizedCidrCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableCidrCount': availableCidrCount,
      'ipSetReferences':
          pulumi.Input.encodeList<
            GetFirewallFirewallStatusCapacityUsageSummaryCidrIpSetReference,
            Map<String, dynamic>
          >(ipSetReferences, (value) => value.toMap()),
      'utilizedCidrCount': utilizedCidrCount,
    };
  }

  factory GetFirewallFirewallStatusCapacityUsageSummaryCidr.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetFirewallFirewallStatusCapacityUsageSummaryCidr(
      availableCidrCount: map['availableCidrCount'] as int,
      ipSetReferences:
          pulumi.Input.decodeList<
            GetFirewallFirewallStatusCapacityUsageSummaryCidrIpSetReference
          >(
            map['ipSetReferences'],
            (value) =>
                GetFirewallFirewallStatusCapacityUsageSummaryCidrIpSetReference.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      utilizedCidrCount: map['utilizedCidrCount'] as int,
    );
  }
}
