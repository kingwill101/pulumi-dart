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
    pulumi.Output<String>? assessmentId,
    pulumi.Output<String>? author,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? status,
  }) :
      assessmentId = pulumi.Input.asOptionalInput<String>(assessmentId),
      author = pulumi.Input.asOptionalInput<String>(author),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      assessmentId: map['assessmentId'] == null ? null : pulumi.Output.create<String>(map['assessmentId'] as String),
      author: map['author'] == null ? null : pulumi.Output.create<String>(map['author'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

