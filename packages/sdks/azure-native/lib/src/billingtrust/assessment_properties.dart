// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'edu_initial_value.dart';

/// The properties of an Assessment resource
class AssessmentProperties {
  /// The name of the assessment template whose rules will be evaluated (e.g. 'Edu'). Immutable after creation.
  final pulumi.Input<String> assessmentType;
  /// Optional initial values applied to the rules created with this assessment. Write-only — these values are routed to the per-kind rules and are not returned on read.
  final pulumi.Input<List<EduInitialValue>>? initialValues;

  /// Creates a new [AssessmentProperties].
  /// [assessmentType] The name of the assessment template whose rules will be evaluated (e.g. 'Edu'). Immutable after creation.
  /// [initialValues] Optional initial values applied to the rules created with this assessment. Write-only — these values are routed to the per-kind rules and are not returned on read.
  const AssessmentProperties({
    required this.assessmentType,
    this.initialValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentType': assessmentType,
      'initialValues': ?pulumi.Input.mapOptionalInputValue<List<EduInitialValue>, List<Map<String, dynamic>>>(initialValues, (value) => pulumi.Input.encodeList<EduInitialValue, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AssessmentProperties.fromMap(Map<String, dynamic> map) {
    return AssessmentProperties(
      assessmentType: pulumi.Input.fromValue(map['assessmentType'] as String),
      initialValues: (() { final guardedValue = map['initialValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EduInitialValue>(guardedValue, (value) => EduInitialValue.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
