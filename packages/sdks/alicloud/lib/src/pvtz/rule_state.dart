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
    pulumi.Output<String>? endpointId,
    pulumi.Output<List<RuleForwardIp>>? forwardIps,
    pulumi.Output<String>? ruleName,
    pulumi.Output<String>? type,
    pulumi.Output<String>? zoneName,
  }) :
      endpointId = pulumi.Input.asOptionalInput<String>(endpointId),
      forwardIps = pulumi.Input.asOptionalInput<List<RuleForwardIp>>(forwardIps),
      ruleName = pulumi.Input.asOptionalInput<String>(ruleName),
      type = pulumi.Input.asOptionalInput<String>(type),
      zoneName = pulumi.Input.asOptionalInput<String>(zoneName);

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
      endpointId: map['endpointId'] == null ? null : pulumi.Output.create<String>(map['endpointId'] as String),
      forwardIps: map['forwardIps'] == null ? null : pulumi.Output.create<List<RuleForwardIp>>(pulumi.Input.decodeList<RuleForwardIp>(map['forwardIps'], (value) => RuleForwardIp.fromMap((value as Map).cast<String, dynamic>()))),
      ruleName: map['ruleName'] == null ? null : pulumi.Output.create<String>(map['ruleName'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      zoneName: map['zoneName'] == null ? null : pulumi.Output.create<String>(map['zoneName'] as String),
    );
  }
}

