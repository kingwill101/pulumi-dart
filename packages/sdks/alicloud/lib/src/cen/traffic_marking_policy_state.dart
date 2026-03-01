// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_marking_policy_traffic_match_rule.dart';

/// Input properties used for looking up and filtering TrafficMarkingPolicy resources.
class TrafficMarkingPolicyState {
  /// TrafficMarkingPolicyDescription
  final pulumi.Input<String>? description;
  /// Whether to PreCheck only this request. Value:
  final pulumi.Input<bool>? dryRun;
  /// Whether to forcibly delete the traffic marker policy. Valid values:
  final pulumi.Input<bool>? force;
  /// MarkingDscp
  final pulumi.Input<int>? markingDscp;
  /// Priority
  final pulumi.Input<int>? priority;
  /// The status of the resource
  final pulumi.Input<String>? status;
  /// The first ID of the resource
  final pulumi.Input<String>? trafficMarkingPolicyId;
  /// TrafficMarkingPolicyName
  final pulumi.Input<String>? trafficMarkingPolicyName;
  /// List of stream classification rules.
  /// You can add up to 50 stream classification rules at a time. See `traffic_match_rules` below.
  final pulumi.Input<List<TrafficMarkingPolicyTrafficMatchRule>>? trafficMatchRules;
  /// TransitRouterId
  final pulumi.Input<String>? transitRouterId;

  /// Creates a new [TrafficMarkingPolicyState].
  /// [description] TrafficMarkingPolicyDescription
  /// [dryRun] Whether to PreCheck only this request. Value:
  /// [force] Whether to forcibly delete the traffic marker policy. Valid values:
  /// [markingDscp] MarkingDscp
  /// [priority] Priority
  /// [status] The status of the resource
  /// [trafficMarkingPolicyId] The first ID of the resource
  /// [trafficMarkingPolicyName] TrafficMarkingPolicyName
  /// [trafficMatchRules] List of stream classification rules.
  /// [transitRouterId] TransitRouterId
  TrafficMarkingPolicyState({
    pulumi.Output<String>? description,
    pulumi.Output<bool>? dryRun,
    pulumi.Output<bool>? force,
    pulumi.Output<int>? markingDscp,
    pulumi.Output<int>? priority,
    pulumi.Output<String>? status,
    pulumi.Output<String>? trafficMarkingPolicyId,
    pulumi.Output<String>? trafficMarkingPolicyName,
    pulumi.Output<List<TrafficMarkingPolicyTrafficMatchRule>>? trafficMatchRules,
    pulumi.Output<String>? transitRouterId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      force = pulumi.Input.asOptionalInput<bool>(force),
      markingDscp = pulumi.Input.asOptionalInput<int>(markingDscp),
      priority = pulumi.Input.asOptionalInput<int>(priority),
      status = pulumi.Input.asOptionalInput<String>(status),
      trafficMarkingPolicyId = pulumi.Input.asOptionalInput<String>(trafficMarkingPolicyId),
      trafficMarkingPolicyName = pulumi.Input.asOptionalInput<String>(trafficMarkingPolicyName),
      trafficMatchRules = pulumi.Input.asOptionalInput<List<TrafficMarkingPolicyTrafficMatchRule>>(trafficMatchRules),
      transitRouterId = pulumi.Input.asOptionalInput<String>(transitRouterId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'dryRun': ?dryRun,
      'force': ?force,
      'markingDscp': ?markingDscp,
      'priority': ?priority,
      'status': ?status,
      'trafficMarkingPolicyId': ?trafficMarkingPolicyId,
      'trafficMarkingPolicyName': ?trafficMarkingPolicyName,
      'trafficMatchRules': ?pulumi.Input.mapOptionalInputValue<List<TrafficMarkingPolicyTrafficMatchRule>, List<Map<String, dynamic>>>(trafficMatchRules, (value) => pulumi.Input.encodeList<TrafficMarkingPolicyTrafficMatchRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'transitRouterId': ?transitRouterId,
    };
  }

  factory TrafficMarkingPolicyState.fromMap(Map<String, dynamic> map) {
    return TrafficMarkingPolicyState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      force: map['force'] == null ? null : pulumi.Output.create<bool>(map['force'] as bool),
      markingDscp: map['markingDscp'] == null ? null : pulumi.Output.create<int>(map['markingDscp'] as int),
      priority: map['priority'] == null ? null : pulumi.Output.create<int>(map['priority'] as int),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      trafficMarkingPolicyId: map['trafficMarkingPolicyId'] == null ? null : pulumi.Output.create<String>(map['trafficMarkingPolicyId'] as String),
      trafficMarkingPolicyName: map['trafficMarkingPolicyName'] == null ? null : pulumi.Output.create<String>(map['trafficMarkingPolicyName'] as String),
      trafficMatchRules: map['trafficMatchRules'] == null ? null : pulumi.Output.create<List<TrafficMarkingPolicyTrafficMatchRule>>(pulumi.Input.decodeList<TrafficMarkingPolicyTrafficMatchRule>(map['trafficMatchRules'], (value) => TrafficMarkingPolicyTrafficMatchRule.fromMap((value as Map).cast<String, dynamic>()))),
      transitRouterId: map['transitRouterId'] == null ? null : pulumi.Output.create<String>(map['transitRouterId'] as String),
    );
  }
}

