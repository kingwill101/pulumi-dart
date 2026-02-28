// ignore_for_file: unused_element, unnecessary_cast

class BatchPysparkBatch {
  /// HCFS URIs of archives to be extracted into the working directory of each executor.
  /// Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  final List<String>? archiveUris;

  /// The arguments to pass to the driver. Do not include arguments that can be set as batch
  /// properties, such as --conf, since a collision can occur that causes an incorrect batch submission.
  final List<String>? args;

  /// HCFS URIs of files to be placed in the working directory of each executor.
  final List<String>? fileUris;

  /// HCFS URIs of jar files to add to the classpath of the Spark driver and tasks.
  final List<String>? jarFileUris;

  /// The HCFS URI of the main Python file to use as the Spark driver. Must be a .py file.
  final String? mainPythonFileUri;

  /// HCFS file URIs of Python files to pass to the PySpark framework.
  /// Supported file types: .py, .egg, and .zip.
  final List<String>? pythonFileUris;

  /// Creates a new [BatchPysparkBatch].
  /// [archiveUris] HCFS URIs of archives to be extracted into the working directory of each executor.
  /// [args] The arguments to pass to the driver. Do not include arguments that can be set as batch
  /// [fileUris] HCFS URIs of files to be placed in the working directory of each executor.
  /// [jarFileUris] HCFS URIs of jar files to add to the classpath of the Spark driver and tasks.
  /// [mainPythonFileUri] The HCFS URI of the main Python file to use as the Spark driver. Must be a .py file.
  /// [pythonFileUris] HCFS file URIs of Python files to pass to the PySpark framework.
  BatchPysparkBatch({
    this.archiveUris,
    this.args,
    this.fileUris,
    this.jarFileUris,
    this.mainPythonFileUri,
    this.pythonFileUris,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final archiveUrisValue = archiveUris;
    if (archiveUrisValue != null) {
      map['archiveUris'] = archiveUrisValue;
    }
    final argsValue = args;
    if (argsValue != null) {
      map['args'] = argsValue;
    }
    final fileUrisValue = fileUris;
    if (fileUrisValue != null) {
      map['fileUris'] = fileUrisValue;
    }
    final jarFileUrisValue = jarFileUris;
    if (jarFileUrisValue != null) {
      map['jarFileUris'] = jarFileUrisValue;
    }
    final mainPythonFileUriValue = mainPythonFileUri;
    if (mainPythonFileUriValue != null) {
      map['mainPythonFileUri'] = mainPythonFileUriValue;
    }
    final pythonFileUrisValue = pythonFileUris;
    if (pythonFileUrisValue != null) {
      map['pythonFileUris'] = pythonFileUrisValue;
    }
    return map;
  }

  factory BatchPysparkBatch.fromMap(Map<String, dynamic> map) {
    return BatchPysparkBatch(
      archiveUris: map['archiveUris'] == null
          ? null
          : (map['archiveUris'] as List).cast<String>(),
      args: map['args'] == null ? null : (map['args'] as List).cast<String>(),
      fileUris: map['fileUris'] == null
          ? null
          : (map['fileUris'] as List).cast<String>(),
      jarFileUris: map['jarFileUris'] == null
          ? null
          : (map['jarFileUris'] as List).cast<String>(),
      mainPythonFileUri: map['mainPythonFileUri'] == null
          ? null
          : map['mainPythonFileUri'] as String,
      pythonFileUris: map['pythonFileUris'] == null
          ? null
          : (map['pythonFileUris'] as List).cast<String>(),
    );
  }
}
