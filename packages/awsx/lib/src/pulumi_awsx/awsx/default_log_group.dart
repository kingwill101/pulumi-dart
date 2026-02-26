// ignore_for_file: unused_element, unnecessary_cast

import 'existing_log_group.dart';
import 'log_group.dart';

/// Log group with default setup unless explicitly skipped.
class DefaultLogGroup {
  /// Arguments to use instead of the default values during creation.
  final LogGroup? args;

  /// Identity of an existing log group to use. Cannot be used in combination with `args` or `opts`.
  final ExistingLogGroup? existing;

  /// Skip creation of the log group.
  final bool? skip;

  DefaultLogGroup({
    this.args,
    this.existing,
    this.skip,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final argsValue = args;
    if (argsValue != null) {
      map['args'] = argsValue.toMap();
    }
    final existingValue = existing;
    if (existingValue != null) {
      map['existing'] = existingValue.toMap();
    }
    final skipValue = skip;
    if (skipValue != null) {
      map['skip'] = skipValue;
    }
    return map;
  }

  factory DefaultLogGroup.fromMap(Map<String, dynamic> map) {
    return DefaultLogGroup(
      args: map['args'] == null
          ? null
          : LogGroup.fromMap((map['args'] as Map).cast<String, dynamic>()),
      existing: map['existing'] == null
          ? null
          : ExistingLogGroup.fromMap(
              (map['existing'] as Map).cast<String, dynamic>()),
      skip: map['skip'] == null ? null : map['skip'] as bool,
    );
  }
}
