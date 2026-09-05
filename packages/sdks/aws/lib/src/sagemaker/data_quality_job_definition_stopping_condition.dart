// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataQualityJobDefinitionStoppingCondition {
  /// The maximum runtime allowed in seconds.
  final pulumi.Input<int?>? maxRuntimeInSeconds;

  /// Creates a new [DataQualityJobDefinitionStoppingCondition].
  /// [maxRuntimeInSeconds] The maximum runtime allowed in seconds.
  const DataQualityJobDefinitionStoppingCondition({
    this.maxRuntimeInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxRuntimeInSeconds': ?maxRuntimeInSeconds,
    };
  }

  factory DataQualityJobDefinitionStoppingCondition.fromMap(Map<String, dynamic> map) {
    return DataQualityJobDefinitionStoppingCondition(
      maxRuntimeInSeconds: (() { final guardedValue = map['maxRuntimeInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
