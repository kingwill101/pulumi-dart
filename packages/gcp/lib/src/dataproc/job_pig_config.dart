// ignore_for_file: unused_element, unnecessary_cast

import 'job_pig_config_logging_config.dart';

class JobPigConfig {
  /// Whether to continue executing queries if a query fails. The default value is false. Setting to true can be useful when executing independent parallel queries. Defaults to false.
  final bool? continueOnFailure;

  /// HCFS URIs of jar files to add to the CLASSPATH of the Pig Client and Hadoop MapReduce (MR) tasks. Can contain Pig UDFs.
  ///
  /// * `logging_config.driver_log_levels`- (Required) The per-package log levels for the driver. This may include 'root' package name to configure rootLogger. Examples: 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG'
  final List<String>? jarFileUris;

  /// The runtime logging config of the job
  final JobPigConfigLoggingConfig? loggingConfig;

  /// A mapping of property names to values, used to configure Pig. Properties that conflict with values set by the Cloud Dataproc API may be overwritten. Can include properties set in `/etc/hadoop/conf/*-site.xml`, `/etc/pig/conf/pig.properties`, and classes in user code.
  final Map<String, String>? properties;

  /// HCFS URI of file containing Hive script to execute as the job.
  /// Conflicts with `query_list`
  final String? queryFileUri;

  /// The list of Hive queries or statements to execute as part of the job.
  /// Conflicts with `query_file_uri`
  final List<String>? queryLists;

  /// Mapping of query variable names to values (equivalent to the Pig command: `name=[value]`).
  final Map<String, String>? scriptVariables;

  /// Creates a new [JobPigConfig].
  /// [continueOnFailure] Whether to continue executing queries if a query fails. The default value is false. Setting to true can be useful when executing independent parallel queries. Defaults to false.
  /// [jarFileUris] HCFS URIs of jar files to add to the CLASSPATH of the Pig Client and Hadoop MapReduce (MR) tasks. Can contain Pig UDFs.
  /// [loggingConfig] The runtime logging config of the job
  /// [properties] A mapping of property names to values, used to configure Pig. Properties that conflict with values set by the Cloud Dataproc API may be overwritten. Can include properties set in `/etc/hadoop/conf/*-site.xml`, `/etc/pig/conf/pig.properties`, and classes in user code.
  /// [queryFileUri] HCFS URI of file containing Hive script to execute as the job.
  /// [queryLists] The list of Hive queries or statements to execute as part of the job.
  /// [scriptVariables] Mapping of query variable names to values (equivalent to the Pig command: `name=[value]`).
  JobPigConfig({
    this.continueOnFailure,
    this.jarFileUris,
    this.loggingConfig,
    this.properties,
    this.queryFileUri,
    this.queryLists,
    this.scriptVariables,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final continueOnFailureValue = continueOnFailure;
    if (continueOnFailureValue != null) {
      map['continueOnFailure'] = continueOnFailureValue;
    }
    final jarFileUrisValue = jarFileUris;
    if (jarFileUrisValue != null) {
      map['jarFileUris'] = jarFileUrisValue;
    }
    final loggingConfigValue = loggingConfig;
    if (loggingConfigValue != null) {
      map['loggingConfig'] = loggingConfigValue.toMap();
    }
    final propertiesValue = properties;
    if (propertiesValue != null) {
      map['properties'] = propertiesValue;
    }
    final queryFileUriValue = queryFileUri;
    if (queryFileUriValue != null) {
      map['queryFileUri'] = queryFileUriValue;
    }
    final queryListsValue = queryLists;
    if (queryListsValue != null) {
      map['queryLists'] = queryListsValue;
    }
    final scriptVariablesValue = scriptVariables;
    if (scriptVariablesValue != null) {
      map['scriptVariables'] = scriptVariablesValue;
    }
    return map;
  }

  factory JobPigConfig.fromMap(Map<String, dynamic> map) {
    return JobPigConfig(
      continueOnFailure: map['continueOnFailure'] == null
          ? null
          : map['continueOnFailure'] as bool,
      jarFileUris: map['jarFileUris'] == null
          ? null
          : (map['jarFileUris'] as List).cast<String>(),
      loggingConfig: map['loggingConfig'] == null
          ? null
          : JobPigConfigLoggingConfig.fromMap(
              (map['loggingConfig'] as Map).cast<String, dynamic>()),
      properties: map['properties'] == null
          ? null
          : (map['properties'] as Map).cast<String, String>(),
      queryFileUri:
          map['queryFileUri'] == null ? null : map['queryFileUri'] as String,
      queryLists: map['queryLists'] == null
          ? null
          : (map['queryLists'] as List).cast<String>(),
      scriptVariables: map['scriptVariables'] == null
          ? null
          : (map['scriptVariables'] as Map).cast<String, String>(),
    );
  }
}
