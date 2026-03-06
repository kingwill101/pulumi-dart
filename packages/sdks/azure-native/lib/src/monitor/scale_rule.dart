// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_trigger.dart';
import 'scale_action.dart';

/// A rule that provide the triggers and parameters for the scaling action.
class ScaleRule {
  /// the trigger that results in a scaling action.
  final pulumi.Input<MetricTrigger> metricTrigger;
  /// the parameters for the scaling action.
  final pulumi.Input<ScaleAction> scaleAction;

  /// Creates a new [ScaleRule].
  /// [metricTrigger] the trigger that results in a scaling action.
  /// [scaleAction] the parameters for the scaling action.
  const ScaleRule({
    required this.metricTrigger,
    required this.scaleAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricTrigger': pulumi.Input.mapInputValue<MetricTrigger, Map<String, dynamic>>(metricTrigger, (value) => value.toMap()),
      'scaleAction': pulumi.Input.mapInputValue<ScaleAction, Map<String, dynamic>>(scaleAction, (value) => value.toMap()),
    };
  }

  factory ScaleRule.fromMap(Map<String, dynamic> map) {
    return ScaleRule(
      metricTrigger: pulumi.Input.fromValue(MetricTrigger.fromMap((map['metricTrigger']! as Map).cast<String, dynamic>())),
      scaleAction: pulumi.Input.fromValue(ScaleAction.fromMap((map['scaleAction']! as Map).cast<String, dynamic>())),
    );
  }
}

