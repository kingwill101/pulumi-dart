// ignore_for_file: unused_element, unnecessary_cast

import 'automatic_shortfall_suppress_reason.dart';
import 'price.dart';
import 'shortfall.dart';

/// MACC milestone represents interim targets within the period of MACC.
class MaccMilestone {
  /// Setting this to 'Enable' enables automatic shortfall invoicing when milestone commitment is not met.
  final String? automaticShortfall;
  /// Optional field to record suppression reason for automatic shortfall.
  final AutomaticShortfallSuppressReason? automaticShortfallSuppressReason;
  /// Commitment associated with this milestone.
  final Price? commitment;
  /// End date time for the milestone. Timestamp must be in the ISO date format YYYY-MM-DDT23:59:59Z.
  final String? endAt;
  /// Globally unique identifier for the milestone. Format: {guid}
  final String? milestoneId;
  /// Details of the shortfall associated with this milestone.
  final Shortfall? shortfall;
  /// Represents the current status of the Milestone.
  final String? status;

  /// Creates a new [MaccMilestone].
  /// [automaticShortfall] Setting this to 'Enable' enables automatic shortfall invoicing when milestone commitment is not met.
  /// [automaticShortfallSuppressReason] Optional field to record suppression reason for automatic shortfall.
  /// [commitment] Commitment associated with this milestone.
  /// [endAt] End date time for the milestone. Timestamp must be in the ISO date format YYYY-MM-DDT23:59:59Z.
  /// [milestoneId] Globally unique identifier for the milestone. Format: {guid}
  /// [shortfall] Details of the shortfall associated with this milestone.
  /// [status] Represents the current status of the Milestone.
  MaccMilestone({
    this.automaticShortfall,
    this.automaticShortfallSuppressReason,
    this.commitment,
    this.endAt,
    this.milestoneId,
    this.shortfall,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticShortfall': ?automaticShortfall,
      'automaticShortfallSuppressReason': ?automaticShortfallSuppressReason == null ? null : automaticShortfallSuppressReason!.toMap(),
      'commitment': ?commitment == null ? null : commitment!.toMap(),
      'endAt': ?endAt,
      'milestoneId': ?milestoneId,
      'shortfall': ?shortfall == null ? null : shortfall!.toMap(),
      'status': ?status,
    };
  }

  factory MaccMilestone.fromMap(Map<String, dynamic> map) {
    return MaccMilestone(
      automaticShortfall: map['automaticShortfall'] == null ? null : map['automaticShortfall'] as String,
      automaticShortfallSuppressReason: map['automaticShortfallSuppressReason'] == null ? null : AutomaticShortfallSuppressReason.fromMap((map['automaticShortfallSuppressReason'] as Map).cast<String, dynamic>()),
      commitment: map['commitment'] == null ? null : Price.fromMap((map['commitment'] as Map).cast<String, dynamic>()),
      endAt: map['endAt'] == null ? null : map['endAt'] as String,
      milestoneId: map['milestoneId'] == null ? null : map['milestoneId'] as String,
      shortfall: map['shortfall'] == null ? null : Shortfall.fromMap((map['shortfall'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

