// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'stack_trace_element_response2.dart';

/// A collection of stack elements (frames) where an error occurred.
class StackTraceResponse3 {
  /// An array of stack elements.
  final List<StackTraceElementResponse2> elements;

  StackTraceResponse3({
    required this.elements,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['elements'] =
        Input.encodeList<StackTraceElementResponse2, Map<String, dynamic>>(
            elements, (value) => value.toMap());
    return map;
  }

  factory StackTraceResponse3.fromMap(Map<String, dynamic> map) {
    return StackTraceResponse3(
      elements: Input.decodeList<StackTraceElementResponse2>(
          map['elements'],
          (value) => StackTraceElementResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
