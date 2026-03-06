// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_trigger_response.dart';
import 'scale_action_response.dart';

/// A rule that provide the triggers and parameters for the scaling action.
class ScaleRuleResponse {
  /// the trigger that results in a scaling action.
  final pulumi.Input<MetricTriggerResponse> metricTrigger;
  /// the parameters for the scaling action.
  final pulumi.Input<ScaleActionResponse> scaleAction;

  /// Creates a new [ScaleRuleResponse].
  /// [metricTrigger] the trigger that results in a scaling action.
  /// [scaleAction] the parameters for the scaling action.
  const ScaleRuleResponse({
    required this.metricTrigger,
    required this.scaleAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricTrigger': pulumi.Input.mapInputValue<MetricTriggerResponse, Map<String, dynamic>>(metricTrigger, (value) => value.toMap()),
      'scaleAction': pulumi.Input.mapInputValue<ScaleActionResponse, Map<String, dynamic>>(scaleAction, (value) => value.toMap()),
    };
  }

  factory ScaleRuleResponse.fromMap(Map<String, dynamic> map) {
    return ScaleRuleResponse(
      metricTrigger: pulumi.Input.fromValue(MetricTriggerResponse.fromMap((map['metricTrigger']! as Map).cast<String, dynamic>())),
      scaleAction: pulumi.Input.fromValue(ScaleActionResponse.fromMap((map['scaleAction']! as Map).cast<String, dynamic>())),
    );
  }
}

