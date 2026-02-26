// ignore_for_file: unused_element, unnecessary_cast

import 'existing_log_group.dart';
import 'log_group.dart';

/// Log group which is only created if enabled.
class OptionalLogGroup {
  /// Arguments to use instead of the default values during creation.
  final LogGroup? args;

  /// Enable creation of the log group.
  final bool? enable;

  /// Identity of an existing log group to use. Cannot be used in combination with `args` or `opts`.
  final ExistingLogGroup? existing;

  OptionalLogGroup({
    this.args,
    this.enable,
    this.existing,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final argsValue = args;
    if (argsValue != null) {
      map['args'] = argsValue.toMap();
    }
    final enableValue = enable;
    if (enableValue != null) {
      map['enable'] = enableValue;
    }
    final existingValue = existing;
    if (existingValue != null) {
      map['existing'] = existingValue.toMap();
    }
    return map;
  }

  factory OptionalLogGroup.fromMap(Map<String, dynamic> map) {
    return OptionalLogGroup(
      args: map['args'] == null
          ? null
          : LogGroup.fromMap((map['args'] as Map).cast<String, dynamic>()),
      enable: map['enable'] == null ? null : map['enable'] as bool,
      existing: map['existing'] == null
          ? null
          : ExistingLogGroup.fromMap(
              (map['existing'] as Map).cast<String, dynamic>()),
    );
  }
}
