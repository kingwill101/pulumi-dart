// ignore_for_file: unused_element, unnecessary_cast

import 'unit_kind_input_variable_mapping_from.dart';
import 'unit_kind_input_variable_mapping_to.dart';

class UnitKindInputVariableMapping {
  /// Output variables whose values will be passed on to dependencies
  /// Structure is documented below.
  final UnitKindInputVariableMappingFrom? from;

  /// Input variables whose values will be passed on to dependencies
  /// Structure is documented below.
  final UnitKindInputVariableMappingTo? to;

  /// name of the variable
  final String variable;

  /// Creates a new [UnitKindInputVariableMapping].
  /// [from] Output variables whose values will be passed on to dependencies
  /// [to] Input variables whose values will be passed on to dependencies
  /// [variable] name of the variable
  UnitKindInputVariableMapping({this.from, this.to, required this.variable});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': ?from == null ? null : from!.toMap(),
      'to': ?to == null ? null : to!.toMap(),
      'variable': variable,
    };
  }

  factory UnitKindInputVariableMapping.fromMap(Map<String, dynamic> map) {
    return UnitKindInputVariableMapping(
      from: map['from'] == null
          ? null
          : UnitKindInputVariableMappingFrom.fromMap(
              (map['from'] as Map).cast<String, dynamic>(),
            ),
      to: map['to'] == null
          ? null
          : UnitKindInputVariableMappingTo.fromMap(
              (map['to'] as Map).cast<String, dynamic>(),
            ),
      variable: map['variable'] as String,
    );
  }
}
