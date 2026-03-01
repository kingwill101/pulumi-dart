// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_advisor_assessment_args_doc}
/// The set of arguments for Assessment.
/// {@endtemplate}
/// {@macro pulumi_advisor_assessment_args_doc}
class AssessmentArgs {
  /// Advisor assessment name.
  final pulumi.Input<String>? assessmentName;
  /// Assessment Type Locale.
  final pulumi.Input<String>? locale;
  /// Assessment Type Id.
  final pulumi.Input<String>? typeId;
  /// Workload Id.
  final pulumi.Input<String>? workloadId;

  /// Creates a new [AssessmentArgs].
  /// [assessmentName] Advisor assessment name.
  /// [locale] Assessment Type Locale.
  /// [typeId] Assessment Type Id.
  /// [workloadId] Workload Id.
  AssessmentArgs({
    pulumi.Output<String>? assessmentName,
    pulumi.Output<String>? locale,
    pulumi.Output<String>? typeId,
    pulumi.Output<String>? workloadId,
  }) :
      assessmentName = pulumi.Input.asOptionalInput<String>(assessmentName),
      locale = pulumi.Input.asOptionalInput<String>(locale),
      typeId = pulumi.Input.asOptionalInput<String>(typeId),
      workloadId = pulumi.Input.asOptionalInput<String>(workloadId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentName': ?assessmentName,
      'locale': ?locale,
      'typeId': ?typeId,
      'workloadId': ?workloadId,
    };
  }

  factory AssessmentArgs.fromMap(Map<String, dynamic> map) {
    return AssessmentArgs(
      assessmentName: map['assessmentName'] == null ? null : pulumi.Output.create<String>(map['assessmentName'] as String),
      locale: map['locale'] == null ? null : pulumi.Output.create<String>(map['locale'] as String),
      typeId: map['typeId'] == null ? null : pulumi.Output.create<String>(map['typeId'] as String),
      workloadId: map['workloadId'] == null ? null : pulumi.Output.create<String>(map['workloadId'] as String),
    );
  }
}

