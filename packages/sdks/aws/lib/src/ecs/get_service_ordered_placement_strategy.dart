// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceOrderedPlacementStrategy {
  /// Field to apply placement strategy against
  final pulumi.Input<String> field;
  /// Constraint type
  final pulumi.Input<String> type;

  /// Creates a new [GetServiceOrderedPlacementStrategy].
  /// [field] Field to apply placement strategy against
  /// [type] Constraint type
  const GetServiceOrderedPlacementStrategy({
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
      field: pulumi.Input.fromValue(map['field'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
