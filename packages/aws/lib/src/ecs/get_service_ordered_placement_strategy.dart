// ignore_for_file: unused_element, unnecessary_cast


class GetServiceOrderedPlacementStrategy {
  /// Field to apply placement strategy against
  final String field;
  /// Constraint type
  final String type;

  /// Creates a new [GetServiceOrderedPlacementStrategy].
  /// [field] Field to apply placement strategy against
  /// [type] Constraint type
  GetServiceOrderedPlacementStrategy({
    required this.field,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'field': field,
      'type': type,
    };
  }

  factory GetServiceOrderedPlacementStrategy.fromMap(Map<String, dynamic> map) {
    return GetServiceOrderedPlacementStrategy(
      field: map['field'] as String,
      type: map['type'] as String,
    );
  }
}

