// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automatic_shortfall_suppress_reason.dart';
import 'price.dart';
import 'shortfall.dart';

/// MACC milestone represents interim targets within the period of MACC.
class MaccMilestone {
  /// Setting this to 'Enable' enables automatic shortfall invoicing when milestone commitment is not met.
  final pulumi.Input<String>? automaticShortfall;
  /// Optional field to record suppression reason for automatic shortfall.
  final pulumi.Input<AutomaticShortfallSuppressReason>? automaticShortfallSuppressReason;
  /// Commitment associated with this milestone.
  final pulumi.Input<Price>? commitment;
  /// End date time for the milestone. Timestamp must be in the ISO date format YYYY-MM-DDT23:59:59Z.
  final pulumi.Input<String>? endAt;
  /// Globally unique identifier for the milestone. Format: {guid}
  final pulumi.Input<String>? milestoneId;
  /// Details of the shortfall associated with this milestone.
  final pulumi.Input<Shortfall>? shortfall;
  /// Represents the current status of the Milestone.
  final pulumi.Input<String>? status;

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
      'automaticShortfallSuppressReason': ?pulumi.Input.mapOptionalInputValue<AutomaticShortfallSuppressReason, Map<String, dynamic>>(automaticShortfallSuppressReason, (value) => value.toMap()),
      'commitment': ?pulumi.Input.mapOptionalInputValue<Price, Map<String, dynamic>>(commitment, (value) => value.toMap()),
      'endAt': ?endAt,
      'milestoneId': ?milestoneId,
      'shortfall': ?pulumi.Input.mapOptionalInputValue<Shortfall, Map<String, dynamic>>(shortfall, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory MaccMilestone.fromMap(Map<String, dynamic> map) {
    return MaccMilestone(
      automaticShortfall: map['automaticShortfall'] == null ? null : (map['automaticShortfall']! as String).input(),
      automaticShortfallSuppressReason: map['automaticShortfallSuppressReason'] == null ? null : (AutomaticShortfallSuppressReason.fromMap((map['automaticShortfallSuppressReason']! as Map).cast<String, dynamic>())).input(),
      commitment: map['commitment'] == null ? null : (Price.fromMap((map['commitment']! as Map).cast<String, dynamic>())).input(),
      endAt: map['endAt'] == null ? null : (map['endAt']! as String).input(),
      milestoneId: map['milestoneId'] == null ? null : (map['milestoneId']! as String).input(),
      shortfall: map['shortfall'] == null ? null : (Shortfall.fromMap((map['shortfall']! as Map).cast<String, dynamic>())).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

