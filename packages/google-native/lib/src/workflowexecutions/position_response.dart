// ignore_for_file: unused_element, unnecessary_cast

/// Position contains source position information about the stack trace element such as line number, column number and length of the code block in bytes.
class PositionResponse {
  /// The source code column position (of the line) the current instruction was generated from.
  final String column;

  /// The number of bytes of source code making up this stack trace element.
  final String length;

  /// The source code line number the current instruction was generated from.
  final String line;

  /// Creates a new [PositionResponse].
  /// [column] The source code column position (of the line) the current instruction was generated from.
  /// [length] The number of bytes of source code making up this stack trace element.
  /// [line] The source code line number the current instruction was generated from.
  PositionResponse({
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

  factory PositionResponse.fromMap(Map<String, dynamic> map) {
    return PositionResponse(
      column: map['column'] as String,
      length: map['length'] as String,
      line: map['line'] as String,
    );
  }
}
