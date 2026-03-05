// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_variable_column.dart';

/// {@template pulumi_authorization_variable_args_doc}
/// The set of arguments for Variable.
/// {@endtemplate}
/// {@macro pulumi_authorization_variable_args_doc}
class VariableArgs {
  /// Variable column definitions.
  final pulumi.Input<List<PolicyVariableColumn>> columns;
  /// The name of the variable to operate on.
  final pulumi.Input<String>? variableName;

  /// Creates a new [VariableArgs].
  /// [columns] Variable column definitions.
  /// [variableName] The name of the variable to operate on.
  VariableArgs({
    required this.columns,
    this.variableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': pulumi.Input.mapInputValue<List<PolicyVariableColumn>, List<Map<String, dynamic>>>(columns, (value) => pulumi.Input.encodeList<PolicyVariableColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'variableName': ?variableName,
    };
  }

  factory VariableArgs.fromMap(Map<String, dynamic> map) {
    return VariableArgs(
      columns: pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyVariableColumn>(map['columns']!, (value) => PolicyVariableColumn.fromMap((value as Map).cast<String, dynamic>()))),
      variableName: (() { final guardedValue = map['variableName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

