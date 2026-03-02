// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SparkJobPythonEntry {
  /// [Required] Relative python file path for job entry point.
  final pulumi.Input<String> file;
  /// Expected value is 'SparkJobPythonEntry'.
  final pulumi.Input<String> sparkJobEntryType;

  /// Creates a new [SparkJobPythonEntry].
  /// [file] [Required] Relative python file path for job entry point.
  /// [sparkJobEntryType] Expected value is 'SparkJobPythonEntry'.
  SparkJobPythonEntry({
    required this.file,
    required this.sparkJobEntryType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'file': file,
      'sparkJobEntryType': sparkJobEntryType,
    };
  }

  factory SparkJobPythonEntry.fromMap(Map<String, dynamic> map) {
    return SparkJobPythonEntry(
      file: (map['file'] as String).input(),
      sparkJobEntryType: (map['sparkJobEntryType'] as String).input(),
    );
  }
}

