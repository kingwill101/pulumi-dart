// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_marking_policy_traffic_match_rule.dart';

/// {@template pulumi_cen_traffic_marking_policy_traffic_marking_policy_args_doc}
/// The set of arguments for TrafficMarkingPolicy.
/// {@endtemplate}
/// {@macro pulumi_cen_traffic_marking_policy_traffic_marking_policy_args_doc}
class TrafficMarkingPolicyArgs {
  /// TrafficMarkingPolicyDescription
  final pulumi.Input<String>? description;
  /// Whether to PreCheck only this request. Value:
  final pulumi.Input<bool>? dryRun;
  /// Whether to forcibly delete the traffic marker policy. Valid values:
  final pulumi.Input<bool>? force;
  /// MarkingDscp
  final pulumi.Input<int> markingDscp;
  /// Priority
  final pulumi.Input<int> priority;
  /// TrafficMarkingPolicyName
  final pulumi.Input<String>? trafficMarkingPolicyName;
  /// List of stream classification rules.
  /// You can add up to 50 stream classification rules at a time. See `traffic_match_rules` below.
  final pulumi.Input<List<TrafficMarkingPolicyTrafficMatchRule>>? trafficMatchRules;
  /// TransitRouterId
  final pulumi.Input<String> transitRouterId;

  /// Creates a new [TrafficMarkingPolicyArgs].
  /// [description] TrafficMarkingPolicyDescription
  /// [dryRun] Whether to PreCheck only this request. Value:
  /// [force] Whether to forcibly delete the traffic marker policy. Valid values:
  /// [markingDscp] MarkingDscp
  /// [priority] Priority
  /// [trafficMarkingPolicyName] TrafficMarkingPolicyName
  /// [trafficMatchRules] List of stream classification rules.
  /// [transitRouterId] TransitRouterId
  TrafficMarkingPolicyArgs({
    this.description,
    this.dryRun,
    this.force,
    required this.markingDscp,
    required this.priority,
    this.trafficMarkingPolicyName,
    this.trafficMatchRules,
    required this.transitRouterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'dryRun': ?dryRun,
      'force': ?force,
      'markingDscp': markingDscp,
      'priority': priority,
      'trafficMarkingPolicyName': ?trafficMarkingPolicyName,
      'trafficMatchRules': ?pulumi.Input.mapOptionalInputValue<List<TrafficMarkingPolicyTrafficMatchRule>, List<Map<String, dynamic>>>(trafficMatchRules, (value) => pulumi.Input.encodeList<TrafficMarkingPolicyTrafficMatchRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'transitRouterId': transitRouterId,
    };
  }

  factory TrafficMarkingPolicyArgs.fromMap(Map<String, dynamic> map) {
    return TrafficMarkingPolicyArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dryRun: (() { final guardedValue = map['dryRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      force: (() { final guardedValue = map['force']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      markingDscp: pulumi.Input.fromValue(map['markingDscp'] as int),
      priority: pulumi.Input.fromValue(map['priority'] as int),
      trafficMarkingPolicyName: (() { final guardedValue = map['trafficMarkingPolicyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trafficMatchRules: (() { final guardedValue = map['trafficMatchRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TrafficMarkingPolicyTrafficMatchRule>(guardedValue, (value) => TrafficMarkingPolicyTrafficMatchRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      transitRouterId: pulumi.Input.fromValue(map['transitRouterId'] as String),
    );
  }
}

