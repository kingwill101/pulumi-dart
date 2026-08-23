// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScheduleTargetEcsParametersPlacementStrategy {
  /// The field to apply the placement strategy against.
  final pulumi.Input<String>? field;
  /// The type of placement strategy. One of: `random`, `spread`, `binpack`.
  final pulumi.Input<String> type;

  /// Creates a new [ScheduleTargetEcsParametersPlacementStrategy].
  /// [field] The field to apply the placement strategy against.
  /// [type] The type of placement strategy. One of: `random`, `spread`, `binpack`.
  const ScheduleTargetEcsParametersPlacementStrategy({
    this.field,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'field': ?field,
      'type': type,
    };
  }

  factory ScheduleTargetEcsParametersPlacementStrategy.fromMap(Map<String, dynamic> map) {
    return ScheduleTargetEcsParametersPlacementStrategy(
      field: (() { final guardedValue = map['field']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
