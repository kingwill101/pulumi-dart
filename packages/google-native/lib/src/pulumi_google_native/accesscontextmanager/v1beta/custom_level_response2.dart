// ignore_for_file: unused_element, unnecessary_cast

import 'expr_response2.dart';

/// `CustomLevel` is an `AccessLevel` using the Cloud Common Expression Language to represent the necessary conditions for the level to apply to a request. See CEL spec at: https://github.com/google/cel-spec
class CustomLevelResponse2 {
  /// A Cloud CEL expression evaluating to a boolean.
  final ExprResponse2 expr;

  CustomLevelResponse2({
    required this.expr,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['expr'] = expr.toMap();
    return map;
  }

  factory CustomLevelResponse2.fromMap(Map<String, dynamic> map) {
    return CustomLevelResponse2(
      expr: ExprResponse2.fromMap((map['expr'] as Map).cast<String, dynamic>()),
    );
  }
}
