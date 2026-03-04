// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FilterFilterCriteriaSeverity {
  /// (Required) The comparison operator. Valid values: `EQUALS`.
  final pulumi.Input<String> comparison;

  /// (Required) The value to filter on.
  final pulumi.Input<String> value;

  /// Creates a new [FilterFilterCriteriaSeverity].
  /// [comparison] (Required) The comparison operator. Valid values: `EQUALS`.
  /// [value] (Required) The value to filter on.
  FilterFilterCriteriaSeverity({required this.comparison, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'comparison': comparison, 'value': value};
  }

  factory FilterFilterCriteriaSeverity.fromMap(Map<String, dynamic> map) {
    return FilterFilterCriteriaSeverity(
      comparison: pulumi.Input.fromValue(map['comparison'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
