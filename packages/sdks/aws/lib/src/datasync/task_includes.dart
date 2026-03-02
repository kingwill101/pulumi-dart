// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TaskIncludes {
  /// The type of filter rule to apply. Valid values: `SIMPLE_PATTERN`.
  final pulumi.Input<String>? filterType;
  /// A single filter string that consists of the patterns to include. The patterns are delimited by "|" (that is, a pipe), for example: `/folder1|/folder2`
  final pulumi.Input<String>? value;

  /// Creates a new [TaskIncludes].
  /// [filterType] The type of filter rule to apply. Valid values: `SIMPLE_PATTERN`.
  /// [value] A single filter string that consists of the patterns to include. The patterns are delimited by "|" (that is, a pipe), for example: `/folder1|/folder2`
  TaskIncludes({
    this.filterType,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterType': ?filterType,
      'value': ?value,
    };
  }

  factory TaskIncludes.fromMap(Map<String, dynamic> map) {
    return TaskIncludes(
      filterType: map['filterType'] == null ? null : (map['filterType'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

