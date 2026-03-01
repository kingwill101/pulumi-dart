// ignore_for_file: unused_element, unnecessary_cast

import 'job_spark_config_logging_config.dart';

class JobSparkConfig {
  /// HCFS URIs of archives to be extracted in the working directory of .jar, .tar, .tar.gz, .tgz, and .zip.
  final List<String>? archiveUris;
  /// The arguments to pass to the driver.
  final List<String>? args;
  /// HCFS URIs of files to be copied to the working directory of Spark drivers and distributed tasks. Useful for naively parallel tasks.
  final List<String>? fileUris;
  /// HCFS URIs of jar files to add to the CLASSPATHs of the Spark driver and tasks.
  final List<String>? jarFileUris;
  /// The runtime logging config of the job
  final JobSparkConfigLoggingConfig? loggingConfig;
  /// The class containing the main method of the driver. Must be in a
  /// provided jar or jar that is already on the classpath. Conflicts with `main_jar_file_uri`
  final String? mainClass;
  /// The HCFS URI of jar file containing
  /// the driver jar. Conflicts with `main_class`
  final String? mainJarFileUri;
  /// A mapping of property names to values, used to configure Spark. Properties that conflict with values set by the Cloud Dataproc API may be overwritten. Can include properties set in `/etc/spark/conf/spark-defaults.conf` and classes in user code.
  ///
  /// * `logging_config.driver_log_levels`- (Required) The per-package log levels for the driver. This may include 'root' package name to configure rootLogger. Examples: 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG'
  final Map<String, String>? properties;

  /// Creates a new [JobSparkConfig].
  /// [archiveUris] HCFS URIs of archives to be extracted in the working directory of .jar, .tar, .tar.gz, .tgz, and .zip.
  /// [args] The arguments to pass to the driver.
  /// [fileUris] HCFS URIs of files to be copied to the working directory of Spark drivers and distributed tasks. Useful for naively parallel tasks.
  /// [jarFileUris] HCFS URIs of jar files to add to the CLASSPATHs of the Spark driver and tasks.
  /// [loggingConfig] The runtime logging config of the job
  /// [mainClass] The class containing the main method of the driver. Must be in a
  /// [mainJarFileUri] The HCFS URI of jar file containing
  /// [properties] A mapping of property names to values, used to configure Spark. Properties that conflict with values set by the Cloud Dataproc API may be overwritten. Can include properties set in `/etc/spark/conf/spark-defaults.conf` and classes in user code.
  JobSparkConfig({
    this.archiveUris,
    this.args,
    this.fileUris,
    this.jarFileUris,
    this.loggingConfig,
    this.mainClass,
    this.mainJarFileUri,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveUris': ?archiveUris,
      'args': ?args,
      'fileUris': ?fileUris,
      'jarFileUris': ?jarFileUris,
      'loggingConfig': ?loggingConfig == null ? null : loggingConfig!.toMap(),
      'mainClass': ?mainClass,
      'mainJarFileUri': ?mainJarFileUri,
      'properties': ?properties,
    };
  }

  factory JobSparkConfig.fromMap(Map<String, dynamic> map) {
    return JobSparkConfig(
      archiveUris: map['archiveUris'] == null ? null : (map['archiveUris'] as List).cast<String>(),
      args: map['args'] == null ? null : (map['args'] as List).cast<String>(),
      fileUris: map['fileUris'] == null ? null : (map['fileUris'] as List).cast<String>(),
      jarFileUris: map['jarFileUris'] == null ? null : (map['jarFileUris'] as List).cast<String>(),
      loggingConfig: map['loggingConfig'] == null ? null : JobSparkConfigLoggingConfig.fromMap((map['loggingConfig'] as Map).cast<String, dynamic>()),
      mainClass: map['mainClass'] == null ? null : map['mainClass'] as String,
      mainJarFileUri: map['mainJarFileUri'] == null ? null : map['mainJarFileUri'] as String,
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
    );
  }
}

