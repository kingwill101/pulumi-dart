// ignore_for_file: unused_element, unnecessary_cast

/// Details about files that caused a compliance check to fail.
class NonCompliantFileResponseContaineranalysisV1alpha1 {
  /// Command to display the non-compliant files.
  final String displayCommand;

  /// display_command is a single command that can be used to display a list of non compliant files. When there is no such command, we can also iterate a list of non compliant file using 'path'. Empty if `display_command` is set.
  final String path;

  /// Explains why a file is non compliant for a CIS check.
  final String reason;

  NonCompliantFileResponseContaineranalysisV1alpha1({
    required this.displayCommand,
    required this.path,
    required this.reason,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayCommand'] = displayCommand;
    map['path'] = path;
    map['reason'] = reason;
    return map;
  }

  factory NonCompliantFileResponseContaineranalysisV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return NonCompliantFileResponseContaineranalysisV1alpha1(
      displayCommand: map['displayCommand'] as String,
      path: map['path'] as String,
      reason: map['reason'] as String,
    );
  }
}
