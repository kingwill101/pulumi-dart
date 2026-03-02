// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AssessmentReport resources.
class AssessmentReportState {
  /// Unique identifier of the assessment to create the report from.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? assessmentId;
  /// Name of the user who created the assessment report.
  final pulumi.Input<String>? author;
  /// Description of the assessment report.
  final pulumi.Input<String>? description;
  /// Name of the assessment report.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Current status of the specified assessment report. Valid values are `COMPLETE`, `IN_PROGRESS`, and `FAILED`.
  final pulumi.Input<String>? status;

  /// Creates a new [AssessmentReportState].
  /// [assessmentId] Unique identifier of the assessment to create the report from.
  /// [author] Name of the user who created the assessment report.
  /// [description] Description of the assessment report.
  /// [name] Name of the assessment report.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Current status of the specified assessment report. Valid values are `COMPLETE`, `IN_PROGRESS`, and `FAILED`.
  AssessmentReportState({
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
      assessmentId: map['assessmentId'] == null ? null : ((map['assessmentId'] as String).input()).input(),
      author: map['author'] == null ? null : ((map['author'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
    );
  }
}

