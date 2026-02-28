// ignore_for_file: unused_element, unnecessary_cast

import 'target_response.dart';

/// An error encountered when attempting to compile a Dataform project.
class CompilationErrorResponse {
  /// The identifier of the action where this error occurred, if available.
  final TargetResponse actionTarget;

  /// The error's top level message.
  final String message;

  /// The path of the file where this error occurred, if available, relative to the project root.
  final String path;

  /// The error's full stack trace.
  final String stack;

  /// Creates a new [CompilationErrorResponse].
  /// [actionTarget] The identifier of the action where this error occurred, if available.
  /// [message] The error's top level message.
  /// [path] The path of the file where this error occurred, if available, relative to the project root.
  /// [stack] The error's full stack trace.
  CompilationErrorResponse({
    required this.actionTarget,
    required this.message,
    required this.path,
    required this.stack,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['actionTarget'] = actionTarget.toMap();
    map['message'] = message;
    map['path'] = path;
    map['stack'] = stack;
    return map;
  }

  factory CompilationErrorResponse.fromMap(Map<String, dynamic> map) {
    return CompilationErrorResponse(
      actionTarget: TargetResponse.fromMap(
          (map['actionTarget'] as Map).cast<String, dynamic>()),
      message: map['message'] as String,
      path: map['path'] as String,
      stack: map['stack'] as String,
    );
  }
}
