// ignore_for_file: unused_element, unnecessary_cast

/// A configuration for running an Apache PySpark (https://spark.apache.org/docs/latest/api/python/getting_started/quickstart.html) batch workload.
class PySparkBatch {
  /// Optional. HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  final List<String>? archiveUris;

  /// Optional. The arguments to pass to the driver. Do not include arguments that can be set as batch properties, such as --conf, since a collision can occur that causes an incorrect batch submission.
  final List<String>? args;

  /// Optional. HCFS URIs of files to be placed in the working directory of each executor.
  final List<String>? fileUris;

  /// Optional. HCFS URIs of jar files to add to the classpath of the Spark driver and tasks.
  final List<String>? jarFileUris;

  /// The HCFS URI of the main Python file to use as the Spark driver. Must be a .py file.
  final String mainPythonFileUri;

  /// Optional. HCFS file URIs of Python files to pass to the PySpark framework. Supported file types: .py, .egg, and .zip.
  final List<String>? pythonFileUris;

  PySparkBatch({
    this.archiveUris,
    this.args,
    this.fileUris,
    this.jarFileUris,
    required this.mainPythonFileUri,
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
    map['mainPythonFileUri'] = mainPythonFileUri;
    final pythonFileUrisValue = pythonFileUris;
    if (pythonFileUrisValue != null) {
      map['pythonFileUris'] = pythonFileUrisValue;
    }
    return map;
  }

  factory PySparkBatch.fromMap(Map<String, dynamic> map) {
    return PySparkBatch(
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
      mainPythonFileUri: map['mainPythonFileUri'] as String,
      pythonFileUris: map['pythonFileUris'] == null
          ? null
          : (map['pythonFileUris'] as List).cast<String>(),
    );
  }
}
