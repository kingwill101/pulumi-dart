// ignore_for_file: unused_element, unnecessary_cast

import 'justification_justification_type_containeranalysis_v1alpha1.dart';

/// Justification provides the justification when the state of the assessment if NOT_AFFECTED.
class JustificationContaineranalysisV1alpha1 {
  /// Additional details on why this justification was chosen.
  final String? details;

  /// The justification type for this vulnerability.
  final JustificationJustificationTypeContaineranalysisV1alpha1?
      justificationType;

  /// Creates a new [JustificationContaineranalysisV1alpha1].
  /// [details] Additional details on why this justification was chosen.
  /// [justificationType] The justification type for this vulnerability.
  JustificationContaineranalysisV1alpha1({
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

  factory JustificationContaineranalysisV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return JustificationContaineranalysisV1alpha1(
      details: map['details'] == null ? null : map['details'] as String,
      justificationType: map['justificationType'] == null
          ? null
          : JustificationJustificationTypeContaineranalysisV1alpha1.fromValue(
              map['justificationType'] as String),
    );
  }
}
