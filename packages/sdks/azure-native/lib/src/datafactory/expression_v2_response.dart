// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Nested representation of a complex expression.
class ExpressionV2Response {
  /// List of nested expressions.
  final pulumi.Input<List<ExpressionV2Response>>? operands;
  /// Expression operator value Type: list of strings.
  final pulumi.Input<List<String>>? operators;
  /// Type of expressions supported by the system. Type: string.
  final pulumi.Input<String>? type;
  /// Value for Constant/Field Type: object.
  final pulumi.Input<dynamic>? value;

  /// Creates a new [ExpressionV2Response].
  /// [operands] List of nested expressions.
  /// [operators] Expression operator value Type: list of strings.
  /// [type] Type of expressions supported by the system. Type: string.
  /// [value] Value for Constant/Field Type: object.
  const ExpressionV2Response({
    this.operands,
    this.operators,
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operands': ?pulumi.Input.mapOptionalInputValue<List<ExpressionV2Response>, List<Map<String, dynamic>>>(operands, (value) => pulumi.Input.encodeList<ExpressionV2Response, Map<String, dynamic>>(value, (value) => value.toMap())),
      'operators': ?operators,
      'type': ?type,
      'value': ?value,
    };
  }

  factory ExpressionV2Response.fromMap(Map<String, dynamic> map) {
    return ExpressionV2Response(
      operands: (() { final guardedValue = map['operands']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExpressionV2Response>(guardedValue, (value) => ExpressionV2Response.fromMap((value as Map).cast<String, dynamic>()))); })(),
      operators: (() { final guardedValue = map['operators']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
