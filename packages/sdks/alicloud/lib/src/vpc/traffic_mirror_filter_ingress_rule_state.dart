// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TrafficMirrorFilterIngressRule resources.
class TrafficMirrorFilterIngressRuleState {
  /// The collection policy of the inbound rule. Valid values: `accept` or `drop`. `accept`: collects network traffic. `drop`: does not collect network traffic.
  final pulumi.Input<String>? action;
  /// The destination CIDR block of the inbound traffic.
  final pulumi.Input<String>? destinationCidrBlock;
  /// The destination CIDR block of the inbound traffic. Valid values: `1` to `65535`. Separate the first port and last port with a forward slash (/), for example, `1/200` or `80/80`. A value of `-1/-1` indicates that all ports are available. Therefore, do not set the value to `-1/-1`. **NOTE:** When `protocol` is `ICMP`, this parameter is invalid.
  final pulumi.Input<String>? destinationPortRange;
  /// Whether to PreCheck this request only. Value:
  /// - **true**: sends a check request and does not create inbound or outbound rules. Check items include whether required parameters are filled in, request format, and restrictions. If the check fails, the corresponding error is returned. If the check passes, the error code 'DryRunOperation' is returned '.
  /// - **false** (default): Sends a normal request and directly creates an inbound or outbound direction rule after checking.
  final pulumi.Input<bool>? dryRun;
  /// The priority of the inbound rule. A smaller value indicates a higher priority. The maximum value is `10`, which indicates that you can configure at most 10 inbound rules for a filter.
  final pulumi.Input<int>? priority;
  /// The transport protocol used by inbound traffic that needs to be mirrored. Valid values: `ALL`, `ICMP`, `TCP`, `UDP`.
  final pulumi.Input<String>? protocol;
  /// . Field 'rule_action' has been deprecated from provider version 1.211.0. New field 'action' instead.
  final pulumi.Input<String>? ruleAction;
  /// The source CIDR block of the inbound traffic.
  final pulumi.Input<String>? sourceCidrBlock;
  /// The source port range of the inbound traffic. Valid values: `1` to `65535`. Separate the first port and last port with a forward slash (/), for example, `1/200` or `80/80`. A value of `-1/-1` indicates that all ports are available. Therefore, do not set the value to `-1/-1`. **NOTE:** When `protocol` is `ICMP`, this parameter is invalid.
  final pulumi.Input<String>? sourcePortRange;
  /// The state of the inbound rule. `Creating`, `Created`, `Modifying` and `Deleting`.
  final pulumi.Input<String>? status;
  /// The ID of the filter.
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  final pulumi.Input<String>? trafficMirrorFilterId;
  /// The ID of the outbound rule.
  final pulumi.Input<String>? trafficMirrorFilterIngressRuleId;

  /// Creates a new [TrafficMirrorFilterIngressRuleState].
  /// [action] The collection policy of the inbound rule. Valid values: `accept` or `drop`. `accept`: collects network traffic. `drop`: does not collect network traffic.
  /// [destinationCidrBlock] The destination CIDR block of the inbound traffic.
  /// [destinationPortRange] The destination CIDR block of the inbound traffic. Valid values: `1` to `65535`. Separate the first port and last port with a forward slash (/), for example, `1/200` or `80/80`. A value of `-1/-1` indicates that all ports are available. Therefore, do not set the value to `-1/-1`. **NOTE:** When `protocol` is `ICMP`, this parameter is invalid.
  /// [dryRun] Whether to PreCheck this request only. Value:
  /// [priority] The priority of the inbound rule. A smaller value indicates a higher priority. The maximum value is `10`, which indicates that you can configure at most 10 inbound rules for a filter.
  /// [protocol] The transport protocol used by inbound traffic that needs to be mirrored. Valid values: `ALL`, `ICMP`, `TCP`, `UDP`.
  /// [ruleAction] . Field 'rule_action' has been deprecated from provider version 1.211.0. New field 'action' instead.
  /// [sourceCidrBlock] The source CIDR block of the inbound traffic.
  /// [sourcePortRange] The source port range of the inbound traffic. Valid values: `1` to `65535`. Separate the first port and last port with a forward slash (/), for example, `1/200` or `80/80`. A value of `-1/-1` indicates that all ports are available. Therefore, do not set the value to `-1/-1`. **NOTE:** When `protocol` is `ICMP`, this parameter is invalid.
  /// [status] The state of the inbound rule. `Creating`, `Created`, `Modifying` and `Deleting`.
  /// [trafficMirrorFilterId] The ID of the filter.
  /// [trafficMirrorFilterIngressRuleId] The ID of the outbound rule.
  TrafficMirrorFilterIngressRuleState({
    this.action,
    this.destinationCidrBlock,
    this.destinationPortRange,
    this.dryRun,
    this.priority,
    this.protocol,
    this.ruleAction,
    this.sourceCidrBlock,
    this.sourcePortRange,
    this.status,
    this.trafficMirrorFilterId,
    this.trafficMirrorFilterIngressRuleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'destinationCidrBlock': ?destinationCidrBlock,
      'destinationPortRange': ?destinationPortRange,
      'dryRun': ?dryRun,
      'priority': ?priority,
      'protocol': ?protocol,
      'ruleAction': ?ruleAction,
      'sourceCidrBlock': ?sourceCidrBlock,
      'sourcePortRange': ?sourcePortRange,
      'status': ?status,
      'trafficMirrorFilterId': ?trafficMirrorFilterId,
      'trafficMirrorFilterIngressRuleId': ?trafficMirrorFilterIngressRuleId,
    };
  }

  factory TrafficMirrorFilterIngressRuleState.fromMap(Map<String, dynamic> map) {
    return TrafficMirrorFilterIngressRuleState(
      action: map['action'] == null ? null : (map['action']! as String).input(),
      destinationCidrBlock: map['destinationCidrBlock'] == null ? null : (map['destinationCidrBlock']! as String).input(),
      destinationPortRange: map['destinationPortRange'] == null ? null : (map['destinationPortRange']! as String).input(),
      dryRun: map['dryRun'] == null ? null : (map['dryRun']! as bool).input(),
      priority: map['priority'] == null ? null : (map['priority']! as int).input(),
      protocol: map['protocol'] == null ? null : (map['protocol']! as String).input(),
      ruleAction: map['ruleAction'] == null ? null : (map['ruleAction']! as String).input(),
      sourceCidrBlock: map['sourceCidrBlock'] == null ? null : (map['sourceCidrBlock']! as String).input(),
      sourcePortRange: map['sourcePortRange'] == null ? null : (map['sourcePortRange']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      trafficMirrorFilterId: map['trafficMirrorFilterId'] == null ? null : (map['trafficMirrorFilterId']! as String).input(),
      trafficMirrorFilterIngressRuleId: map['trafficMirrorFilterIngressRuleId'] == null ? null : (map['trafficMirrorFilterIngressRuleId']! as String).input(),
    );
  }
}

