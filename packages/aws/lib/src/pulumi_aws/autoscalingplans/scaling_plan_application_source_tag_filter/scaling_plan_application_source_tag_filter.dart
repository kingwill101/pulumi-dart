// ignore_for_file: unused_element, unnecessary_cast

class ScalingPlanApplicationSourceTagFilter {
  /// Tag key.
  final String key;

  /// Tag values.
  final List<String>? values;

  ScalingPlanApplicationSourceTagFilter({
    required this.key,
    this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    final valuesValue = values;
    if (valuesValue != null) {
      map['values'] = valuesValue;
    }
    return map;
  }

  factory ScalingPlanApplicationSourceTagFilter.fromMap(
      Map<String, dynamic> map) {
    return ScalingPlanApplicationSourceTagFilter(
      key: map['key'] as String,
      values:
          map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}
