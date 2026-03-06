// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DiJobTableMappingSourceObjectSelectionRule {
  final pulumi.Input<String>? action;
  /// Expression, such as mysql_table_1
  final pulumi.Input<String>? expression;
  /// Expression type, value range: Exact/Regex
  final pulumi.Input<String>? expressionType;
  /// Object type, optional enumeration value:
  ///
  /// Table (Table)
  ///
  /// Database
  final pulumi.Input<String>? objectType;

  /// Creates a new [DiJobTableMappingSourceObjectSelectionRule].
  /// [action] Optional.
  /// [expression] Expression, such as mysql_table_1
  /// [expressionType] Expression type, value range: Exact/Regex
  /// [objectType] Object type, optional enumeration value:
  const DiJobTableMappingSourceObjectSelectionRule({
    this.action,
    this.expression,
    this.expressionType,
    this.objectType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'expression': ?expression,
      'expressionType': ?expressionType,
      'objectType': ?objectType,
    };
  }

  factory DiJobTableMappingSourceObjectSelectionRule.fromMap(Map<String, dynamic> map) {
    return DiJobTableMappingSourceObjectSelectionRule(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expression: (() { final guardedValue = map['expression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expressionType: (() { final guardedValue = map['expressionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectType: (() { final guardedValue = map['objectType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

