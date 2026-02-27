// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for AssessmentReport.
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

  AssessmentReportArgs({
    required this.assessmentId,
    this.description,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['assessmentId'] = assessmentId;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory AssessmentReportArgs.fromMap(Map<String, dynamic> map) {
    return AssessmentReportArgs(
      assessmentId: pulumi.Input.asInput<String>(map['assessmentId']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
