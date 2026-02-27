// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'stack_trace_element_response.dart';

/// A collection of stack elements (frames) where an error occurred.
class StackTraceResponse2 {
  /// An array of stack elements.
  final List<StackTraceElementResponse> elements;

  StackTraceResponse2({
    required this.elements,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['elements'] =
        Input.encodeList<StackTraceElementResponse, Map<String, dynamic>>(
            elements, (value) => value.toMap());
    return map;
  }

  factory StackTraceResponse2.fromMap(Map<String, dynamic> map) {
    return StackTraceResponse2(
      elements: Input.decodeList<StackTraceElementResponse>(
          map['elements'],
          (value) => StackTraceElementResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
