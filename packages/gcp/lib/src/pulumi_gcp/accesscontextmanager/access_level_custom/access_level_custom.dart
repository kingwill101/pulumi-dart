// ignore_for_file: unused_element, unnecessary_cast

import '../access_level_custom_expr/access_level_custom_expr.dart';

class AccessLevelCustom {
  /// Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language.
  /// This page details the objects and attributes that are used to the build the CEL expressions for
  /// custom access levels - https://cloud.google.com/access-context-manager/docs/custom-access-level-spec.
  /// Structure is documented below.
  final AccessLevelCustomExpr expr;

  AccessLevelCustom({
    required this.expr,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['expr'] = expr.toMap();
    return map;
  }

  factory AccessLevelCustom.fromMap(Map<String, dynamic> map) {
    return AccessLevelCustom(
      expr: AccessLevelCustomExpr.fromMap(
          (map['expr'] as Map).cast<String, dynamic>()),
    );
  }
}
