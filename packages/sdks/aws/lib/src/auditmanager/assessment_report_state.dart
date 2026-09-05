// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AssessmentReport resources.
class AssessmentReportState {
  /// Unique identifier of the assessment to create the report from.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? assessmentId;
  /// Name of the user who created the assessment report.
  final pulumi.Input<String?>? author;
  /// Description of the assessment report.
  final pulumi.Input<String?>? description;
  /// Name of the assessment report.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Current status of the specified assessment report. Valid values are `COMPLETE`, `IN_PROGRESS`, and `FAILED`.
  final pulumi.Input<String?>? status;

  /// Creates a new [AssessmentReportState].
  /// [assessmentId] Unique identifier of the assessment to create the report from.
  /// [author] Name of the user who created the assessment report.
  /// [description] Description of the assessment report.
  /// [name] Name of the assessment report.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Current status of the specified assessment report. Valid values are `COMPLETE`, `IN_PROGRESS`, and `FAILED`.
  const AssessmentReportState({
    this.assessmentId,
    this.author,
    this.description,
    this.name,
    this.region,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentId': ?assessmentId,
      'author': ?author,
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'status': ?status,
    };
  }

  factory AssessmentReportState.fromMap(Map<String, dynamic> map) {
    return AssessmentReportState(
      assessmentId: (() { final guardedValue = map['assessmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      author: (() { final guardedValue = map['author']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
