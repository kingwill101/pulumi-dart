// ignore_for_file: unused_element, unnecessary_cast

class TaskExcludes {
  /// The type of filter rule to apply. Valid values: `SIMPLE_PATTERN`.
  final String? filterType;

  /// A single filter string that consists of the patterns to exclude. The patterns are delimited by "|" (that is, a pipe), for example: `/folder1|/folder2`
  final String? value;

  TaskExcludes({
    this.filterType,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filterTypeValue = filterType;
    if (filterTypeValue != null) {
      map['filterType'] = filterTypeValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory TaskExcludes.fromMap(Map<String, dynamic> map) {
    return TaskExcludes(
      filterType:
          map['filterType'] == null ? null : map['filterType'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
