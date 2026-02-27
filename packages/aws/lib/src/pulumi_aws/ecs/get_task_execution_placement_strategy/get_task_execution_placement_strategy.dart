// ignore_for_file: unused_element, unnecessary_cast

class GetTaskExecutionPlacementStrategy {
  /// The field to apply the placement strategy against.
  final String? field;

  /// The type of placement strategy. Valid values are `random`, `spread`, and `binpack`.
  ///
  /// For more information, see the [Placement Strategy](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PlacementStrategy.html) documentation.
  final String type;

  GetTaskExecutionPlacementStrategy({
    this.field,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fieldValue = field;
    if (fieldValue != null) {
      map['field'] = fieldValue;
    }
    map['type'] = type;
    return map;
  }

  factory GetTaskExecutionPlacementStrategy.fromMap(Map<String, dynamic> map) {
    return GetTaskExecutionPlacementStrategy(
      field: map['field'] == null ? null : map['field'] as String,
      type: map['type'] as String,
    );
  }
}
