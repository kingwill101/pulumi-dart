// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FilterFilterCriteriaResourceTag {
  /// (Required) The comparison operator. Valid values: `EQUALS`.
  final pulumi.Input<String> comparison;
  /// (Required) The key to filter on.
  final pulumi.Input<String> key;
  /// (Required) The value to filter on.
  final pulumi.Input<String> value;

  /// Creates a new [FilterFilterCriteriaResourceTag].
  /// [comparison] (Required) The comparison operator. Valid values: `EQUALS`.
  /// [key] (Required) The key to filter on.
  /// [value] (Required) The value to filter on.
  FilterFilterCriteriaResourceTag({
    required this.comparison,
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': comparison,
      'key': key,
      'value': value,
    };
  }

  factory FilterFilterCriteriaResourceTag.fromMap(Map<String, dynamic> map) {
    return FilterFilterCriteriaResourceTag(
      comparison: pulumi.Input.fromValue(map['comparison'] as String),
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

