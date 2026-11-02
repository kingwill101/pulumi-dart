// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessGrantScopedActionResourceRowScopeGroupRowScope {
  /// Field the filter applies to, for example `serviceName`. Must be 1-256 characters.
  final pulumi.Input<String> field;
  /// Match operator. Valid value is `IN`.
  final pulumi.Input<String> operator;
  /// Set of 1-100 values the field is matched against, each 1-256 characters. CloudWatch Omni stores the values sorted and without duplicates.
  final pulumi.Input<List<String>> values;

  /// Creates a new [AccessGrantScopedActionResourceRowScopeGroupRowScope].
  /// [field] Field the filter applies to, for example `serviceName`. Must be 1-256 characters.
  /// [operator] Match operator. Valid value is `IN`.
  /// [values] Set of 1-100 values the field is matched against, each 1-256 characters. CloudWatch Omni stores the values sorted and without duplicates.
  const AccessGrantScopedActionResourceRowScopeGroupRowScope({
    required this.field,
    required this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'field': field,
      'operator': operator,
      'values': values,
    };
  }

  factory AccessGrantScopedActionResourceRowScopeGroupRowScope.fromMap(Map<String, dynamic> map) {
    return AccessGrantScopedActionResourceRowScopeGroupRowScope(
      field: pulumi.Input.fromValue(map['field'] as String),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
