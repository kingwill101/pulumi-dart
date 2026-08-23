// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'award.dart';
import 'price.dart';

/// Milestone definition within a conditional credit
class ConditionalCreditMilestone {
  /// Award details for this milestone (only present for primary conditional credits)
  final pulumi.Input<Award>? award;
  /// End date for this milestone
  final pulumi.Input<String>? endAt;
  /// Unique identifier for the milestone
  final pulumi.Input<String>? milestoneId;
  /// Display name for the milestone
  final pulumi.Input<String>? name;
  /// Spend target for this milestone
  final pulumi.Input<Price>? spendTarget;
  /// Current status of the milestone
  final pulumi.Input<String>? status;

  /// Creates a new [ConditionalCreditMilestone].
  /// [award] Award details for this milestone (only present for primary conditional credits)
  /// [endAt] End date for this milestone
  /// [milestoneId] Unique identifier for the milestone
  /// [name] Display name for the milestone
  /// [spendTarget] Spend target for this milestone
  /// [status] Current status of the milestone
  const ConditionalCreditMilestone({
    this.award,
    this.endAt,
    this.milestoneId,
    this.name,
    this.spendTarget,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'award': ?pulumi.Input.mapOptionalInputValue<Award, Map<String, dynamic>>(award, (value) => value.toMap()),
      'endAt': ?endAt,
      'milestoneId': ?milestoneId,
      'name': ?name,
      'spendTarget': ?pulumi.Input.mapOptionalInputValue<Price, Map<String, dynamic>>(spendTarget, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory ConditionalCreditMilestone.fromMap(Map<String, dynamic> map) {
    return ConditionalCreditMilestone(
      award: (() { final guardedValue = map['award']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Award.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endAt: (() { final guardedValue = map['endAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      milestoneId: (() { final guardedValue = map['milestoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spendTarget: (() { final guardedValue = map['spendTarget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Price.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
