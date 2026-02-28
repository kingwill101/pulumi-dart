// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stack_trace_element_response.dart';

/// A collection of stack elements (frames) where an error occurred.
class StackTraceResponse {
  /// An array of stack elements.
  final List<StackTraceElementResponse> elements;

  /// Creates a new [StackTraceResponse].
  /// [elements] An array of stack elements.
  StackTraceResponse({
    required this.elements,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['elements'] = pulumi.Input.encodeList<StackTraceElementResponse,
        Map<String, dynamic>>(elements, (value) => value.toMap());
    return map;
  }

  factory StackTraceResponse.fromMap(Map<String, dynamic> map) {
    return StackTraceResponse(
      elements: pulumi.Input.decodeList<StackTraceElementResponse>(
          map['elements'],
          (value) => StackTraceElementResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
