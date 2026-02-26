// ignore_for_file: unused_element, unnecessary_cast

import '../workflow_template_job_spark_sql_job_logging_config/workflow_template_job_spark_sql_job_logging_config.dart';
import '../workflow_template_job_spark_sql_job_query_list/workflow_template_job_spark_sql_job_query_list.dart';

class WorkflowTemplateJobSparkSqlJob {
  /// HCFS URIs of jar files to be added to the Spark CLASSPATH.
  final List<String>? jarFileUris;

  /// The runtime log config for job execution.
  final WorkflowTemplateJobSparkSqlJobLoggingConfig? loggingConfig;

  /// A mapping of property names to values, used to configure Spark SQL's SparkConf. Properties that conflict with values set by the Dataproc API may be overwritten.
  final Map<String, String>? properties;

  /// The HCFS URI of the script that contains SQL queries.
  final String? queryFileUri;

  /// A list of queries.
  final WorkflowTemplateJobSparkSqlJobQueryList? queryList;

  /// Mapping of query variable names to values (equivalent to the Spark SQL command: SET `name="value";`).
  final Map<String, String>? scriptVariables;

  WorkflowTemplateJobSparkSqlJob({
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

  factory WorkflowTemplateJobSparkSqlJob.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplateJobSparkSqlJob(
      jarFileUris: map['jarFileUris'] == null
          ? null
          : (map['jarFileUris'] as List).cast<String>(),
      loggingConfig: map['loggingConfig'] == null
          ? null
          : WorkflowTemplateJobSparkSqlJobLoggingConfig.fromMap(
              (map['loggingConfig'] as Map).cast<String, dynamic>()),
      properties: map['properties'] == null
          ? null
          : (map['properties'] as Map).cast<String, String>(),
      queryFileUri:
          map['queryFileUri'] == null ? null : map['queryFileUri'] as String,
      queryList: map['queryList'] == null
          ? null
          : WorkflowTemplateJobSparkSqlJobQueryList.fromMap(
              (map['queryList'] as Map).cast<String, dynamic>()),
      scriptVariables: map['scriptVariables'] == null
          ? null
          : (map['scriptVariables'] as Map).cast<String, String>(),
    );
  }
}
