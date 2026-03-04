// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TrafficMirrorFilterEgressRule resources.
class TrafficMirrorFilterEgressRuleState {
  /// The collection policy of the inbound rule. Valid values: `accept` or `drop`. `accept`: collects network traffic. `drop`: does not collect network traffic.
  final pulumi.Input<String>? action;

  /// The destination CIDR block of the outbound traffic.
  final pulumi.Input<String>? destinationCidrBlock;

  /// The destination CIDR block of the outbound traffic. Valid values: `1` to `65535`. Separate the first port and last port with a forward slash (/), for example, `1/200` or `80/80`. A value of `-1/-1` indicates that all ports are available. Therefore, do not set the value to `-1/-1`. **NOTE:** When `protocol` is `ICMP`, this parameter is invalid.
  final pulumi.Input<String>? destinationPortRange;

  /// Whether to PreCheck this request only. Value:
  /// - **true**: sends a check request and does not create inbound or outbound rules. Check items include whether required parameters are filled in, request format, and restrictions. If the check fails, the corresponding error is returned. If the check passes, the error code 'DryRunOperation' is returned '.
  /// - **false** (default): Sends a normal request and directly creates an inbound or outbound direction rule after checking.
  final pulumi.Input<bool>? dryRun;

  /// The priority of the inbound rule. A smaller value indicates a higher priority. The maximum value is `10`, which indicates that you can configure at most 10 inbound rules for a filter.
  final pulumi.Input<int>? priority;

  /// The transport protocol used by outbound traffic that needs to be mirrored. Valid values: `ALL`, `ICMP`, `TCP`, `UDP`.
  final pulumi.Input<String>? protocol;

  /// . Field 'rule_action' has been deprecated from provider version 1.211.0. New field 'action' instead.
  final pulumi.Input<String>? ruleAction;

  /// The source CIDR block of the outbound traffic.
  final pulumi.Input<String>? sourceCidrBlock;

  /// The source port range of the outbound traffic. Valid values: `1` to `65535`. Separate the first port and last port with a forward slash (/), for example, `1/200` or `80/80`. A value of `-1/-1` indicates that all ports are available. Therefore, do not set the value to `-1/-1`. **NOTE:** When `protocol` is `ICMP`, this parameter is invalid.
  final pulumi.Input<String>? sourcePortRange;

  /// The state of the inbound rule. `Creating`, `Created`, `Modifying` and `Deleting`.
  final pulumi.Input<String>? status;

  /// The ID of the outbound rule.
  final pulumi.Input<String>? trafficMirrorFilterEgressRuleId;

  /// The ID of the filter.
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  final pulumi.Input<String>? trafficMirrorFilterId;

  /// Creates a new [TrafficMirrorFilterEgressRuleState].
  /// [action] The collection policy of the inbound rule. Valid values: `accept` or `drop`. `accept`: collects network traffic. `drop`: does not collect network traffic.
  /// [destinationCidrBlock] The destination CIDR block of the outbound traffic.
  /// [destinationPortRange] The destination CIDR block of the outbound traffic. Valid values: `1` to `65535`. Separate the first port and last port with a forward slash (/), for example, `1/200` or `80/80`. A value of `-1/-1` indicates that all ports are available. Therefore, do not set the value to `-1/-1`. **NOTE:** When `protocol` is `ICMP`, this parameter is invalid.
  /// [dryRun] Whether to PreCheck this request only. Value:
  /// [priority] The priority of the inbound rule. A smaller value indicates a higher priority. The maximum value is `10`, which indicates that you can configure at most 10 inbound rules for a filter.
  /// [protocol] The transport protocol used by outbound traffic that needs to be mirrored. Valid values: `ALL`, `ICMP`, `TCP`, `UDP`.
  /// [ruleAction] . Field 'rule_action' has been deprecated from provider version 1.211.0. New field 'action' instead.
  /// [sourceCidrBlock] The source CIDR block of the outbound traffic.
  /// [sourcePortRange] The source port range of the outbound traffic. Valid values: `1` to `65535`. Separate the first port and last port with a forward slash (/), for example, `1/200` or `80/80`. A value of `-1/-1` indicates that all ports are available. Therefore, do not set the value to `-1/-1`. **NOTE:** When `protocol` is `ICMP`, this parameter is invalid.
  /// [status] The state of the inbound rule. `Creating`, `Created`, `Modifying` and `Deleting`.
  /// [trafficMirrorFilterEgressRuleId] The ID of the outbound rule.
  /// [trafficMirrorFilterId] The ID of the filter.
  TrafficMirrorFilterEgressRuleState({
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
    this.trafficMirrorFilterEgressRuleId,
    this.trafficMirrorFilterId,
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
      'trafficMirrorFilterEgressRuleId': ?trafficMirrorFilterEgressRuleId,
      'trafficMirrorFilterId': ?trafficMirrorFilterId,
    };
  }

  factory TrafficMirrorFilterEgressRuleState.fromMap(Map<String, dynamic> map) {
    return TrafficMirrorFilterEgressRuleState(
      action: (() {
        final guardedValue = map['action'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destinationCidrBlock: (() {
        final guardedValue = map['destinationCidrBlock'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destinationPortRange: (() {
        final guardedValue = map['destinationPortRange'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dryRun: (() {
        final guardedValue = map['dryRun'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      priority: (() {
        final guardedValue = map['priority'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      protocol: (() {
        final guardedValue = map['protocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ruleAction: (() {
        final guardedValue = map['ruleAction'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceCidrBlock: (() {
        final guardedValue = map['sourceCidrBlock'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourcePortRange: (() {
        final guardedValue = map['sourcePortRange'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      trafficMirrorFilterEgressRuleId: (() {
        final guardedValue = map['trafficMirrorFilterEgressRuleId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      trafficMirrorFilterId: (() {
        final guardedValue = map['trafficMirrorFilterId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
