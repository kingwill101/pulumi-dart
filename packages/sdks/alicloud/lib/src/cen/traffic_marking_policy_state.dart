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
  final pulumi.Input<List<TrafficMarkingPolicyTrafficMatchRule>>?
  trafficMatchRules;

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
    this.description,
    this.dryRun,
    this.force,
    this.markingDscp,
    this.priority,
    this.status,
    this.trafficMarkingPolicyId,
    this.trafficMarkingPolicyName,
    this.trafficMatchRules,
    this.transitRouterId,
  });

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
      'trafficMatchRules':
          ?pulumi.Input.mapOptionalInputValue<
            List<TrafficMarkingPolicyTrafficMatchRule>,
            List<Map<String, dynamic>>
          >(
            trafficMatchRules,
            (value) =>
                pulumi.Input.encodeList<
                  TrafficMarkingPolicyTrafficMatchRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'transitRouterId': ?transitRouterId,
    };
  }

  factory TrafficMarkingPolicyState.fromMap(Map<String, dynamic> map) {
    return TrafficMarkingPolicyState(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dryRun: (() {
        final guardedValue = map['dryRun'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      force: (() {
        final guardedValue = map['force'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      markingDscp: (() {
        final guardedValue = map['markingDscp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      priority: (() {
        final guardedValue = map['priority'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      trafficMarkingPolicyId: (() {
        final guardedValue = map['trafficMarkingPolicyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      trafficMarkingPolicyName: (() {
        final guardedValue = map['trafficMarkingPolicyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      trafficMatchRules: (() {
        final guardedValue = map['trafficMatchRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<TrafficMarkingPolicyTrafficMatchRule>(
            guardedValue,
            (value) => TrafficMarkingPolicyTrafficMatchRule.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      transitRouterId: (() {
        final guardedValue = map['transitRouterId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
