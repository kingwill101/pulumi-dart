// ignore_for_file: unused_element, unnecessary_cast

import 'gdc_spark_application_spark_sql_application_config_query_list.dart';

class GdcSparkApplicationSparkSqlApplicationConfig {
  /// HCFS URIs of jar files to be added to the Spark CLASSPATH.
  final List<String>? jarFileUris;

  /// The HCFS URI of the script that contains SQL queries.
  final String? queryFileUri;

  /// Represents a list of queries.
  /// Structure is documented below.
  final GdcSparkApplicationSparkSqlApplicationConfigQueryList? queryList;

  /// Mapping of query variable names to values (equivalent to the Spark SQL command: SET `name="value";`).
  final Map<String, String>? scriptVariables;

  /// Creates a new [GdcSparkApplicationSparkSqlApplicationConfig].
  /// [jarFileUris] HCFS URIs of jar files to be added to the Spark CLASSPATH.
  /// [queryFileUri] The HCFS URI of the script that contains SQL queries.
  /// [queryList] Represents a list of queries.
  /// [scriptVariables] Mapping of query variable names to values (equivalent to the Spark SQL command: SET `name="value";`).
  GdcSparkApplicationSparkSqlApplicationConfig({
    this.jarFileUris,
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

  factory GdcSparkApplicationSparkSqlApplicationConfig.fromMap(
      Map<String, dynamic> map) {
    return GdcSparkApplicationSparkSqlApplicationConfig(
      jarFileUris: map['jarFileUris'] == null
          ? null
          : (map['jarFileUris'] as List).cast<String>(),
      queryFileUri:
          map['queryFileUri'] == null ? null : map['queryFileUri'] as String,
      queryList: map['queryList'] == null
          ? null
          : GdcSparkApplicationSparkSqlApplicationConfigQueryList.fromMap(
              (map['queryList'] as Map).cast<String, dynamic>()),
      scriptVariables: map['scriptVariables'] == null
          ? null
          : (map['scriptVariables'] as Map).cast<String, String>(),
    );
  }
}
