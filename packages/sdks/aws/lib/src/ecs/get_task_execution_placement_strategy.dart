// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTaskExecutionPlacementStrategy {
  /// Field to apply the placement strategy against.
  final pulumi.Input<String>? field;
  /// Type of placement strategy. Valid values are `random`, `spread`, and `binpack`.
  final pulumi.Input<String> type;

  /// Creates a new [GetTaskExecutionPlacementStrategy].
  /// [field] Field to apply the placement strategy against.
  /// [type] Type of placement strategy. Valid values are `random`, `spread`, and `binpack`.
  const GetTaskExecutionPlacementStrategy({
    this.field,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'field': ?field,
      'type': type,
    };
  }

  factory GetTaskExecutionPlacementStrategy.fromMap(Map<String, dynamic> map) {
    return GetTaskExecutionPlacementStrategy(
      field: (() { final guardedValue = map['field']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
