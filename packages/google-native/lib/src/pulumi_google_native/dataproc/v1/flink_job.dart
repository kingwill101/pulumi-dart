// ignore_for_file: unused_element, unnecessary_cast

import 'logging_config3.dart';

/// A Dataproc job for running Apache Flink applications on YARN.
class FlinkJob {
  /// Optional. The arguments to pass to the driver. Do not include arguments, such as --conf, that can be set as job properties, since a collision might occur that causes an incorrect job submission.
  final List<String>? args;

  /// Optional. HCFS URIs of jar files to add to the CLASSPATHs of the Flink driver and tasks.
  final List<String>? jarFileUris;

  /// Optional. The runtime log config for job execution.
  final LoggingConfig3? loggingConfig;

  /// The name of the driver's main class. The jar file that contains the class must be in the default CLASSPATH or specified in jarFileUris.
  final String? mainClass;

  /// The HCFS URI of the jar file that contains the main class.
  final String? mainJarFileUri;

  /// Optional. A mapping of property names to values, used to configure Flink. Properties that conflict with values set by the Dataproc API might beoverwritten. Can include properties set in/etc/flink/conf/flink-defaults.conf and classes in user code.
  final Map<String, String>? properties;

  /// Optional. HCFS URI of the savepoint, which contains the last saved progress for starting the current job.
  final String? savepointUri;

  FlinkJob({
    this.args,
    this.jarFileUris,
    this.loggingConfig,
    this.mainClass,
    this.mainJarFileUri,
    this.properties,
    this.savepointUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final argsValue = args;
    if (argsValue != null) {
      map['args'] = argsValue;
    }
    final jarFileUrisValue = jarFileUris;
    if (jarFileUrisValue != null) {
      map['jarFileUris'] = jarFileUrisValue;
    }
    final loggingConfigValue = loggingConfig;
    if (loggingConfigValue != null) {
      map['loggingConfig'] = loggingConfigValue.toMap();
    }
    final mainClassValue = mainClass;
    if (mainClassValue != null) {
      map['mainClass'] = mainClassValue;
    }
    final mainJarFileUriValue = mainJarFileUri;
    if (mainJarFileUriValue != null) {
      map['mainJarFileUri'] = mainJarFileUriValue;
    }
    final propertiesValue = properties;
    if (propertiesValue != null) {
      map['properties'] = propertiesValue;
    }
    final savepointUriValue = savepointUri;
    if (savepointUriValue != null) {
      map['savepointUri'] = savepointUriValue;
    }
    return map;
  }

  factory FlinkJob.fromMap(Map<String, dynamic> map) {
    return FlinkJob(
      args: map['args'] == null ? null : (map['args'] as List).cast<String>(),
      jarFileUris: map['jarFileUris'] == null
          ? null
          : (map['jarFileUris'] as List).cast<String>(),
      loggingConfig: map['loggingConfig'] == null
          ? null
          : LoggingConfig3.fromMap(
              (map['loggingConfig'] as Map).cast<String, dynamic>()),
      mainClass: map['mainClass'] == null ? null : map['mainClass'] as String,
      mainJarFileUri: map['mainJarFileUri'] == null
          ? null
          : map['mainJarFileUri'] as String,
      properties: map['properties'] == null
          ? null
          : (map['properties'] as Map).cast<String, String>(),
      savepointUri:
          map['savepointUri'] == null ? null : map['savepointUri'] as String,
    );
  }
}
