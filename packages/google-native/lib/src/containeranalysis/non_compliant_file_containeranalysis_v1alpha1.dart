// ignore_for_file: unused_element, unnecessary_cast


/// Details about files that caused a compliance check to fail.
class NonCompliantFileContaineranalysisV1alpha1 {
  /// Command to display the non-compliant files.
  final String? displayCommand;
  /// display_command is a single command that can be used to display a list of non compliant files. When there is no such command, we can also iterate a list of non compliant file using 'path'. Empty if `display_command` is set.
  final String? path;
  /// Explains why a file is non compliant for a CIS check.
  final String? reason;

  /// Creates a new [NonCompliantFileContaineranalysisV1alpha1].
  /// [displayCommand] Command to display the non-compliant files.
  /// [path] display_command is a single command that can be used to display a list of non compliant files. When there is no such command, we can also iterate a list of non compliant file using 'path'. Empty if `display_command` is set.
  /// [reason] Explains why a file is non compliant for a CIS check.
  NonCompliantFileContaineranalysisV1alpha1({
    this.displayCommand,
    this.path,
    this.reason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayCommand': ?displayCommand,
      'path': ?path,
      'reason': ?reason,
    };
  }

  factory NonCompliantFileContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return NonCompliantFileContaineranalysisV1alpha1(
      displayCommand: map['displayCommand'] == null ? null : map['displayCommand'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      reason: map['reason'] == null ? null : map['reason'] as String,
    );
  }
}

