// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_action_response.dart';

/// Task Option Properties
class TaskOptionResponse {
  /// Parallel worker numbers of the tasks
  final pulumi.Input<int?>? concurrency;
  /// Error action for the tasks
  final pulumi.Input<ErrorActionResponse?>? errorAction;

  /// Creates a new [TaskOptionResponse].
  /// [concurrency] Parallel worker numbers of the tasks
  /// [errorAction] Error action for the tasks
  TaskOptionResponse({
    pulumi.Input<int?>? concurrency,
    this.errorAction,
  }) : concurrency = concurrency ?? pulumi.Input.fromValue(1);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'concurrency': ?concurrency,
      'errorAction': ?pulumi.Input.mapOptionalInputValue<ErrorActionResponse, Map<String, dynamic>>(errorAction, (value) => value.toMap()),
    };
  }

  factory TaskOptionResponse.fromMap(Map<String, dynamic> map) {
    return TaskOptionResponse(
      concurrency: (() { final guardedValue = map['concurrency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      errorAction: (() { final guardedValue = map['errorAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErrorActionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
