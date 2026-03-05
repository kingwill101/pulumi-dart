// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SparkJobPythonEntryResponse {
  /// [Required] Relative python file path for job entry point.
  final pulumi.Input<String> file;
  /// Expected value is 'SparkJobPythonEntry'.
  final pulumi.Input<String> sparkJobEntryType;

  /// Creates a new [SparkJobPythonEntryResponse].
  /// [file] [Required] Relative python file path for job entry point.
  /// [sparkJobEntryType] Expected value is 'SparkJobPythonEntry'.
  SparkJobPythonEntryResponse({
    required this.file,
    required this.sparkJobEntryType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'file': file,
      'sparkJobEntryType': sparkJobEntryType,
    };
  }

  factory SparkJobPythonEntryResponse.fromMap(Map<String, dynamic> map) {
    return SparkJobPythonEntryResponse(
      file: pulumi.Input.fromValue(map['file'] as String),
      sparkJobEntryType: pulumi.Input.fromValue(map['sparkJobEntryType'] as String),
    );
  }
}

