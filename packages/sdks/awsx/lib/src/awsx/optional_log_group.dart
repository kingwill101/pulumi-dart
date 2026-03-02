// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'existing_log_group.dart';
import 'log_group.dart';

/// Log group which is only created if enabled.
class OptionalLogGroup {
  /// Arguments to use instead of the default values during creation.
  final pulumi.Input<LogGroup>? args;
  /// Enable creation of the log group.
  final pulumi.Input<bool>? enable;
  /// Identity of an existing log group to use. Cannot be used in combination with `args` or `opts`.
  final pulumi.Input<ExistingLogGroup>? existing;

  /// Creates a new [OptionalLogGroup].
  /// [args] Arguments to use instead of the default values during creation.
  /// [enable] Enable creation of the log group.
  /// [existing] Identity of an existing log group to use. Cannot be used in combination with `args` or `opts`.
  OptionalLogGroup({
    this.args,
    this.enable,
    this.existing,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?pulumi.Input.mapOptionalInputValue<LogGroup, Map<String, dynamic>>(args, (value) => value.toMap()),
      'enable': ?enable,
      'existing': ?pulumi.Input.mapOptionalInputValue<ExistingLogGroup, Map<String, dynamic>>(existing, (value) => value.toMap()),
    };
  }

  factory OptionalLogGroup.fromMap(Map<String, dynamic> map) {
    return OptionalLogGroup(
      args: map['args'] == null ? null : (LogGroup.fromMap((map['args']! as Map).cast<String, dynamic>())).input(),
      enable: map['enable'] == null ? null : (map['enable']! as bool).input(),
      existing: map['existing'] == null ? null : (ExistingLogGroup.fromMap((map['existing']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

