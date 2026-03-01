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

  /// Creates a new [OptionalLogGroup].
  /// [args] Arguments to use instead of the default values during creation.
  /// [enable] Enable creation of the log group.
  /// [existing] Identity of an existing log group to use. Cannot be used in combination with `args` or `opts`.
  OptionalLogGroup({this.args, this.enable, this.existing});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args == null ? null : args!.toMap(),
      'enable': ?enable,
      'existing': ?existing == null ? null : existing!.toMap(),
    };
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
              (map['existing'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
