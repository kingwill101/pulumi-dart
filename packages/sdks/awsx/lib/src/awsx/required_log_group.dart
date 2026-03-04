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
  RequiredLogGroup({this.args, this.existing});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args':
          ?pulumi.Input.mapOptionalInputValue<LogGroup, Map<String, dynamic>>(
            args,
            (value) => value.toMap(),
          ),
      'existing':
          ?pulumi.Input.mapOptionalInputValue<
            ExistingLogGroup,
            Map<String, dynamic>
          >(existing, (value) => value.toMap()),
    };
  }

  factory RequiredLogGroup.fromMap(Map<String, dynamic> map) {
    return RequiredLogGroup(
      args: (() {
        final guardedValue = map['args'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LogGroup.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      existing: (() {
        final guardedValue = map['existing'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ExistingLogGroup.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
