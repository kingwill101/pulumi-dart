// ignore_for_file: unused_element, unnecessary_cast

class DeploymentGroupOnPremisesInstanceTagFilter {
  /// The key of the tag filter.
  final String? key;

  /// The type of the tag filter, either `KEY_ONLY`, `VALUE_ONLY`, or `KEY_AND_VALUE`.
  final String? type;

  /// The value of the tag filter.
  final String? value;

  DeploymentGroupOnPremisesInstanceTagFilter({
    this.key,
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final keyValue = key;
    if (keyValue != null) {
      map['key'] = keyValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory DeploymentGroupOnPremisesInstanceTagFilter.fromMap(
      Map<String, dynamic> map) {
    return DeploymentGroupOnPremisesInstanceTagFilter(
      key: map['key'] == null ? null : map['key'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
