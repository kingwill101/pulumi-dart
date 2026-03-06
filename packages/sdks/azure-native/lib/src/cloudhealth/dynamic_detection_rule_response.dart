// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ML-based evaluation rule for a signal definition
class DynamicDetectionRuleResponse {
  /// Threshold direction
  final pulumi.Input<String> dynamicThresholdDirection;
  /// ML model to use for dynamic thresholds
  final pulumi.Input<String> dynamicThresholdModel;
  /// ML model sensitivity. Lowest value = high sensitivity. Supported step size = 0.5
  final pulumi.Input<double> modelSensitivity;
  /// Start time of the training in UTC.
  final pulumi.Input<String>? trainingStartTime;

  /// Creates a new [DynamicDetectionRuleResponse].
  /// [dynamicThresholdDirection] Threshold direction
  /// [dynamicThresholdModel] ML model to use for dynamic thresholds
  /// [modelSensitivity] ML model sensitivity. Lowest value = high sensitivity. Supported step size = 0.5
  /// [trainingStartTime] Start time of the training in UTC.
  const DynamicDetectionRuleResponse({
    required this.dynamicThresholdDirection,
    required this.dynamicThresholdModel,
    required this.modelSensitivity,
    this.trainingStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dynamicThresholdDirection': dynamicThresholdDirection,
      'dynamicThresholdModel': dynamicThresholdModel,
      'modelSensitivity': modelSensitivity,
      'trainingStartTime': ?trainingStartTime,
    };
  }

  factory DynamicDetectionRuleResponse.fromMap(Map<String, dynamic> map) {
    return DynamicDetectionRuleResponse(
      dynamicThresholdDirection: pulumi.Input.fromValue(map['dynamicThresholdDirection'] as String),
      dynamicThresholdModel: pulumi.Input.fromValue(map['dynamicThresholdModel'] as String),
      modelSensitivity: pulumi.Input.fromValue(map['modelSensitivity'] as double),
      trainingStartTime: (() { final guardedValue = map['trainingStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

