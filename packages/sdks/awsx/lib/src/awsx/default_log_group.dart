// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'existing_log_group.dart';
import 'log_group.dart';

/// Log group with default setup unless explicitly skipped.
class DefaultLogGroup {
  /// Arguments to use instead of the default values during creation.
  final pulumi.Input<LogGroup>? args;
  /// Identity of an existing log group to use. Cannot be used in combination with `args` or `opts`.
  final pulumi.Input<ExistingLogGroup>? existing;
  /// Skip creation of the log group.
  final pulumi.Input<bool>? skip;

  /// Creates a new [DefaultLogGroup].
  /// [args] Arguments to use instead of the default values during creation.
  /// [existing] Identity of an existing log group to use. Cannot be used in combination with `args` or `opts`.
  /// [skip] Skip creation of the log group.
  DefaultLogGroup({
    this.args,
    this.existing,
    this.skip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?pulumi.Input.mapOptionalInputValue<LogGroup, Map<String, dynamic>>(args, (value) => value.toMap()),
      'existing': ?pulumi.Input.mapOptionalInputValue<ExistingLogGroup, Map<String, dynamic>>(existing, (value) => value.toMap()),
      'skip': ?skip,
    };
  }

  factory DefaultLogGroup.fromMap(Map<String, dynamic> map) {
    return DefaultLogGroup(
      args: map['args'] == null ? null : (LogGroup.fromMap((map['args']! as Map).cast<String, dynamic>())).input(),
      existing: map['existing'] == null ? null : (ExistingLogGroup.fromMap((map['existing']! as Map).cast<String, dynamic>())).input(),
      skip: map['skip'] == null ? null : (map['skip']! as bool).input(),
    );
  }
}

