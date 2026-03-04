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
    this.assessmentName,
    this.locale,
    this.typeId,
    this.workloadId,
  });

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
      assessmentName: (() {
        final guardedValue = map['assessmentName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      locale: (() {
        final guardedValue = map['locale'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      typeId: (() {
        final guardedValue = map['typeId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      workloadId: (() {
        final guardedValue = map['workloadId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
