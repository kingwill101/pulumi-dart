// ignore_for_file: unused_element, unnecessary_cast

import 'logging_config_response3.dart';

/// A Dataproc job for running Apache Flink applications on YARN.
class FlinkJobResponse {
  /// Optional. The arguments to pass to the driver. Do not include arguments, such as --conf, that can be set as job properties, since a collision might occur that causes an incorrect job submission.
  final List<String> args;

  /// Optional. HCFS URIs of jar files to add to the CLASSPATHs of the Flink driver and tasks.
  final List<String> jarFileUris;

  /// Optional. The runtime log config for job execution.
  final LoggingConfigResponse3 loggingConfig;

  /// The name of the driver's main class. The jar file that contains the class must be in the default CLASSPATH or specified in jarFileUris.
  final String mainClass;

  /// The HCFS URI of the jar file that contains the main class.
  final String mainJarFileUri;

  /// Optional. A mapping of property names to values, used to configure Flink. Properties that conflict with values set by the Dataproc API might beoverwritten. Can include properties set in/etc/flink/conf/flink-defaults.conf and classes in user code.
  final Map<String, String> properties;

  /// Optional. HCFS URI of the savepoint, which contains the last saved progress for starting the current job.
  final String savepointUri;

  FlinkJobResponse({
    required this.args,
    required this.jarFileUris,
    required this.loggingConfig,
    required this.mainClass,
    required this.mainJarFileUri,
    required this.properties,
    required this.savepointUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['args'] = args;
    map['jarFileUris'] = jarFileUris;
    map['loggingConfig'] = loggingConfig.toMap();
    map['mainClass'] = mainClass;
    map['mainJarFileUri'] = mainJarFileUri;
    map['properties'] = properties;
    map['savepointUri'] = savepointUri;
    return map;
  }

  factory FlinkJobResponse.fromMap(Map<String, dynamic> map) {
    return FlinkJobResponse(
      args: (map['args'] as List).cast<String>(),
      jarFileUris: (map['jarFileUris'] as List).cast<String>(),
      loggingConfig: LoggingConfigResponse3.fromMap(
          (map['loggingConfig'] as Map).cast<String, dynamic>()),
      mainClass: map['mainClass'] as String,
      mainJarFileUri: map['mainJarFileUri'] as String,
      properties: (map['properties'] as Map).cast<String, String>(),
      savepointUri: map['savepointUri'] as String,
    );
  }
}
