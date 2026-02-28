// ignore_for_file: unused_element, unnecessary_cast

class FilterFilterCriteriaResourceTag {
  /// (Required) The comparison operator. Valid values: `EQUALS`.
  final String comparison;

  /// (Required) The key to filter on.
  final String key;

  /// (Required) The value to filter on.
  final String value;

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
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory FilterFilterCriteriaResourceTag.fromMap(Map<String, dynamic> map) {
    return FilterFilterCriteriaResourceTag(
      comparison: map['comparison'] as String,
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
