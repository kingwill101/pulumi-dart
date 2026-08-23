// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_action.dart';

/// Task Option Properties
class TaskOption {
  /// Parallel worker numbers of the tasks
  final pulumi.Input<int>? concurrency;
  /// Error action for the tasks
  final pulumi.Input<ErrorAction>? errorAction;

  /// Creates a new [TaskOption].
  /// [concurrency] Parallel worker numbers of the tasks
  /// [errorAction] Error action for the tasks
  const TaskOption({
    this.concurrency,
    this.errorAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'concurrency': ?concurrency,
      'errorAction': ?pulumi.Input.mapOptionalInputValue<ErrorAction, Map<String, dynamic>>(errorAction, (value) => value.toMap()),
    };
  }

  factory TaskOption.fromMap(Map<String, dynamic> map) {
    return TaskOption(
      concurrency: (() { final guardedValue = map['concurrency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      errorAction: (() { final guardedValue = map['errorAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErrorAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
