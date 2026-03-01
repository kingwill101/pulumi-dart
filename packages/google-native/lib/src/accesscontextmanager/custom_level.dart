// ignore_for_file: unused_element, unnecessary_cast

import 'expr.dart';

/// `CustomLevel` is an `AccessLevel` using the Cloud Common Expression Language to represent the necessary conditions for the level to apply to a request. See CEL spec at: https://github.com/google/cel-spec
class CustomLevel {
  /// A Cloud CEL expression evaluating to a boolean.
  final Expr expr;

  /// Creates a new [CustomLevel].
  /// [expr] A Cloud CEL expression evaluating to a boolean.
  CustomLevel({required this.expr});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'expr': expr.toMap()};
  }

  factory CustomLevel.fromMap(Map<String, dynamic> map) {
    return CustomLevel(
      expr: Expr.fromMap((map['expr'] as Map).cast<String, dynamic>()),
    );
  }
}
