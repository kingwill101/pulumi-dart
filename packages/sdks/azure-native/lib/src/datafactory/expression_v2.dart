// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Nested representation of a complex expression.
class ExpressionV2 {
  /// List of nested expressions.
  final List<ExpressionV2>? operands;
  /// Expression operator value Type: list of strings.
  final List<String>? operators;
  /// Type of expressions supported by the system. Type: string.
  final String? type;
  /// Value for Constant/Field Type: object.
  final dynamic value;

  /// Creates a new [ExpressionV2].
  /// [operands] List of nested expressions.
  /// [operators] Expression operator value Type: list of strings.
  /// [type] Type of expressions supported by the system. Type: string.
  /// [value] Value for Constant/Field Type: object.
  ExpressionV2({
    this.operands,
    this.operators,
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operands': ?operands == null ? null : pulumi.Input.encodeList<ExpressionV2, Map<String, dynamic>>(operands!, (value) => value.toMap()),
      'operators': ?operators,
      'type': ?type,
      'value': ?value,
    };
  }

  factory ExpressionV2.fromMap(Map<String, dynamic> map) {
    return ExpressionV2(
      operands: map['operands'] == null ? null : pulumi.Input.decodeList<ExpressionV2>(map['operands'], (value) => ExpressionV2.fromMap((value as Map).cast<String, dynamic>())),
      operators: map['operators'] == null ? null : (map['operators'] as List).cast<String>(),
      type: map['type'] == null ? null : map['type'] as String,
      value: map['value'] == null ? null : map['value'],
    );
  }
}

