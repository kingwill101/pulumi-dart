// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'ip_range_response.dart';

/// Result data returned by getExternalAccessRule.
class GetExternalAccessRuleResult {
  /// The action that the external access rule performs.
  final String action;

  /// Creation time of this resource.
  final String createTime;

  /// User-provided description for this external access rule.
  final String description;

  /// If destination ranges are specified, the external access rule applies only to the traffic that has a destination IP address in these ranges. The specified IP addresses must have reserved external IP addresses in the scope of the parent network policy. To match all external IP addresses in the scope of the parent network policy, specify `0.0.0.0/0`. To match a specific external IP address, specify it using the `IpRange.external_address` property.
  final List<IpRangeResponse> destinationIpRanges;

  /// A list of destination ports to which the external access rule applies. This field is only applicable for the UDP or TCP protocol. Each entry must be either an integer or a range. For example: `["22"]`, `["80","443"]`, or `["12345-12349"]`. To match all destination ports, specify `["0-65535"]`.
  final List<String> destinationPorts;

  /// The IP protocol to which the external access rule applies. This value can be one of the following three protocol strings (not case-sensitive): `tcp`, `udp`, or `icmp`.
  final String ipProtocol;

  /// The resource name of this external access rule. Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. For example: `projects/my-project/locations/us-central1/networkPolicies/my-policy/externalAccessRules/my-rule`
  final String name;

  /// External access rule priority, which determines the external access rule to use when multiple rules apply. If multiple rules have the same priority, their ordering is non-deterministic. If specific ordering is required, assign unique priorities to enforce such ordering. The external access rule priority is an integer from 100 to 4096, both inclusive. Lower integers indicate higher precedence. For example, a rule with priority `100` has higher precedence than a rule with priority `101`.
  final int priority;

  /// If source ranges are specified, the external access rule applies only to traffic that has a source IP address in these ranges. These ranges can either be expressed in the CIDR format or as an IP address. As only inbound rules are supported, `ExternalAddress` resources cannot be the source IP addresses of an external access rule. To match all source addresses, specify `0.0.0.0/0`.
  final List<IpRangeResponse> sourceIpRanges;

  /// A list of source ports to which the external access rule applies. This field is only applicable for the UDP or TCP protocol. Each entry must be either an integer or a range. For example: `["22"]`, `["80","443"]`, or `["12345-12349"]`. To match all source ports, specify `["0-65535"]`.
  final List<String> sourcePorts;

  /// The state of the resource.
  final String state;

  /// System-generated unique identifier for the resource.
  final String uid;

  /// Last update time of this resource.
  final String updateTime;

  GetExternalAccessRuleResult({
    required this.action,
    required this.createTime,
    required this.description,
    required this.destinationIpRanges,
    required this.destinationPorts,
    required this.ipProtocol,
    required this.name,
    required this.priority,
    required this.sourceIpRanges,
    required this.sourcePorts,
    required this.state,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action;
    map['createTime'] = createTime;
    map['description'] = description;
    map['destinationIpRanges'] =
        Input.encodeList<IpRangeResponse, Map<String, dynamic>>(
            destinationIpRanges, (value) => value.toMap());
    map['destinationPorts'] = destinationPorts;
    map['ipProtocol'] = ipProtocol;
    map['name'] = name;
    map['priority'] = priority;
    map['sourceIpRanges'] =
        Input.encodeList<IpRangeResponse, Map<String, dynamic>>(
            sourceIpRanges, (value) => value.toMap());
    map['sourcePorts'] = sourcePorts;
    map['state'] = state;
    map['uid'] = uid;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetExternalAccessRuleResult.fromMap(Map<String, dynamic> map) {
    return GetExternalAccessRuleResult(
      action: map['action'] as String,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      destinationIpRanges: Input.decodeList<IpRangeResponse>(
          map['destinationIpRanges'],
          (value) =>
              IpRangeResponse.fromMap((value as Map).cast<String, dynamic>())),
      destinationPorts: (map['destinationPorts'] as List).cast<String>(),
      ipProtocol: map['ipProtocol'] as String,
      name: map['name'] as String,
      priority: map['priority'] as int,
      sourceIpRanges: Input.decodeList<IpRangeResponse>(
          map['sourceIpRanges'],
          (value) =>
              IpRangeResponse.fromMap((value as Map).cast<String, dynamic>())),
      sourcePorts: (map['sourcePorts'] as List).cast<String>(),
      state: map['state'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
