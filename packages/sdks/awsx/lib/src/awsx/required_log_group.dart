// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'existing_log_group.dart';
import 'log_group.dart';

/// Log group with default setup.
class RequiredLogGroup {
  /// Arguments to use instead of the default values during creation.
  final pulumi.Input<LogGroup>? args;
  /// Identity of an existing log group to use. Cannot be used in combination with `args` or `opts`.
  final pulumi.Input<ExistingLogGroup>? existing;

  /// Creates a new [RequiredLogGroup].
  /// [args] Arguments to use instead of the default values during creation.
  /// [existing] Identity of an existing log group to use. Cannot be used in combination with `args` or `opts`.
  RequiredLogGroup({
    this.args,
    this.existing,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?pulumi.Input.mapOptionalInputValue<LogGroup, Map<String, dynamic>>(args, (value) => value.toMap()),
      'existing': ?pulumi.Input.mapOptionalInputValue<ExistingLogGroup, Map<String, dynamic>>(existing, (value) => value.toMap()),
    };
  }

  factory RequiredLogGroup.fromMap(Map<String, dynamic> map) {
    return RequiredLogGroup(
      args: map['args'] == null ? null : (LogGroup.fromMap((map['args'] as Map).cast<String, dynamic>())).input(),
      existing: map['existing'] == null ? null : (ExistingLogGroup.fromMap((map['existing'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

