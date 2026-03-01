// ignore_for_file: unused_element, unnecessary_cast

import 'error_action_response.dart';

/// Task Option Properties
class TaskOptionResponse {
  /// Parallel worker numbers of the tasks
  final int? concurrency;
  /// Error action for the tasks
  final ErrorActionResponse? errorAction;

  /// Creates a new [TaskOptionResponse].
  /// [concurrency] Parallel worker numbers of the tasks
  /// [errorAction] Error action for the tasks
  TaskOptionResponse({
    this.concurrency,
    this.errorAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'concurrency': ?concurrency,
      'errorAction': ?errorAction == null ? null : errorAction!.toMap(),
    };
  }

  factory TaskOptionResponse.fromMap(Map<String, dynamic> map) {
    return TaskOptionResponse(
      concurrency: map['concurrency'] == null ? null : map['concurrency'] as int,
      errorAction: map['errorAction'] == null ? null : ErrorActionResponse.fromMap((map['errorAction'] as Map).cast<String, dynamic>()),
    );
  }
}

