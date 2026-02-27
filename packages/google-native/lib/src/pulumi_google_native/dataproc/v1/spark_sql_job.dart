// ignore_for_file: unused_element, unnecessary_cast

import 'logging_config_dataproc_v1.dart';
import 'query_list.dart';

/// A Dataproc job for running Apache Spark SQL (https://spark.apache.org/sql/) queries.
class SparkSqlJob {
  /// Optional. HCFS URIs of jar files to be added to the Spark CLASSPATH.
  final List<String>? jarFileUris;

  /// Optional. The runtime log config for job execution.
  final LoggingConfigDataprocV1? loggingConfig;

  /// Optional. A mapping of property names to values, used to configure Spark SQL's SparkConf. Properties that conflict with values set by the Dataproc API might be overwritten.
  final Map<String, String>? properties;

  /// The HCFS URI of the script that contains SQL queries.
  final String? queryFileUri;

  /// A list of queries.
  final QueryList? queryList;

  /// Optional. Mapping of query variable names to values (equivalent to the Spark SQL command: SET name="value";).
  final Map<String, String>? scriptVariables;

  SparkSqlJob({
    this.jarFileUris,
    this.loggingConfig,
    this.properties,
    this.queryFileUri,
    this.queryList,
    this.scriptVariables,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
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
    final queryListValue = queryList;
    if (queryListValue != null) {
      map['queryList'] = queryListValue.toMap();
    }
    final scriptVariablesValue = scriptVariables;
    if (scriptVariablesValue != null) {
      map['scriptVariables'] = scriptVariablesValue;
    }
    return map;
  }

  factory SparkSqlJob.fromMap(Map<String, dynamic> map) {
    return SparkSqlJob(
      jarFileUris: map['jarFileUris'] == null
          ? null
          : (map['jarFileUris'] as List).cast<String>(),
      loggingConfig: map['loggingConfig'] == null
          ? null
          : LoggingConfigDataprocV1.fromMap(
              (map['loggingConfig'] as Map).cast<String, dynamic>()),
      properties: map['properties'] == null
          ? null
          : (map['properties'] as Map).cast<String, String>(),
      queryFileUri:
          map['queryFileUri'] == null ? null : map['queryFileUri'] as String,
      queryList: map['queryList'] == null
          ? null
          : QueryList.fromMap(
              (map['queryList'] as Map).cast<String, dynamic>()),
      scriptVariables: map['scriptVariables'] == null
          ? null
          : (map['scriptVariables'] as Map).cast<String, String>(),
    );
  }
}
