// ignore_for_file: unused_element, unnecessary_cast

import 'logging_config_response_dataproc_v1beta2.dart';

/// A Dataproc job for running Apache SparkR (https://spark.apache.org/docs/latest/sparkr.html) applications on YARN.
class SparkRJobResponseDataprocV1beta2 {
  /// Optional. HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  final List<String> archiveUris;

  /// Optional. The arguments to pass to the driver. Do not include arguments, such as --conf, that can be set as job properties, since a collision may occur that causes an incorrect job submission.
  final List<String> args;

  /// Optional. HCFS URIs of files to be placed in the working directory of each executor. Useful for naively parallel tasks.
  final List<String> fileUris;

  /// Optional. The runtime log config for job execution.
  final LoggingConfigResponseDataprocV1beta2 loggingConfig;

  /// The HCFS URI of the main R file to use as the driver. Must be a .R file.
  final String mainRFileUri;

  /// Optional. A mapping of property names to values, used to configure SparkR. Properties that conflict with values set by the Dataproc API may be overwritten. Can include properties set in /etc/spark/conf/spark-defaults.conf and classes in user code.
  final Map<String, String> properties;

  /// Creates a new [SparkRJobResponseDataprocV1beta2].
  /// [archiveUris] Optional. HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  /// [args] Optional. The arguments to pass to the driver. Do not include arguments, such as --conf, that can be set as job properties, since a collision may occur that causes an incorrect job submission.
  /// [fileUris] Optional. HCFS URIs of files to be placed in the working directory of each executor. Useful for naively parallel tasks.
  /// [loggingConfig] Optional. The runtime log config for job execution.
  /// [mainRFileUri] The HCFS URI of the main R file to use as the driver. Must be a .R file.
  /// [properties] Optional. A mapping of property names to values, used to configure SparkR. Properties that conflict with values set by the Dataproc API may be overwritten. Can include properties set in /etc/spark/conf/spark-defaults.conf and classes in user code.
  SparkRJobResponseDataprocV1beta2({
    required this.archiveUris,
    required this.args,
    required this.fileUris,
    required this.loggingConfig,
    required this.mainRFileUri,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveUris': archiveUris,
      'args': args,
      'fileUris': fileUris,
      'loggingConfig': loggingConfig.toMap(),
      'mainRFileUri': mainRFileUri,
      'properties': properties,
    };
  }

  factory SparkRJobResponseDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return SparkRJobResponseDataprocV1beta2(
      archiveUris: (map['archiveUris'] as List).cast<String>(),
      args: (map['args'] as List).cast<String>(),
      fileUris: (map['fileUris'] as List).cast<String>(),
      loggingConfig: LoggingConfigResponseDataprocV1beta2.fromMap(
        (map['loggingConfig'] as Map).cast<String, dynamic>(),
      ),
      mainRFileUri: map['mainRFileUri'] as String,
      properties: (map['properties'] as Map).cast<String, String>(),
    );
  }
}
