// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Nested representation of a complex expression.
class ExpressionV2 {
  /// List of nested expressions.
  final pulumi.Input<List<ExpressionV2>?>? operands;
  /// Expression operator value Type: list of strings.
  final pulumi.Input<List<String>?>? operators;
  /// Type of expressions supported by the system. Type: string.
  final pulumi.Input<dynamic>? type;
  /// Value for Constant/Field Type: object.
  final pulumi.Input<dynamic>? value;

  /// Creates a new [ExpressionV2].
  /// [operands] List of nested expressions.
  /// [operators] Expression operator value Type: list of strings.
  /// [type] Type of expressions supported by the system. Type: string.
  /// [value] Value for Constant/Field Type: object.
  const ExpressionV2({
    this.operands,
    this.operators,
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operands': ?pulumi.Input.mapOptionalInputValue<List<ExpressionV2>, List<Map<String, dynamic>>>(operands, (value) => pulumi.Input.encodeList<ExpressionV2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'operators': ?operators,
      'type': ?type,
      'value': ?value,
    };
  }

  factory ExpressionV2.fromMap(Map<String, dynamic> map) {
    return ExpressionV2(
      operands: (() { final guardedValue = map['operands']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExpressionV2>(guardedValue, (value) => ExpressionV2.fromMap((value as Map).cast<String, dynamic>()))); })(),
      operators: (() { final guardedValue = map['operators']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
