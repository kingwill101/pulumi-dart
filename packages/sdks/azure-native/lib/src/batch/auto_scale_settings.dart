// ignore_for_file: unused_element, unnecessary_cast


/// AutoScale settings for the pool.
class AutoScaleSettings {
  /// If omitted, the default value is 15 minutes (PT15M).
  final String? evaluationInterval;
  /// A formula for the desired number of compute nodes in the pool.
  final String formula;

  /// Creates a new [AutoScaleSettings].
  /// [evaluationInterval] If omitted, the default value is 15 minutes (PT15M).
  /// [formula] A formula for the desired number of compute nodes in the pool.
  AutoScaleSettings({
    this.evaluationInterval,
    required this.formula,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evaluationInterval': ?evaluationInterval,
      'formula': formula,
    };
  }

  factory AutoScaleSettings.fromMap(Map<String, dynamic> map) {
    return AutoScaleSettings(
      evaluationInterval: map['evaluationInterval'] == null ? null : map['evaluationInterval'] as String,
      formula: map['formula'] as String,
    );
  }
}

