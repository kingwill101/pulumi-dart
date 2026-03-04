// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FilterFilterCriteriaEcrImageRepositoryName {
  /// (Required) The comparison operator. Valid values: `EQUALS`.
  final pulumi.Input<String> comparison;

  /// (Required) The value to filter on.
  final pulumi.Input<String> value;

  /// Creates a new [FilterFilterCriteriaEcrImageRepositoryName].
  /// [comparison] (Required) The comparison operator. Valid values: `EQUALS`.
  /// [value] (Required) The value to filter on.
  FilterFilterCriteriaEcrImageRepositoryName({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'comparison': comparison, 'value': value};
  }

  factory FilterFilterCriteriaEcrImageRepositoryName.fromMap(
    Map<String, dynamic> map,
  ) {
    return FilterFilterCriteriaEcrImageRepositoryName(
      comparison: pulumi.Input.fromValue(map['comparison'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
