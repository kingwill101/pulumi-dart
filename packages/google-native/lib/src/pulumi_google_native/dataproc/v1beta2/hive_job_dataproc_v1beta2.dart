// ignore_for_file: unused_element, unnecessary_cast

import 'query_list_dataproc_v1beta2.dart';

/// A Dataproc job for running Apache Hive (https://hive.apache.org/) queries on YARN.
class HiveJobDataprocV1beta2 {
  /// Optional. Whether to continue executing queries if a query fails. The default value is false. Setting to true can be useful when executing independent parallel queries.
  final bool? continueOnFailure;

  /// Optional. HCFS URIs of jar files to add to the CLASSPATH of the Hive server and Hadoop MapReduce (MR) tasks. Can contain Hive SerDes and UDFs.
  final List<String>? jarFileUris;

  /// Optional. A mapping of property names and values, used to configure Hive. Properties that conflict with values set by the Dataproc API may be overwritten. Can include properties set in /etc/hadoop/conf/*-site.xml, /etc/hive/conf/hive-site.xml, and classes in user code.
  final Map<String, String>? properties;

  /// The HCFS URI of the script that contains Hive queries.
  final String? queryFileUri;

  /// A list of queries.
  final QueryListDataprocV1beta2? queryList;

  /// Optional. Mapping of query variable names to values (equivalent to the Hive command: SET name="value";).
  final Map<String, String>? scriptVariables;

  HiveJobDataprocV1beta2({
    this.continueOnFailure,
    this.jarFileUris,
    this.properties,
    this.queryFileUri,
    this.queryList,
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

  factory HiveJobDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return HiveJobDataprocV1beta2(
      continueOnFailure: map['continueOnFailure'] == null
          ? null
          : map['continueOnFailure'] as bool,
      jarFileUris: map['jarFileUris'] == null
          ? null
          : (map['jarFileUris'] as List).cast<String>(),
      properties: map['properties'] == null
          ? null
          : (map['properties'] as Map).cast<String, String>(),
      queryFileUri:
          map['queryFileUri'] == null ? null : map['queryFileUri'] as String,
      queryList: map['queryList'] == null
          ? null
          : QueryListDataprocV1beta2.fromMap(
              (map['queryList'] as Map).cast<String, dynamic>()),
      scriptVariables: map['scriptVariables'] == null
          ? null
          : (map['scriptVariables'] as Map).cast<String, String>(),
    );
  }
}
