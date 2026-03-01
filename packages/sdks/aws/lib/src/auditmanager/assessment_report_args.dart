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
  final pulumi.Input<String>? description;
  /// Name of the assessment report.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [AssessmentReportArgs].
  /// [assessmentId] Unique identifier of the assessment to create the report from.
  /// [description] Description of the assessment report.
  /// [name] Name of the assessment report.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  AssessmentReportArgs({
    required pulumi.Output<String> assessmentId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
  }) :
      assessmentId = pulumi.Input.asInput<String>(assessmentId),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      assessmentId: pulumi.Output.create<String>(map['assessmentId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

