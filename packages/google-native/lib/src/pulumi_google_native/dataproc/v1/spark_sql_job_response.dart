// ignore_for_file: unused_element, unnecessary_cast

import 'logging_config_response_dataproc_v1.dart';
import 'query_list_response.dart';

/// A Dataproc job for running Apache Spark SQL (https://spark.apache.org/sql/) queries.
class SparkSqlJobResponse {
  /// Optional. HCFS URIs of jar files to be added to the Spark CLASSPATH.
  final List<String> jarFileUris;

  /// Optional. The runtime log config for job execution.
  final LoggingConfigResponseDataprocV1 loggingConfig;

  /// Optional. A mapping of property names to values, used to configure Spark SQL's SparkConf. Properties that conflict with values set by the Dataproc API might be overwritten.
  final Map<String, String> properties;

  /// The HCFS URI of the script that contains SQL queries.
  final String queryFileUri;

  /// A list of queries.
  final QueryListResponse queryList;

  /// Optional. Mapping of query variable names to values (equivalent to the Spark SQL command: SET name="value";).
  final Map<String, String> scriptVariables;

  SparkSqlJobResponse({
    required this.jarFileUris,
    required this.loggingConfig,
    required this.properties,
    required this.queryFileUri,
    required this.queryList,
    required this.scriptVariables,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['jarFileUris'] = jarFileUris;
    map['loggingConfig'] = loggingConfig.toMap();
    map['properties'] = properties;
    map['queryFileUri'] = queryFileUri;
    map['queryList'] = queryList.toMap();
    map['scriptVariables'] = scriptVariables;
    return map;
  }

  factory SparkSqlJobResponse.fromMap(Map<String, dynamic> map) {
    return SparkSqlJobResponse(
      jarFileUris: (map['jarFileUris'] as List).cast<String>(),
      loggingConfig: LoggingConfigResponseDataprocV1.fromMap(
          (map['loggingConfig'] as Map).cast<String, dynamic>()),
      properties: (map['properties'] as Map).cast<String, String>(),
      queryFileUri: map['queryFileUri'] as String,
      queryList: QueryListResponse.fromMap(
          (map['queryList'] as Map).cast<String, dynamic>()),
      scriptVariables: (map['scriptVariables'] as Map).cast<String, String>(),
    );
  }
}
