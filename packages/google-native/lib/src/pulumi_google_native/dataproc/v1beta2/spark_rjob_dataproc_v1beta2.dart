// ignore_for_file: unused_element, unnecessary_cast

import 'logging_config_dataproc_v1beta2.dart';

/// A Dataproc job for running Apache SparkR (https://spark.apache.org/docs/latest/sparkr.html) applications on YARN.
class SparkRJobDataprocV1beta2 {
  /// Optional. HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  final List<String>? archiveUris;

  /// Optional. The arguments to pass to the driver. Do not include arguments, such as --conf, that can be set as job properties, since a collision may occur that causes an incorrect job submission.
  final List<String>? args;

  /// Optional. HCFS URIs of files to be placed in the working directory of each executor. Useful for naively parallel tasks.
  final List<String>? fileUris;

  /// Optional. The runtime log config for job execution.
  final LoggingConfigDataprocV1beta2? loggingConfig;

  /// The HCFS URI of the main R file to use as the driver. Must be a .R file.
  final String mainRFileUri;

  /// Optional. A mapping of property names to values, used to configure SparkR. Properties that conflict with values set by the Dataproc API may be overwritten. Can include properties set in /etc/spark/conf/spark-defaults.conf and classes in user code.
  final Map<String, String>? properties;

  SparkRJobDataprocV1beta2({
    this.archiveUris,
    this.args,
    this.fileUris,
    this.loggingConfig,
    required this.mainRFileUri,
    this.properties,
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
    final loggingConfigValue = loggingConfig;
    if (loggingConfigValue != null) {
      map['loggingConfig'] = loggingConfigValue.toMap();
    }
    map['mainRFileUri'] = mainRFileUri;
    final propertiesValue = properties;
    if (propertiesValue != null) {
      map['properties'] = propertiesValue;
    }
    return map;
  }

  factory SparkRJobDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return SparkRJobDataprocV1beta2(
      archiveUris: map['archiveUris'] == null
          ? null
          : (map['archiveUris'] as List).cast<String>(),
      args: map['args'] == null ? null : (map['args'] as List).cast<String>(),
      fileUris: map['fileUris'] == null
          ? null
          : (map['fileUris'] as List).cast<String>(),
      loggingConfig: map['loggingConfig'] == null
          ? null
          : LoggingConfigDataprocV1beta2.fromMap(
              (map['loggingConfig'] as Map).cast<String, dynamic>()),
      mainRFileUri: map['mainRFileUri'] as String,
      properties: map['properties'] == null
          ? null
          : (map['properties'] as Map).cast<String, String>(),
    );
  }
}
