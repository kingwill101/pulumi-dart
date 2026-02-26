// ignore_for_file: unused_element, unnecessary_cast

/// A configuration for running Apache Spark SQL (https://spark.apache.org/sql/) queries as a batch workload.
class SparkSqlBatch {
  /// Optional. HCFS URIs of jar files to be added to the Spark CLASSPATH.
  final List<String>? jarFileUris;

  /// The HCFS URI of the script that contains Spark SQL queries to execute.
  final String queryFileUri;

  /// Optional. Mapping of query variable names to values (equivalent to the Spark SQL command: SET name="value";).
  final Map<String, String>? queryVariables;

  SparkSqlBatch({
    this.jarFileUris,
    required this.queryFileUri,
    this.queryVariables,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final jarFileUrisValue = jarFileUris;
    if (jarFileUrisValue != null) {
      map['jarFileUris'] = jarFileUrisValue;
    }
    map['queryFileUri'] = queryFileUri;
    final queryVariablesValue = queryVariables;
    if (queryVariablesValue != null) {
      map['queryVariables'] = queryVariablesValue;
    }
    return map;
  }

  factory SparkSqlBatch.fromMap(Map<String, dynamic> map) {
    return SparkSqlBatch(
      jarFileUris: map['jarFileUris'] == null
          ? null
          : (map['jarFileUris'] as List).cast<String>(),
      queryFileUri: map['queryFileUri'] as String,
      queryVariables: map['queryVariables'] == null
          ? null
          : (map['queryVariables'] as Map).cast<String, String>(),
    );
  }
}
