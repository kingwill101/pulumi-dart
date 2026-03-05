// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTaskExecutionPlacementStrategy {
  /// The field to apply the placement strategy against.
  final pulumi.Input<String>? field;
  /// The type of placement strategy. Valid values are `random`, `spread`, and `binpack`.
  ///
  /// For more information, see the [Placement Strategy](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PlacementStrategy.html) documentation.
  final pulumi.Input<String> type;

  /// Creates a new [GetTaskExecutionPlacementStrategy].
  /// [field] The field to apply the placement strategy against.
  /// [type] The type of placement strategy. Valid values are `random`, `spread`, and `binpack`.
  GetTaskExecutionPlacementStrategy({
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

