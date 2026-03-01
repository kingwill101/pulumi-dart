// ignore_for_file: unused_element, unnecessary_cast


class GetTrafficMirrorFilterEgressRulesRule {
  /// The destination CIDR block of the outbound traffic.
  final String destinationCidrBlock;
  /// The destination port range of the outbound traffic.
  final String destinationPortRange;
  /// The ID of the Traffic Mirror Filter Egress Rule.
  final String id;
  /// The priority of the outbound rule. A smaller value indicates a higher priority. The maximum value is `10`, which indicates that you can configure at most 10 inbound rules for a filter.
  final int priority;
  /// The transport protocol used by outbound traffic that needs to be mirrored. Valid values: `ALL`, `ICMP`, `TCP`, `UDP`.
  final String protocol;
  /// The collection policy of the inbound rule. Valid values: `accept` or `drop`. `accept`: collects network traffic. `drop`: does not collect network traffic.
  final String ruleAction;
  /// The source CIDR block of the outbound traffic.
  final String sourceCidrBlock;
  /// The source port range of the outbound traffic.
  final String sourcePortRange;
  /// The status of the resource. Valid values:`Creating`, `Created`, `Modifying` and `Deleting`.
  final String status;
  /// The ID of the filter associated with the outbound rule.
  final String trafficMirrorFilterId;
  /// The first ID of the resource.
  final String trafficMirrorFilterRuleId;

  /// Creates a new [GetTrafficMirrorFilterEgressRulesRule].
  /// [destinationCidrBlock] The destination CIDR block of the outbound traffic.
  /// [destinationPortRange] The destination port range of the outbound traffic.
  /// [id] The ID of the Traffic Mirror Filter Egress Rule.
  /// [priority] The priority of the outbound rule. A smaller value indicates a higher priority. The maximum value is `10`, which indicates that you can configure at most 10 inbound rules for a filter.
  /// [protocol] The transport protocol used by outbound traffic that needs to be mirrored. Valid values: `ALL`, `ICMP`, `TCP`, `UDP`.
  /// [ruleAction] The collection policy of the inbound rule. Valid values: `accept` or `drop`. `accept`: collects network traffic. `drop`: does not collect network traffic.
  /// [sourceCidrBlock] The source CIDR block of the outbound traffic.
  /// [sourcePortRange] The source port range of the outbound traffic.
  /// [status] The status of the resource. Valid values:`Creating`, `Created`, `Modifying` and `Deleting`.
  /// [trafficMirrorFilterId] The ID of the filter associated with the outbound rule.
  /// [trafficMirrorFilterRuleId] The first ID of the resource.
  GetTrafficMirrorFilterEgressRulesRule({
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

  factory GetTrafficMirrorFilterEgressRulesRule.fromMap(Map<String, dynamic> map) {
    return GetTrafficMirrorFilterEgressRulesRule(
      destinationCidrBlock: map['destinationCidrBlock'] as String,
      destinationPortRange: map['destinationPortRange'] as String,
      id: map['id'] as String,
      priority: map['priority'] as int,
      protocol: map['protocol'] as String,
      ruleAction: map['ruleAction'] as String,
      sourceCidrBlock: map['sourceCidrBlock'] as String,
      sourcePortRange: map['sourcePortRange'] as String,
      status: map['status'] as String,
      trafficMirrorFilterId: map['trafficMirrorFilterId'] as String,
      trafficMirrorFilterRuleId: map['trafficMirrorFilterRuleId'] as String,
    );
  }
}

