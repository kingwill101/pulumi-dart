// ignore_for_file: unused_element, unnecessary_cast

import 'unit_kind_output_variable_mapping_from.dart';
import 'unit_kind_output_variable_mapping_to.dart';

class UnitKindOutputVariableMapping {
  /// Output variables whose values will be passed on to dependencies
  /// Structure is documented below.
  final UnitKindOutputVariableMappingFrom? from;
  /// Input variables whose values will be passed on to dependencies
  /// Structure is documented below.
  final UnitKindOutputVariableMappingTo? to;
  /// name of the variable
  final String variable;

  /// Creates a new [UnitKindOutputVariableMapping].
  /// [from] Output variables whose values will be passed on to dependencies
  /// [to] Input variables whose values will be passed on to dependencies
  /// [variable] name of the variable
  UnitKindOutputVariableMapping({
    this.from,
    this.to,
    required this.variable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': ?from == null ? null : from!.toMap(),
      'to': ?to == null ? null : to!.toMap(),
      'variable': variable,
    };
  }

  factory UnitKindOutputVariableMapping.fromMap(Map<String, dynamic> map) {
    return UnitKindOutputVariableMapping(
      from: map['from'] == null ? null : UnitKindOutputVariableMappingFrom.fromMap((map['from'] as Map).cast<String, dynamic>()),
      to: map['to'] == null ? null : UnitKindOutputVariableMappingTo.fromMap((map['to'] as Map).cast<String, dynamic>()),
      variable: map['variable'] as String,
    );
  }
}

