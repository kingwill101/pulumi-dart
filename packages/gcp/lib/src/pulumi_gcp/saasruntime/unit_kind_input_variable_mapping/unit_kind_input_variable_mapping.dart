// ignore_for_file: unused_element, unnecessary_cast

import '../unit_kind_input_variable_mapping_from/unit_kind_input_variable_mapping_from.dart';
import '../unit_kind_input_variable_mapping_to/unit_kind_input_variable_mapping_to.dart';

class UnitKindInputVariableMapping {
  /// Output variables whose values will be passed on to dependencies
  /// Structure is documented below.
  final UnitKindInputVariableMappingFrom? from;

  /// Input variables whose values will be passed on to dependencies
  /// Structure is documented below.
  final UnitKindInputVariableMappingTo? to;

  /// name of the variable
  final String variable;

  UnitKindInputVariableMapping({
    this.from,
    this.to,
    required this.variable,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fromValue = from;
    if (fromValue != null) {
      map['from'] = fromValue.toMap();
    }
    final toValue = to;
    if (toValue != null) {
      map['to'] = toValue.toMap();
    }
    map['variable'] = variable;
    return map;
  }

  factory UnitKindInputVariableMapping.fromMap(Map<String, dynamic> map) {
    return UnitKindInputVariableMapping(
      from: map['from'] == null
          ? null
          : UnitKindInputVariableMappingFrom.fromMap(
              (map['from'] as Map).cast<String, dynamic>()),
      to: map['to'] == null
          ? null
          : UnitKindInputVariableMappingTo.fromMap(
              (map['to'] as Map).cast<String, dynamic>()),
      variable: map['variable'] as String,
    );
  }
}
