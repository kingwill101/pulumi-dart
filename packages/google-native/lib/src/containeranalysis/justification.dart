// ignore_for_file: unused_element, unnecessary_cast

import 'justification_justification_type.dart';

/// Justification provides the justification when the state of the assessment if NOT_AFFECTED.
class Justification {
  /// Additional details on why this justification was chosen.
  final String? details;

  /// The justification type for this vulnerability.
  final JustificationJustificationType? justificationType;

  /// Creates a new [Justification].
  /// [details] Additional details on why this justification was chosen.
  /// [justificationType] The justification type for this vulnerability.
  Justification({this.details, this.justificationType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': ?details,
      'justificationType': ?justificationType == null
          ? null
          : justificationType!.value,
    };
  }

  factory Justification.fromMap(Map<String, dynamic> map) {
    return Justification(
      details: map['details'] == null ? null : map['details'] as String,
      justificationType: map['justificationType'] == null
          ? null
          : JustificationJustificationType.fromValue(
              map['justificationType'] as String,
            ),
    );
  }
}
