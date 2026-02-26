// ignore_for_file: unused_element, unnecessary_cast

import '../unit_kind_output_variable_mapping_from/unit_kind_output_variable_mapping_from.dart';
import '../unit_kind_output_variable_mapping_to/unit_kind_output_variable_mapping_to.dart';

class UnitKindOutputVariableMapping {
  /// Output variables whose values will be passed on to dependencies
  /// Structure is documented below.
  final UnitKindOutputVariableMappingFrom? from;

  /// Input variables whose values will be passed on to dependencies
  /// Structure is documented below.
  final UnitKindOutputVariableMappingTo? to;

  /// name of the variable
  final String variable;

  UnitKindOutputVariableMapping({
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

  factory UnitKindOutputVariableMapping.fromMap(Map<String, dynamic> map) {
    return UnitKindOutputVariableMapping(
      from: map['from'] == null
          ? null
          : UnitKindOutputVariableMappingFrom.fromMap(
              (map['from'] as Map).cast<String, dynamic>()),
      to: map['to'] == null
          ? null
          : UnitKindOutputVariableMappingTo.fromMap(
              (map['to'] as Map).cast<String, dynamic>()),
      variable: map['variable'] as String,
    );
  }
}
