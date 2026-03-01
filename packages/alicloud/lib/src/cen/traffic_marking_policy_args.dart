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
    String? description,
    bool? dryRun,
    bool? force,
    required int markingDscp,
    required int priority,
    String? trafficMarkingPolicyName,
    List<TrafficMarkingPolicyTrafficMatchRule>? trafficMatchRules,
    required String transitRouterId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      force = pulumi.Input.asOptionalInput<bool>(force),
      markingDscp = pulumi.Input.asInput<int>(markingDscp),
      priority = pulumi.Input.asInput<int>(priority),
      trafficMarkingPolicyName = pulumi.Input.asOptionalInput<String>(trafficMarkingPolicyName),
      trafficMatchRules = pulumi.Input.asOptionalInput<List<TrafficMarkingPolicyTrafficMatchRule>>(trafficMatchRules),
      transitRouterId = pulumi.Input.asInput<String>(transitRouterId);

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
      description: map['description'] == null ? null : map['description'] as String,
      dryRun: map['dryRun'] == null ? null : map['dryRun'] as bool,
      force: map['force'] == null ? null : map['force'] as bool,
      markingDscp: map['markingDscp'] as int,
      priority: map['priority'] as int,
      trafficMarkingPolicyName: map['trafficMarkingPolicyName'] == null ? null : map['trafficMarkingPolicyName'] as String,
      trafficMatchRules: map['trafficMatchRules'] == null ? null : pulumi.Input.decodeList<TrafficMarkingPolicyTrafficMatchRule>(map['trafficMatchRules'], (value) => TrafficMarkingPolicyTrafficMatchRule.fromMap((value as Map).cast<String, dynamic>())),
      transitRouterId: map['transitRouterId'] as String,
    );
  }
}

