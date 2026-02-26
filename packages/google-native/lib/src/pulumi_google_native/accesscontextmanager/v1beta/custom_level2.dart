// ignore_for_file: unused_element, unnecessary_cast

import 'expr2.dart';

/// `CustomLevel` is an `AccessLevel` using the Cloud Common Expression Language to represent the necessary conditions for the level to apply to a request. See CEL spec at: https://github.com/google/cel-spec
class CustomLevel2 {
  /// A Cloud CEL expression evaluating to a boolean.
  final Expr2 expr;

  CustomLevel2({
    required this.expr,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['expr'] = expr.toMap();
    return map;
  }

  factory CustomLevel2.fromMap(Map<String, dynamic> map) {
    return CustomLevel2(
      expr: Expr2.fromMap((map['expr'] as Map).cast<String, dynamic>()),
    );
  }
}
