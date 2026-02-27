// ignore_for_file: unused_element, unnecessary_cast

/// Position contains source position information about the stack trace element such as line number, column number and length of the code block in bytes.
class PositionResponseWorkflowexecutionsV1beta {
  /// The source code column position (of the line) the current instruction was generated from.
  final String column;

  /// The number of bytes of source code making up this stack trace element.
  final String length;

  /// The source code line number the current instruction was generated from.
  final String line;

  PositionResponseWorkflowexecutionsV1beta({
    required this.column,
    required this.length,
    required this.line,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['column'] = column;
    map['length'] = length;
    map['line'] = line;
    return map;
  }

  factory PositionResponseWorkflowexecutionsV1beta.fromMap(
      Map<String, dynamic> map) {
    return PositionResponseWorkflowexecutionsV1beta(
      column: map['column'] as String,
      length: map['length'] as String,
      line: map['line'] as String,
    );
  }
}
