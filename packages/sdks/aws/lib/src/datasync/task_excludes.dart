// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TaskExcludes {
  /// The type of filter rule to apply. Valid values: `SIMPLE_PATTERN`.
  final pulumi.Input<String?>? filterType;
  /// A single filter string that consists of the patterns to exclude. The patterns are delimited by "|" (that is, a pipe), for example: `/folder1|/folder2`
  final pulumi.Input<String?>? value;

  /// Creates a new [TaskExcludes].
  /// [filterType] The type of filter rule to apply. Valid values: `SIMPLE_PATTERN`.
  /// [value] A single filter string that consists of the patterns to exclude. The patterns are delimited by "|" (that is, a pipe), for example: `/folder1|/folder2`
  const TaskExcludes({
    this.filterType,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterType': ?filterType,
      'value': ?value,
    };
  }

  factory TaskExcludes.fromMap(Map<String, dynamic> map) {
    return TaskExcludes(
      filterType: (() { final guardedValue = map['filterType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
