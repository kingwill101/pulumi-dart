// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTrafficMirrorFilterIngressRulesRule {
  /// The destination CIDR block of the inbound traffic.
  final pulumi.Input<String> destinationCidrBlock;
  /// The destination port range of the inbound traffic.
  final pulumi.Input<String> destinationPortRange;
  /// The ID of the Traffic Mirror Filter Egress Rule.
  final pulumi.Input<String> id;
  /// The priority of the inbound rule. A smaller value indicates a higher priority. The maximum value is `10`, which indicates that you can configure at most 10 inbound rules for a filter.
  final pulumi.Input<int> priority;
  /// The transport protocol used by inbound traffic that needs to be mirrored. Valid values: `ALL`, `ICMP`, `TCP`, `UDP`.
  final pulumi.Input<String> protocol;
  /// The collection policy of the inbound rule. Valid values: `accept` or `drop`. `accept`: collects network traffic. `drop`: does not collect network traffic.
  final pulumi.Input<String> ruleAction;
  /// The source CIDR block of the inbound traffic.
  final pulumi.Input<String> sourceCidrBlock;
  /// The source port range of the inbound traffic.
  final pulumi.Input<String> sourcePortRange;
  /// The status of the resource. Valid values:`Creating`, `Created`, `Modifying` and `Deleting`.
  final pulumi.Input<String> status;
  /// The ID of the filter associated with the inbound rule.
  final pulumi.Input<String> trafficMirrorFilterId;
  /// The first ID of the resource.
  final pulumi.Input<String> trafficMirrorFilterRuleId;

  /// Creates a new [GetTrafficMirrorFilterIngressRulesRule].
  /// [destinationCidrBlock] The destination CIDR block of the inbound traffic.
  /// [destinationPortRange] The destination port range of the inbound traffic.
  /// [id] The ID of the Traffic Mirror Filter Egress Rule.
  /// [priority] The priority of the inbound rule. A smaller value indicates a higher priority. The maximum value is `10`, which indicates that you can configure at most 10 inbound rules for a filter.
  /// [protocol] The transport protocol used by inbound traffic that needs to be mirrored. Valid values: `ALL`, `ICMP`, `TCP`, `UDP`.
  /// [ruleAction] The collection policy of the inbound rule. Valid values: `accept` or `drop`. `accept`: collects network traffic. `drop`: does not collect network traffic.
  /// [sourceCidrBlock] The source CIDR block of the inbound traffic.
  /// [sourcePortRange] The source port range of the inbound traffic.
  /// [status] The status of the resource. Valid values:`Creating`, `Created`, `Modifying` and `Deleting`.
  /// [trafficMirrorFilterId] The ID of the filter associated with the inbound rule.
  /// [trafficMirrorFilterRuleId] The first ID of the resource.
  GetTrafficMirrorFilterIngressRulesRule({
    required this.destinationCidrBlock,
    required this.destinationPortRange,
    required this.id,
    required this.priority,
    required this.protocol,
    required this.ruleAction,
    required this.sourceCidrBlock,
    required this.sourcePortRange,
    required this.status,
    required this.trafficMirrorFilterId,
    required this.trafficMirrorFilterRuleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationCidrBlock': destinationCidrBlock,
      'destinationPortRange': destinationPortRange,
      'id': id,
      'priority': priority,
      'protocol': protocol,
      'ruleAction': ruleAction,
      'sourceCidrBlock': sourceCidrBlock,
      'sourcePortRange': sourcePortRange,
      'status': status,
      'trafficMirrorFilterId': trafficMirrorFilterId,
      'trafficMirrorFilterRuleId': trafficMirrorFilterRuleId,
    };
  }

  factory GetTrafficMirrorFilterIngressRulesRule.fromMap(Map<String, dynamic> map) {
    return GetTrafficMirrorFilterIngressRulesRule(
      destinationCidrBlock: (map['destinationCidrBlock'] as String).input(),
      destinationPortRange: (map['destinationPortRange'] as String).input(),
      id: (map['id'] as String).input(),
      priority: (map['priority'] as int).input(),
      protocol: (map['protocol'] as String).input(),
      ruleAction: (map['ruleAction'] as String).input(),
      sourceCidrBlock: (map['sourceCidrBlock'] as String).input(),
      sourcePortRange: (map['sourcePortRange'] as String).input(),
      status: (map['status'] as String).input(),
      trafficMirrorFilterId: (map['trafficMirrorFilterId'] as String).input(),
      trafficMirrorFilterRuleId: (map['trafficMirrorFilterRuleId'] as String).input(),
    );
  }
}

