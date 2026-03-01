// ignore_for_file: unused_element, unnecessary_cast


/// ML-based evaluation rule for a signal definition
class DynamicDetectionRule {
  /// Threshold direction
  final String dynamicThresholdDirection;
  /// ML model to use for dynamic thresholds
  final String dynamicThresholdModel;
  /// ML model sensitivity. Lowest value = high sensitivity. Supported step size = 0.5
  final double modelSensitivity;
  /// Start time of the training in UTC.
  final String? trainingStartTime;

  /// Creates a new [DynamicDetectionRule].
  /// [dynamicThresholdDirection] Threshold direction
  /// [dynamicThresholdModel] ML model to use for dynamic thresholds
  /// [modelSensitivity] ML model sensitivity. Lowest value = high sensitivity. Supported step size = 0.5
  /// [trainingStartTime] Start time of the training in UTC.
  DynamicDetectionRule({
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

  factory DynamicDetectionRule.fromMap(Map<String, dynamic> map) {
    return DynamicDetectionRule(
      dynamicThresholdDirection: map['dynamicThresholdDirection'] as String,
      dynamicThresholdModel: map['dynamicThresholdModel'] as String,
      modelSensitivity: map['modelSensitivity'] as double,
      trainingStartTime: map['trainingStartTime'] == null ? null : map['trainingStartTime'] as String,
    );
  }
}

