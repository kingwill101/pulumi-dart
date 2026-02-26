// ignore_for_file: unused_element, unnecessary_cast

class GetTagsFilterOrTags {
  final String? key;
  final List<String>? matchOptions;
  final List<String>? values;

  GetTagsFilterOrTags({
    this.key,
    this.matchOptions,
    this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final keyValue = key;
    if (keyValue != null) {
      map['key'] = keyValue;
    }
    final matchOptionsValue = matchOptions;
    if (matchOptionsValue != null) {
      map['matchOptions'] = matchOptionsValue;
    }
    final valuesValue = values;
    if (valuesValue != null) {
      map['values'] = valuesValue;
    }
    return map;
  }

  factory GetTagsFilterOrTags.fromMap(Map<String, dynamic> map) {
    return GetTagsFilterOrTags(
      key: map['key'] == null ? null : map['key'] as String,
      matchOptions: map['matchOptions'] == null
          ? null
          : (map['matchOptions'] as List).cast<String>(),
      values:
          map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}
