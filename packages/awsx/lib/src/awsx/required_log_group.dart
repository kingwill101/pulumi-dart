// ignore_for_file: unused_element, unnecessary_cast

import 'existing_log_group.dart';
import 'log_group.dart';

/// Log group with default setup.
class RequiredLogGroup {
  /// Arguments to use instead of the default values during creation.
  final LogGroup? args;

  /// Identity of an existing log group to use. Cannot be used in combination with `args` or `opts`.
  final ExistingLogGroup? existing;

  /// Creates a new [RequiredLogGroup].
  /// [args] Arguments to use instead of the default values during creation.
  /// [existing] Identity of an existing log group to use. Cannot be used in combination with `args` or `opts`.
  RequiredLogGroup({this.args, this.existing});

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
    return map;
  }

  factory RequiredLogGroup.fromMap(Map<String, dynamic> map) {
    return RequiredLogGroup(
      args: map['args'] == null
          ? null
          : LogGroup.fromMap((map['args'] as Map).cast<String, dynamic>()),
      existing: map['existing'] == null
          ? null
          : ExistingLogGroup.fromMap(
              (map['existing'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
