// ignore_for_file: unused_element, unnecessary_cast

class GdcSparkApplicationPysparkApplicationConfig {
  /// HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  final List<String>? archiveUris;

  /// The arguments to pass to the driver.  Do not include arguments, such as `--conf`, that can be set as job properties, since a collision may occur that causes an incorrect job submission.
  final List<String>? args;

  /// HCFS URIs of files to be placed in the working directory of each executor. Useful for naively parallel tasks.
  final List<String>? fileUris;

  /// HCFS URIs of jar files to add to the CLASSPATHs of the Python driver and tasks.
  final List<String>? jarFileUris;

  /// The HCFS URI of the main Python file to use as the driver. Must be a .py file.
  final String mainPythonFileUri;

  /// HCFS file URIs of Python files to pass to the PySpark framework. Supported file types: .py, .egg, and .zip.
  final List<String>? pythonFileUris;

  /// Creates a new [GdcSparkApplicationPysparkApplicationConfig].
  /// [archiveUris] HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  /// [args] The arguments to pass to the driver.  Do not include arguments, such as `--conf`, that can be set as job properties, since a collision may occur that causes an incorrect job submission.
  /// [fileUris] HCFS URIs of files to be placed in the working directory of each executor. Useful for naively parallel tasks.
  /// [jarFileUris] HCFS URIs of jar files to add to the CLASSPATHs of the Python driver and tasks.
  /// [mainPythonFileUri] The HCFS URI of the main Python file to use as the driver. Must be a .py file.
  /// [pythonFileUris] HCFS file URIs of Python files to pass to the PySpark framework. Supported file types: .py, .egg, and .zip.
  GdcSparkApplicationPysparkApplicationConfig({
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

  factory GdcSparkApplicationPysparkApplicationConfig.fromMap(
      Map<String, dynamic> map) {
    return GdcSparkApplicationPysparkApplicationConfig(
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
