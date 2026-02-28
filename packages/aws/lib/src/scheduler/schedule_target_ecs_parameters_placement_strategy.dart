// ignore_for_file: unused_element, unnecessary_cast

class ScheduleTargetEcsParametersPlacementStrategy {
  /// The field to apply the placement strategy against.
  final String? field;

  /// The type of placement strategy. One of: `random`, `spread`, `binpack`.
  final String type;

  /// Creates a new [ScheduleTargetEcsParametersPlacementStrategy].
  /// [field] The field to apply the placement strategy against.
  /// [type] The type of placement strategy. One of: `random`, `spread`, `binpack`.
  ScheduleTargetEcsParametersPlacementStrategy({
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

  factory ScheduleTargetEcsParametersPlacementStrategy.fromMap(
      Map<String, dynamic> map) {
    return ScheduleTargetEcsParametersPlacementStrategy(
      field: map['field'] == null ? null : map['field'] as String,
      type: map['type'] as String,
    );
  }
}
