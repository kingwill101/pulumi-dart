// ignore_for_file: unused_element, unnecessary_cast

import 'position_response2.dart';

/// A single stack element (frame) where an error occurred.
class StackTraceElementResponse2 {
  /// The source position information of the stack trace element.
  final PositionResponse2 position;

  /// The routine where the error occurred.
  final String routine;

  /// The step the error occurred at.
  final String step;

  StackTraceElementResponse2({
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

  factory StackTraceElementResponse2.fromMap(Map<String, dynamic> map) {
    return StackTraceElementResponse2(
      position: PositionResponse2.fromMap(
          (map['position'] as Map).cast<String, dynamic>()),
      routine: map['routine'] as String,
      step: map['step'] as String,
    );
  }
}
