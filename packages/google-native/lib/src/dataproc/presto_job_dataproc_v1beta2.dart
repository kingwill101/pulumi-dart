// ignore_for_file: unused_element, unnecessary_cast

import 'logging_config_dataproc_v1beta2.dart';
import 'query_list_dataproc_v1beta2.dart';

/// A Dataproc job for running Presto (https://prestosql.io/) queries. IMPORTANT: The Dataproc Presto Optional Component (https://cloud.google.com/dataproc/docs/concepts/components/presto) must be enabled when the cluster is created to submit a Presto job to the cluster.
class PrestoJobDataprocV1beta2 {
  /// Optional. Presto client tags to attach to this query
  final List<String>? clientTags;

  /// Optional. Whether to continue executing queries if a query fails. The default value is false. Setting to true can be useful when executing independent parallel queries.
  final bool? continueOnFailure;

  /// Optional. The runtime log config for job execution.
  final LoggingConfigDataprocV1beta2? loggingConfig;

  /// Optional. The format in which query output will be displayed. See the Presto documentation for supported output formats
  final String? outputFormat;

  /// Optional. A mapping of property names to values. Used to set Presto session properties (https://prestodb.io/docs/current/sql/set-session.html) Equivalent to using the --session flag in the Presto CLI
  final Map<String, String>? properties;

  /// The HCFS URI of the script that contains SQL queries.
  final String? queryFileUri;

  /// A list of queries.
  final QueryListDataprocV1beta2? queryList;

  /// Creates a new [PrestoJobDataprocV1beta2].
  /// [clientTags] Optional. Presto client tags to attach to this query
  /// [continueOnFailure] Optional. Whether to continue executing queries if a query fails. The default value is false. Setting to true can be useful when executing independent parallel queries.
  /// [loggingConfig] Optional. The runtime log config for job execution.
  /// [outputFormat] Optional. The format in which query output will be displayed. See the Presto documentation for supported output formats
  /// [properties] Optional. A mapping of property names to values. Used to set Presto session properties (https://prestodb.io/docs/current/sql/set-session.html) Equivalent to using the --session flag in the Presto CLI
  /// [queryFileUri] The HCFS URI of the script that contains SQL queries.
  /// [queryList] A list of queries.
  PrestoJobDataprocV1beta2({
    this.clientTags,
    this.continueOnFailure,
    this.loggingConfig,
    this.outputFormat,
    this.properties,
    this.queryFileUri,
    this.queryList,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clientTagsValue = clientTags;
    if (clientTagsValue != null) {
      map['clientTags'] = clientTagsValue;
    }
    final continueOnFailureValue = continueOnFailure;
    if (continueOnFailureValue != null) {
      map['continueOnFailure'] = continueOnFailureValue;
    }
    final loggingConfigValue = loggingConfig;
    if (loggingConfigValue != null) {
      map['loggingConfig'] = loggingConfigValue.toMap();
    }
    final outputFormatValue = outputFormat;
    if (outputFormatValue != null) {
      map['outputFormat'] = outputFormatValue;
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
    return map;
  }

  factory PrestoJobDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return PrestoJobDataprocV1beta2(
      clientTags: map['clientTags'] == null
          ? null
          : (map['clientTags'] as List).cast<String>(),
      continueOnFailure: map['continueOnFailure'] == null
          ? null
          : map['continueOnFailure'] as bool,
      loggingConfig: map['loggingConfig'] == null
          ? null
          : LoggingConfigDataprocV1beta2.fromMap(
              (map['loggingConfig'] as Map).cast<String, dynamic>()),
      outputFormat:
          map['outputFormat'] == null ? null : map['outputFormat'] as String,
      properties: map['properties'] == null
          ? null
          : (map['properties'] as Map).cast<String, String>(),
      queryFileUri:
          map['queryFileUri'] == null ? null : map['queryFileUri'] as String,
      queryList: map['queryList'] == null
          ? null
          : QueryListDataprocV1beta2.fromMap(
              (map['queryList'] as Map).cast<String, dynamic>()),
    );
  }
}
