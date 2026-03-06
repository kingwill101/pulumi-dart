// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The KPI alias.
class KpiAliasResponse {
  /// KPI alias name.
  final pulumi.Input<String> aliasName;
  /// The expression.
  final pulumi.Input<String> expression;

  /// Creates a new [KpiAliasResponse].
  /// [aliasName] KPI alias name.
  /// [expression] The expression.
  const KpiAliasResponse({
    required this.aliasName,
    required this.expression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliasName': aliasName,
      'expression': expression,
    };
  }

  factory KpiAliasResponse.fromMap(Map<String, dynamic> map) {
    return KpiAliasResponse(
      aliasName: pulumi.Input.fromValue(map['aliasName'] as String),
      expression: pulumi.Input.fromValue(map['expression'] as String),
    );
  }
}

