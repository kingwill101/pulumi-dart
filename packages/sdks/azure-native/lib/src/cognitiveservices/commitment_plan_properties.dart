// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'commitment_period.dart';

/// Properties of Cognitive Services account commitment plan.
class CommitmentPlanProperties {
  /// AutoRenew commitment plan.
  final pulumi.Input<bool>? autoRenew;
  /// Commitment plan guid.
  final pulumi.Input<String>? commitmentPlanGuid;
  /// Cognitive Services account commitment period.
  final pulumi.Input<CommitmentPeriod>? current;
  /// Account hosting model.
  final pulumi.Input<String>? hostingModel;
  /// Cognitive Services account commitment period.
  final pulumi.Input<CommitmentPeriod>? next;
  /// Commitment plan type.
  final pulumi.Input<String>? planType;

  /// Creates a new [CommitmentPlanProperties].
  /// [autoRenew] AutoRenew commitment plan.
  /// [commitmentPlanGuid] Commitment plan guid.
  /// [current] Cognitive Services account commitment period.
  /// [hostingModel] Account hosting model.
  /// [next] Cognitive Services account commitment period.
  /// [planType] Commitment plan type.
  CommitmentPlanProperties({
    this.autoRenew,
    this.commitmentPlanGuid,
    this.current,
    this.hostingModel,
    this.next,
    this.planType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenew': ?autoRenew,
      'commitmentPlanGuid': ?commitmentPlanGuid,
      'current': ?pulumi.Input.mapOptionalInputValue<CommitmentPeriod, Map<String, dynamic>>(current, (value) => value.toMap()),
      'hostingModel': ?hostingModel,
      'next': ?pulumi.Input.mapOptionalInputValue<CommitmentPeriod, Map<String, dynamic>>(next, (value) => value.toMap()),
      'planType': ?planType,
    };
  }

  factory CommitmentPlanProperties.fromMap(Map<String, dynamic> map) {
    return CommitmentPlanProperties(
      autoRenew: map['autoRenew'] == null ? null : (map['autoRenew'] as bool).input(),
      commitmentPlanGuid: map['commitmentPlanGuid'] == null ? null : (map['commitmentPlanGuid'] as String).input(),
      current: map['current'] == null ? null : (CommitmentPeriod.fromMap((map['current'] as Map).cast<String, dynamic>())).input(),
      hostingModel: map['hostingModel'] == null ? null : (map['hostingModel'] as String).input(),
      next: map['next'] == null ? null : (CommitmentPeriod.fromMap((map['next'] as Map).cast<String, dynamic>())).input(),
      planType: map['planType'] == null ? null : (map['planType'] as String).input(),
    );
  }
}

