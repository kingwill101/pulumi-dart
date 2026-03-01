// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_forward_ip.dart';

/// {@template pulumi_pvtz_rule_rule_args_doc}
/// The set of arguments for Rule.
/// {@endtemplate}
/// {@macro pulumi_pvtz_rule_rule_args_doc}
class RuleArgs {
  /// The ID of the Endpoint.
  final pulumi.Input<String> endpointId;
  /// Forwarding target. See `forward_ips` below.
  final pulumi.Input<List<RuleForwardIp>> forwardIps;
  /// The name of the resource.
  final pulumi.Input<String> ruleName;
  /// The type of the rule. Valid values: `OUTBOUND`.
  final pulumi.Input<String>? type;
  /// The name of the forwarding zone.
  final pulumi.Input<String> zoneName;

  /// Creates a new [RuleArgs].
  /// [endpointId] The ID of the Endpoint.
  /// [forwardIps] Forwarding target. See `forward_ips` below.
  /// [ruleName] The name of the resource.
  /// [type] The type of the rule. Valid values: `OUTBOUND`.
  /// [zoneName] The name of the forwarding zone.
  RuleArgs({
    required String endpointId,
    required List<RuleForwardIp> forwardIps,
    required String ruleName,
    String? type,
    required String zoneName,
  }) :
      endpointId = pulumi.Input.asInput<String>(endpointId),
      forwardIps = pulumi.Input.asInput<List<RuleForwardIp>>(forwardIps),
      ruleName = pulumi.Input.asInput<String>(ruleName),
      type = pulumi.Input.asOptionalInput<String>(type),
      zoneName = pulumi.Input.asInput<String>(zoneName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointId': endpointId,
      'forwardIps': pulumi.Input.mapInputValue<List<RuleForwardIp>, List<Map<String, dynamic>>>(forwardIps, (value) => pulumi.Input.encodeList<RuleForwardIp, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ruleName': ruleName,
      'type': ?type,
      'zoneName': zoneName,
    };
  }

  factory RuleArgs.fromMap(Map<String, dynamic> map) {
    return RuleArgs(
      endpointId: map['endpointId'] as String,
      forwardIps: pulumi.Input.decodeList<RuleForwardIp>(map['forwardIps'], (value) => RuleForwardIp.fromMap((value as Map).cast<String, dynamic>())),
      ruleName: map['ruleName'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      zoneName: map['zoneName'] as String,
    );
  }
}

