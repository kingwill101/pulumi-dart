// ignore_for_file: unused_element, unnecessary_cast

import 'position_response.dart';

/// A single stack element (frame) where an error occurred.
class StackTraceElementResponse {
  /// The source position information of the stack trace element.
  final PositionResponse position;

  /// The routine where the error occurred.
  final String routine;

  /// The step the error occurred at.
  final String step;

  /// Creates a new [StackTraceElementResponse].
  /// [position] The source position information of the stack trace element.
  /// [routine] The routine where the error occurred.
  /// [step] The step the error occurred at.
  StackTraceElementResponse({
    required this.position,
    required this.routine,
    required this.step,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['position'] = position.toMap();
    map['routine'] = routine;
    map['step'] = step;
    return map;
  }

  factory StackTraceElementResponse.fromMap(Map<String, dynamic> map) {
    return StackTraceElementResponse(
      position: PositionResponse.fromMap(
          (map['position'] as Map).cast<String, dynamic>()),
      routine: map['routine'] as String,
      step: map['step'] as String,
    );
  }
}
