// ignore_for_file: unused_element, unnecessary_cast

import 'commitment_period.dart';

/// Properties of Cognitive Services account commitment plan.
class CommitmentPlanProperties {
  /// AutoRenew commitment plan.
  final bool? autoRenew;
  /// Commitment plan guid.
  final String? commitmentPlanGuid;
  /// Cognitive Services account commitment period.
  final CommitmentPeriod? current;
  /// Account hosting model.
  final String? hostingModel;
  /// Cognitive Services account commitment period.
  final CommitmentPeriod? next;
  /// Commitment plan type.
  final String? planType;

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
      'current': ?current == null ? null : current!.toMap(),
      'hostingModel': ?hostingModel,
      'next': ?next == null ? null : next!.toMap(),
      'planType': ?planType,
    };
  }

  factory CommitmentPlanProperties.fromMap(Map<String, dynamic> map) {
    return CommitmentPlanProperties(
      autoRenew: map['autoRenew'] == null ? null : map['autoRenew'] as bool,
      commitmentPlanGuid: map['commitmentPlanGuid'] == null ? null : map['commitmentPlanGuid'] as String,
      current: map['current'] == null ? null : CommitmentPeriod.fromMap((map['current'] as Map).cast<String, dynamic>()),
      hostingModel: map['hostingModel'] == null ? null : map['hostingModel'] as String,
      next: map['next'] == null ? null : CommitmentPeriod.fromMap((map['next'] as Map).cast<String, dynamic>()),
      planType: map['planType'] == null ? null : map['planType'] as String,
    );
  }
}

