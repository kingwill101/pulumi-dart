// ignore_for_file: unused_element, unnecessary_cast

import 'error_action.dart';

/// Task Option Properties
class TaskOption {
  /// Parallel worker numbers of the tasks
  final int? concurrency;
  /// Error action for the tasks
  final ErrorAction? errorAction;

  /// Creates a new [TaskOption].
  /// [concurrency] Parallel worker numbers of the tasks
  /// [errorAction] Error action for the tasks
  TaskOption({
    this.concurrency,
    this.errorAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'concurrency': ?concurrency,
      'errorAction': ?errorAction == null ? null : errorAction!.toMap(),
    };
  }

  factory TaskOption.fromMap(Map<String, dynamic> map) {
    return TaskOption(
      concurrency: map['concurrency'] == null ? null : map['concurrency'] as int,
      errorAction: map['errorAction'] == null ? null : ErrorAction.fromMap((map['errorAction'] as Map).cast<String, dynamic>()),
    );
  }
}

