// ignore_for_file: unused_element, unnecessary_cast

class DataQualityJobDefinitionStoppingCondition {
  /// The maximum runtime allowed in seconds.
  final int? maxRuntimeInSeconds;

  /// Creates a new [DataQualityJobDefinitionStoppingCondition].
  /// [maxRuntimeInSeconds] The maximum runtime allowed in seconds.
  DataQualityJobDefinitionStoppingCondition({
    this.maxRuntimeInSeconds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxRuntimeInSecondsValue = maxRuntimeInSeconds;
    if (maxRuntimeInSecondsValue != null) {
      map['maxRuntimeInSeconds'] = maxRuntimeInSecondsValue;
    }
    return map;
  }

  factory DataQualityJobDefinitionStoppingCondition.fromMap(
      Map<String, dynamic> map) {
    return DataQualityJobDefinitionStoppingCondition(
      maxRuntimeInSeconds: map['maxRuntimeInSeconds'] == null
          ? null
          : map['maxRuntimeInSeconds'] as int,
    );
  }
}
