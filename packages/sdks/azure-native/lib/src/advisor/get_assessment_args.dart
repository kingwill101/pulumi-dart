// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_advisor_get_assessment_args_doc}
/// Arguments for getAssessment.
/// {@endtemplate}
/// {@macro pulumi_advisor_get_assessment_args_doc}
class GetAssessmentArgs {
  /// Advisor assessment name.
  final pulumi.Input<String> assessmentName;

  /// Creates a new [GetAssessmentArgs].
  /// [assessmentName] Advisor assessment name.
  GetAssessmentArgs({required this.assessmentName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'assessmentName': assessmentName};
  }

  factory GetAssessmentArgs.fromMap(Map<String, dynamic> map) {
    return GetAssessmentArgs(
      assessmentName: pulumi.Input.fromValue(map['assessmentName'] as String),
    );
  }
}
