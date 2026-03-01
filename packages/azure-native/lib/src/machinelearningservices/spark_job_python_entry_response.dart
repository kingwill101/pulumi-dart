// ignore_for_file: unused_element, unnecessary_cast


class SparkJobPythonEntryResponse {
  /// [Required] Relative python file path for job entry point.
  final String file;
  /// Expected value is 'SparkJobPythonEntry'.
  final String sparkJobEntryType;

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
      file: map['file'] as String,
      sparkJobEntryType: map['sparkJobEntryType'] as String,
    );
  }
}

