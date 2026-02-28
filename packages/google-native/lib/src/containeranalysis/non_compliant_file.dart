// ignore_for_file: unused_element, unnecessary_cast

/// Details about files that caused a compliance check to fail. display_command is a single command that can be used to display a list of non compliant files. When there is no such command, we can also iterate a list of non compliant file using 'path'.
class NonCompliantFile {
  /// Command to display the non-compliant files.
  final String? displayCommand;

  /// Empty if `display_command` is set.
  final String? path;

  /// Explains why a file is non compliant for a CIS check.
  final String? reason;

  /// Creates a new [NonCompliantFile].
  /// [displayCommand] Command to display the non-compliant files.
  /// [path] Empty if `display_command` is set.
  /// [reason] Explains why a file is non compliant for a CIS check.
  NonCompliantFile({
    this.displayCommand,
    this.path,
    this.reason,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayCommandValue = displayCommand;
    if (displayCommandValue != null) {
      map['displayCommand'] = displayCommandValue;
    }
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue;
    }
    final reasonValue = reason;
    if (reasonValue != null) {
      map['reason'] = reasonValue;
    }
    return map;
  }

  factory NonCompliantFile.fromMap(Map<String, dynamic> map) {
    return NonCompliantFile(
      displayCommand: map['displayCommand'] == null
          ? null
          : map['displayCommand'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      reason: map['reason'] == null ? null : map['reason'] as String,
    );
  }
}
