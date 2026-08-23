// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewall_firewall_status_capacity_usage_summary_cidr_ip_set_reference.dart';

class GetFirewallFirewallStatusCapacityUsageSummaryCidr {
  /// Available number of CIDR blocks available for use by the IP set references in a firewall.
  final pulumi.Input<int> availableCidrCount;
  /// The list of IP set references used by a firewall.
  final pulumi.Input<List<GetFirewallFirewallStatusCapacityUsageSummaryCidrIpSetReference>> ipSetReferences;
  /// Number of CIDR blocks used by the IP set references in a firewall.
  final pulumi.Input<int> utilizedCidrCount;

  /// Creates a new [GetFirewallFirewallStatusCapacityUsageSummaryCidr].
  /// [availableCidrCount] Available number of CIDR blocks available for use by the IP set references in a firewall.
  /// [ipSetReferences] The list of IP set references used by a firewall.
  /// [utilizedCidrCount] Number of CIDR blocks used by the IP set references in a firewall.
  const GetFirewallFirewallStatusCapacityUsageSummaryCidr({
    required this.availableCidrCount,
    required this.ipSetReferences,
    required this.utilizedCidrCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableCidrCount': availableCidrCount,
      'ipSetReferences': pulumi.Input.mapInputValue<List<GetFirewallFirewallStatusCapacityUsageSummaryCidrIpSetReference>, List<Map<String, dynamic>>>(ipSetReferences, (value) => pulumi.Input.encodeList<GetFirewallFirewallStatusCapacityUsageSummaryCidrIpSetReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'utilizedCidrCount': utilizedCidrCount,
    };
  }

  factory GetFirewallFirewallStatusCapacityUsageSummaryCidr.fromMap(Map<String, dynamic> map) {
    return GetFirewallFirewallStatusCapacityUsageSummaryCidr(
      availableCidrCount: pulumi.Input.fromValue(map['availableCidrCount'] as int),
      ipSetReferences: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFirewallFirewallStatusCapacityUsageSummaryCidrIpSetReference>(map['ipSetReferences']!, (value) => GetFirewallFirewallStatusCapacityUsageSummaryCidrIpSetReference.fromMap((value as Map).cast<String, dynamic>()))),
      utilizedCidrCount: pulumi.Input.fromValue(map['utilizedCidrCount'] as int),
    );
  }
}
