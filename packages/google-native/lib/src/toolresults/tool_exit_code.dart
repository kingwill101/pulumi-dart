// ignore_for_file: unused_element, unnecessary_cast

/// Exit code from a tool execution.
class ToolExitCode {
  /// Tool execution exit code. A value of 0 means that the execution was successful. - In response: always set - In create/update request: always set
  final int? number;

  /// Creates a new [ToolExitCode].
  /// [number] Tool execution exit code. A value of 0 means that the execution was successful. - In response: always set - In create/update request: always set
  ToolExitCode({this.number});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'number': ?number};
  }

  factory ToolExitCode.fromMap(Map<String, dynamic> map) {
    return ToolExitCode(
      number: map['number'] == null ? null : map['number'] as int,
    );
  }
}
