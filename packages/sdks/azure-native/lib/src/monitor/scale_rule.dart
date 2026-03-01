// ignore_for_file: unused_element, unnecessary_cast

import 'metric_trigger.dart';
import 'scale_action.dart';

/// A rule that provide the triggers and parameters for the scaling action.
class ScaleRule {
  /// the trigger that results in a scaling action.
  final MetricTrigger metricTrigger;
  /// the parameters for the scaling action.
  final ScaleAction scaleAction;

  /// Creates a new [ScaleRule].
  /// [metricTrigger] the trigger that results in a scaling action.
  /// [scaleAction] the parameters for the scaling action.
  ScaleRule({
    required this.metricTrigger,
    required this.scaleAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricTrigger': metricTrigger.toMap(),
      'scaleAction': scaleAction.toMap(),
    };
  }

  factory ScaleRule.fromMap(Map<String, dynamic> map) {
    return ScaleRule(
      metricTrigger: MetricTrigger.fromMap((map['metricTrigger'] as Map).cast<String, dynamic>()),
      scaleAction: ScaleAction.fromMap((map['scaleAction'] as Map).cast<String, dynamic>()),
    );
  }
}

