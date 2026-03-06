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
  const OptionalLogGroup({
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
      args: (() { final guardedValue = map['args']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LogGroup.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      existing: (() { final guardedValue = map['existing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExistingLogGroup.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

