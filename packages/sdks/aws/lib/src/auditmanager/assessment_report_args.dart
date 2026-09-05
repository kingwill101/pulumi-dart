// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_auditmanager_assessment_report_assessment_report_args_doc}
/// The set of arguments for AssessmentReport.
/// {@endtemplate}
/// {@macro pulumi_auditmanager_assessment_report_assessment_report_args_doc}
class AssessmentReportArgs {
  /// Unique identifier of the assessment to create the report from.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> assessmentId;
  /// Description of the assessment report.
  final pulumi.Input<String?>? description;
  /// Name of the assessment report.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [AssessmentReportArgs].
  /// [assessmentId] Unique identifier of the assessment to create the report from.
  /// [description] Description of the assessment report.
  /// [name] Name of the assessment report.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const AssessmentReportArgs({
    required this.assessmentId,
    this.description,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentId': assessmentId,
      'description': ?description,
      'name': ?name,
      'region': ?region,
    };
  }

  factory AssessmentReportArgs.fromMap(Map<String, dynamic> map) {
    return AssessmentReportArgs(
      assessmentId: pulumi.Input.fromValue(map['assessmentId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
