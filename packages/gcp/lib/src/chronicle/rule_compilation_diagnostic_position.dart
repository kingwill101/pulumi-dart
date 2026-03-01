// ignore_for_file: unused_element, unnecessary_cast


class RuleCompilationDiagnosticPosition {
  /// (Output)
  /// Output only. End column number, beginning at 1.
  final int? endColumn;
  /// (Output)
  /// Output only. End line number, beginning at 1.
  final int? endLine;
  /// (Output)
  /// Output only. Start column number, beginning at 1.
  final int? startColumn;
  /// (Output)
  /// Output only. Start line number, beginning at 1.
  final int? startLine;

  /// Creates a new [RuleCompilationDiagnosticPosition].
  /// [endColumn] (Output)
  /// [endLine] (Output)
  /// [startColumn] (Output)
  /// [startLine] (Output)
  RuleCompilationDiagnosticPosition({
    this.endColumn,
    this.endLine,
    this.startColumn,
    this.startLine,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endColumn': ?endColumn,
      'endLine': ?endLine,
      'startColumn': ?startColumn,
      'startLine': ?startLine,
    };
  }

  factory RuleCompilationDiagnosticPosition.fromMap(Map<String, dynamic> map) {
    return RuleCompilationDiagnosticPosition(
      endColumn: map['endColumn'] == null ? null : map['endColumn'] as int,
      endLine: map['endLine'] == null ? null : map['endLine'] as int,
      startColumn: map['startColumn'] == null ? null : map['startColumn'] as int,
      startLine: map['startLine'] == null ? null : map['startLine'] as int,
    );
  }
}

