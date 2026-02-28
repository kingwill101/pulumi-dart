// ignore_for_file: unused_element, unnecessary_cast

import 'logging_config_response.dart';

/// A Dataproc job for running Apache Spark (https://spark.apache.org/) applications on YARN.
class SparkJobResponse {
  /// Optional. HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  final List<String> archiveUris;
  /// Optional. The arguments to pass to the driver. Do not include arguments, such as --conf, that can be set as job properties, since a collision may occur that causes an incorrect job submission.
  final List<String> args;
  /// Optional. HCFS URIs of files to be placed in the working directory of each executor. Useful for naively parallel tasks.
  final List<String> fileUris;
  /// Optional. HCFS URIs of jar files to add to the CLASSPATHs of the Spark driver and tasks.
  final List<String> jarFileUris;
  /// Optional. The runtime log config for job execution.
  final LoggingConfigResponse loggingConfig;
  /// The name of the driver's main class. The jar file that contains the class must be in the default CLASSPATH or specified in SparkJob.jar_file_uris.
  final String mainClass;
  /// The HCFS URI of the jar file that contains the main class.
  final String mainJarFileUri;
  /// Optional. A mapping of property names to values, used to configure Spark. Properties that conflict with values set by the Dataproc API might be overwritten. Can include properties set in /etc/spark/conf/spark-defaults.conf and classes in user code.
  final Map<String, String> properties;

  /// Creates a new [SparkJobResponse].
  /// [archiveUris] Optional. HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  /// [args] Optional. The arguments to pass to the driver. Do not include arguments, such as --conf, that can be set as job properties, since a collision may occur that causes an incorrect job submission.
  /// [fileUris] Optional. HCFS URIs of files to be placed in the working directory of each executor. Useful for naively parallel tasks.
  /// [jarFileUris] Optional. HCFS URIs of jar files to add to the CLASSPATHs of the Spark driver and tasks.
  /// [loggingConfig] Optional. The runtime log config for job execution.
  /// [mainClass] The name of the driver's main class. The jar file that contains the class must be in the default CLASSPATH or specified in SparkJob.jar_file_uris.
  /// [mainJarFileUri] The HCFS URI of the jar file that contains the main class.
  /// [properties] Optional. A mapping of property names to values, used to configure Spark. Properties that conflict with values set by the Dataproc API might be overwritten. Can include properties set in /etc/spark/conf/spark-defaults.conf and classes in user code.
  SparkJobResponse({
    required this.archiveUris,
    required this.args,
    required this.fileUris,
    required this.jarFileUris,
    required this.loggingConfig,
    required this.mainClass,
    required this.mainJarFileUri,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveUris': archiveUris,
      'args': args,
      'fileUris': fileUris,
      'jarFileUris': jarFileUris,
      'loggingConfig': loggingConfig.toMap(),
      'mainClass': mainClass,
      'mainJarFileUri': mainJarFileUri,
      'properties': properties,
    };
  }

  factory SparkJobResponse.fromMap(Map<String, dynamic> map) {
    return SparkJobResponse(
      archiveUris: (map['archiveUris'] as List).cast<String>(),
      args: (map['args'] as List).cast<String>(),
      fileUris: (map['fileUris'] as List).cast<String>(),
      jarFileUris: (map['jarFileUris'] as List).cast<String>(),
      loggingConfig: LoggingConfigResponse.fromMap((map['loggingConfig'] as Map).cast<String, dynamic>()),
      mainClass: map['mainClass'] as String,
      mainJarFileUri: map['mainJarFileUri'] as String,
      properties: (map['properties'] as Map).cast<String, String>(),
    );
  }
}

