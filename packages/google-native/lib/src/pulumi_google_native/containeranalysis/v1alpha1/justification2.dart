// ignore_for_file: unused_element, unnecessary_cast

import 'justification_justification_type2.dart';

/// Justification provides the justification when the state of the assessment if NOT_AFFECTED.
class Justification2 {
  /// Additional details on why this justification was chosen.
  final String? details;

  /// The justification type for this vulnerability.
  final JustificationJustificationType2? justificationType;

  Justification2({
    this.details,
    this.justificationType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final detailsValue = details;
    if (detailsValue != null) {
      map['details'] = detailsValue;
    }
    final justificationTypeValue = justificationType;
    if (justificationTypeValue != null) {
      map['justificationType'] = justificationTypeValue.value;
    }
    return map;
  }

  factory Justification2.fromMap(Map<String, dynamic> map) {
    return Justification2(
      details: map['details'] == null ? null : map['details'] as String,
      justificationType: map['justificationType'] == null
          ? null
          : JustificationJustificationType2.fromValue(
              map['justificationType'] as String),
    );
  }
}
