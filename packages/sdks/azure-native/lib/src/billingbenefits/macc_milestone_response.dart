// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automatic_shortfall_suppress_reason_response.dart';
import 'price_response.dart';
import 'shortfall_response.dart';

/// MACC milestone represents interim targets within the period of MACC.
class MaccMilestoneResponse {
  /// Setting this to 'Enable' enables automatic shortfall invoicing when milestone commitment is not met.
  final pulumi.Input<String>? automaticShortfall;
  /// Optional field to record suppression reason for automatic shortfall.
  final pulumi.Input<AutomaticShortfallSuppressReasonResponse>? automaticShortfallSuppressReason;
  /// Commitment associated with this milestone.
  final pulumi.Input<PriceResponse>? commitment;
  /// End date time for the milestone. Timestamp must be in the ISO date format YYYY-MM-DDT23:59:59Z.
  final pulumi.Input<String>? endAt;
  /// Globally unique identifier for the milestone. Format: {guid}
  final pulumi.Input<String>? milestoneId;
  /// Details of the shortfall associated with this milestone.
  final pulumi.Input<ShortfallResponse>? shortfall;
  /// Represents the current status of the Milestone.
  final pulumi.Input<String>? status;

  /// Creates a new [MaccMilestoneResponse].
  /// [automaticShortfall] Setting this to 'Enable' enables automatic shortfall invoicing when milestone commitment is not met.
  /// [automaticShortfallSuppressReason] Optional field to record suppression reason for automatic shortfall.
  /// [commitment] Commitment associated with this milestone.
  /// [endAt] End date time for the milestone. Timestamp must be in the ISO date format YYYY-MM-DDT23:59:59Z.
  /// [milestoneId] Globally unique identifier for the milestone. Format: {guid}
  /// [shortfall] Details of the shortfall associated with this milestone.
  /// [status] Represents the current status of the Milestone.
  const MaccMilestoneResponse({
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
      'automaticShortfallSuppressReason': ?pulumi.Input.mapOptionalInputValue<AutomaticShortfallSuppressReasonResponse, Map<String, dynamic>>(automaticShortfallSuppressReason, (value) => value.toMap()),
      'commitment': ?pulumi.Input.mapOptionalInputValue<PriceResponse, Map<String, dynamic>>(commitment, (value) => value.toMap()),
      'endAt': ?endAt,
      'milestoneId': ?milestoneId,
      'shortfall': ?pulumi.Input.mapOptionalInputValue<ShortfallResponse, Map<String, dynamic>>(shortfall, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory MaccMilestoneResponse.fromMap(Map<String, dynamic> map) {
    return MaccMilestoneResponse(
      automaticShortfall: (() { final guardedValue = map['automaticShortfall']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      automaticShortfallSuppressReason: (() { final guardedValue = map['automaticShortfallSuppressReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutomaticShortfallSuppressReasonResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      commitment: (() { final guardedValue = map['commitment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PriceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endAt: (() { final guardedValue = map['endAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      milestoneId: (() { final guardedValue = map['milestoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shortfall: (() { final guardedValue = map['shortfall']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ShortfallResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
