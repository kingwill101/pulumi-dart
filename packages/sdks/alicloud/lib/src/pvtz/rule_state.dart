// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_forward_ip.dart';

/// Input properties used for looking up and filtering Rule resources.
class RuleState {
  /// The ID of the Endpoint.
  final pulumi.Input<String>? endpointId;
  /// Forwarding target. See `forward_ips` below.
  final pulumi.Input<List<RuleForwardIp>>? forwardIps;
  /// The name of the resource.
  final pulumi.Input<String>? ruleName;
  /// The type of the rule. Valid values: `OUTBOUND`.
  final pulumi.Input<String>? type;
  /// The name of the forwarding zone.
  final pulumi.Input<String>? zoneName;

  /// Creates a new [RuleState].
  /// [endpointId] The ID of the Endpoint.
  /// [forwardIps] Forwarding target. See `forward_ips` below.
  /// [ruleName] The name of the resource.
  /// [type] The type of the rule. Valid values: `OUTBOUND`.
  /// [zoneName] The name of the forwarding zone.
  RuleState({
    this.endpointId,
    this.forwardIps,
    this.ruleName,
    this.type,
    this.zoneName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointId': ?endpointId,
      'forwardIps': ?pulumi.Input.mapOptionalInputValue<List<RuleForwardIp>, List<Map<String, dynamic>>>(forwardIps, (value) => pulumi.Input.encodeList<RuleForwardIp, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ruleName': ?ruleName,
      'type': ?type,
      'zoneName': ?zoneName,
    };
  }

  factory RuleState.fromMap(Map<String, dynamic> map) {
    return RuleState(
      endpointId: map['endpointId'] == null ? null : (map['endpointId']! as String).input(),
      forwardIps: map['forwardIps'] == null ? null : (pulumi.Input.decodeList<RuleForwardIp>(map['forwardIps']!, (value) => RuleForwardIp.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ruleName: map['ruleName'] == null ? null : (map['ruleName']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      zoneName: map['zoneName'] == null ? null : (map['zoneName']! as String).input(),
    );
  }
}

