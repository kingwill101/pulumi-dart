// ignore_for_file: unused_element, unnecessary_cast

class ScriptStackFrameResponse {
  /// One-based end column.
  final int endColumn;

  /// One-based end line.
  final int endLine;

  /// Name of the active procedure, empty if in a top-level script.
  final String procedureId;

  /// One-based start column.
  final int startColumn;

  /// One-based start line.
  final int startLine;

  /// Text of the current statement/expression.
  final String text;

  ScriptStackFrameResponse({
    required this.endColumn,
    required this.endLine,
    required this.procedureId,
    required this.startColumn,
    required this.startLine,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endColumn'] = endColumn;
    map['endLine'] = endLine;
    map['procedureId'] = procedureId;
    map['startColumn'] = startColumn;
    map['startLine'] = startLine;
    map['text'] = text;
    return map;
  }

  factory ScriptStackFrameResponse.fromMap(Map<String, dynamic> map) {
    return ScriptStackFrameResponse(
      endColumn: map['endColumn'] as int,
      endLine: map['endLine'] as int,
      procedureId: map['procedureId'] as String,
      startColumn: map['startColumn'] as int,
      startLine: map['startLine'] as int,
      text: map['text'] as String,
    );
  }
}
