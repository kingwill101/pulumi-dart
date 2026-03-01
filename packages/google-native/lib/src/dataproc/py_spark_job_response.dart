// ignore_for_file: unused_element, unnecessary_cast

import 'logging_config_response.dart';

/// A Dataproc job for running Apache PySpark (https://spark.apache.org/docs/0.9.0/python-programming-guide.html) applications on YARN.
class PySparkJobResponse {
  /// Optional. HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  final List<String> archiveUris;

  /// Optional. The arguments to pass to the driver. Do not include arguments, such as --conf, that can be set as job properties, since a collision may occur that causes an incorrect job submission.
  final List<String> args;

  /// Optional. HCFS URIs of files to be placed in the working directory of each executor. Useful for naively parallel tasks.
  final List<String> fileUris;

  /// Optional. HCFS URIs of jar files to add to the CLASSPATHs of the Python driver and tasks.
  final List<String> jarFileUris;

  /// Optional. The runtime log config for job execution.
  final LoggingConfigResponse loggingConfig;

  /// The HCFS URI of the main Python file to use as the driver. Must be a .py file.
  final String mainPythonFileUri;

  /// Optional. A mapping of property names to values, used to configure PySpark. Properties that conflict with values set by the Dataproc API might be overwritten. Can include properties set in /etc/spark/conf/spark-defaults.conf and classes in user code.
  final Map<String, String> properties;

  /// Optional. HCFS file URIs of Python files to pass to the PySpark framework. Supported file types: .py, .egg, and .zip.
  final List<String> pythonFileUris;

  /// Creates a new [PySparkJobResponse].
  /// [archiveUris] Optional. HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  /// [args] Optional. The arguments to pass to the driver. Do not include arguments, such as --conf, that can be set as job properties, since a collision may occur that causes an incorrect job submission.
  /// [fileUris] Optional. HCFS URIs of files to be placed in the working directory of each executor. Useful for naively parallel tasks.
  /// [jarFileUris] Optional. HCFS URIs of jar files to add to the CLASSPATHs of the Python driver and tasks.
  /// [loggingConfig] Optional. The runtime log config for job execution.
  /// [mainPythonFileUri] The HCFS URI of the main Python file to use as the driver. Must be a .py file.
  /// [properties] Optional. A mapping of property names to values, used to configure PySpark. Properties that conflict with values set by the Dataproc API might be overwritten. Can include properties set in /etc/spark/conf/spark-defaults.conf and classes in user code.
  /// [pythonFileUris] Optional. HCFS file URIs of Python files to pass to the PySpark framework. Supported file types: .py, .egg, and .zip.
  PySparkJobResponse({
    required this.archiveUris,
    required this.args,
    required this.fileUris,
    required this.jarFileUris,
    required this.loggingConfig,
    required this.mainPythonFileUri,
    required this.properties,
    required this.pythonFileUris,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveUris': archiveUris,
      'args': args,
      'fileUris': fileUris,
      'jarFileUris': jarFileUris,
      'loggingConfig': loggingConfig.toMap(),
      'mainPythonFileUri': mainPythonFileUri,
      'properties': properties,
      'pythonFileUris': pythonFileUris,
    };
  }

  factory PySparkJobResponse.fromMap(Map<String, dynamic> map) {
    return PySparkJobResponse(
      archiveUris: (map['archiveUris'] as List).cast<String>(),
      args: (map['args'] as List).cast<String>(),
      fileUris: (map['fileUris'] as List).cast<String>(),
      jarFileUris: (map['jarFileUris'] as List).cast<String>(),
      loggingConfig: LoggingConfigResponse.fromMap(
        (map['loggingConfig'] as Map).cast<String, dynamic>(),
      ),
      mainPythonFileUri: map['mainPythonFileUri'] as String,
      properties: (map['properties'] as Map).cast<String, String>(),
      pythonFileUris: (map['pythonFileUris'] as List).cast<String>(),
    );
  }
}
