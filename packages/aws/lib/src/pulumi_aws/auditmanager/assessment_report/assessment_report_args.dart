// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for AssessmentReport.
class AssessmentReportArgs {
  /// Unique identifier of the assessment to create the report from.
  ///
  /// The following arguments are optional:
  final Input<String> assessmentId;

  /// Description of the assessment report.
  final Input<String>? description;

  /// Name of the assessment report.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

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
      assessmentId: Input.asInput<String>(map['assessmentId']),
      description: Input.asOptionalInput<String>(map['description']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
