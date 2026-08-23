// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetricCustomMetricDefinitionRatingScaleValue {
  /// Floating point number representing the rating value.
  final pulumi.Input<double>? floatValue;
  /// String representing the rating value.
  final pulumi.Input<String>? stringValue;

  /// Creates a new [EvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetricCustomMetricDefinitionRatingScaleValue].
  /// [floatValue] Floating point number representing the rating value.
  /// [stringValue] String representing the rating value.
  const EvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetricCustomMetricDefinitionRatingScaleValue({
    this.floatValue,
    this.stringValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'floatValue': ?floatValue,
      'stringValue': ?stringValue,
    };
  }

  factory EvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetricCustomMetricDefinitionRatingScaleValue.fromMap(Map<String, dynamic> map) {
    return EvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetricCustomMetricDefinitionRatingScaleValue(
      floatValue: (() { final guardedValue = map['floatValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      stringValue: (() { final guardedValue = map['stringValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
