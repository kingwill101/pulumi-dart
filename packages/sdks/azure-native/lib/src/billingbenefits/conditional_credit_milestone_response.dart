// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'award_response.dart';
import 'price_response.dart';

/// Milestone definition within a conditional credit
class ConditionalCreditMilestoneResponse {
  /// Award details for this milestone (only present for primary conditional credits)
  final pulumi.Input<AwardResponse>? award;
  /// End date for this milestone
  final pulumi.Input<String>? endAt;
  /// Unique identifier for the milestone
  final pulumi.Input<String>? milestoneId;
  /// Display name for the milestone
  final pulumi.Input<String>? name;
  /// Spend target for this milestone
  final pulumi.Input<PriceResponse>? spendTarget;
  /// Current status of the milestone
  final pulumi.Input<String>? status;

  /// Creates a new [ConditionalCreditMilestoneResponse].
  /// [award] Award details for this milestone (only present for primary conditional credits)
  /// [endAt] End date for this milestone
  /// [milestoneId] Unique identifier for the milestone
  /// [name] Display name for the milestone
  /// [spendTarget] Spend target for this milestone
  /// [status] Current status of the milestone
  const ConditionalCreditMilestoneResponse({
    this.award,
    this.endAt,
    this.milestoneId,
    this.name,
    this.spendTarget,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'award': ?pulumi.Input.mapOptionalInputValue<AwardResponse, Map<String, dynamic>>(award, (value) => value.toMap()),
      'endAt': ?endAt,
      'milestoneId': ?milestoneId,
      'name': ?name,
      'spendTarget': ?pulumi.Input.mapOptionalInputValue<PriceResponse, Map<String, dynamic>>(spendTarget, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory ConditionalCreditMilestoneResponse.fromMap(Map<String, dynamic> map) {
    return ConditionalCreditMilestoneResponse(
      award: (() { final guardedValue = map['award']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwardResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endAt: (() { final guardedValue = map['endAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      milestoneId: (() { final guardedValue = map['milestoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spendTarget: (() { final guardedValue = map['spendTarget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PriceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
