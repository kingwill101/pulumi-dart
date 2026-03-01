// ignore_for_file: unused_element, unnecessary_cast

import 'justification_justification_type_containeranalysis_v1beta1.dart';

/// Justification provides the justification when the state of the assessment if NOT_AFFECTED.
class JustificationContaineranalysisV1beta1 {
  /// Additional details on why this justification was chosen.
  final String? details;

  /// The justification type for this vulnerability.
  final JustificationJustificationTypeContaineranalysisV1beta1?
  justificationType;

  /// Creates a new [JustificationContaineranalysisV1beta1].
  /// [details] Additional details on why this justification was chosen.
  /// [justificationType] The justification type for this vulnerability.
  JustificationContaineranalysisV1beta1({this.details, this.justificationType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': ?details,
      'justificationType': ?justificationType == null
          ? null
          : justificationType!.value,
    };
  }

  factory JustificationContaineranalysisV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return JustificationContaineranalysisV1beta1(
      details: map['details'] == null ? null : map['details'] as String,
      justificationType: map['justificationType'] == null
          ? null
          : JustificationJustificationTypeContaineranalysisV1beta1.fromValue(
              map['justificationType'] as String,
            ),
    );
  }
}
