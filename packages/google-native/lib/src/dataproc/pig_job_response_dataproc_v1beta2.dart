// ignore_for_file: unused_element, unnecessary_cast

import 'logging_config_response_dataproc_v1beta2.dart';
import 'query_list_response_dataproc_v1beta2.dart';

/// A Dataproc job for running Apache Pig (https://pig.apache.org/) queries on YARN.
class PigJobResponseDataprocV1beta2 {
  /// Optional. Whether to continue executing queries if a query fails. The default value is false. Setting to true can be useful when executing independent parallel queries.
  final bool continueOnFailure;

  /// Optional. HCFS URIs of jar files to add to the CLASSPATH of the Pig Client and Hadoop MapReduce (MR) tasks. Can contain Pig UDFs.
  final List<String> jarFileUris;

  /// Optional. The runtime log config for job execution.
  final LoggingConfigResponseDataprocV1beta2 loggingConfig;

  /// Optional. A mapping of property names to values, used to configure Pig. Properties that conflict with values set by the Dataproc API may be overwritten. Can include properties set in /etc/hadoop/conf/*-site.xml, /etc/pig/conf/pig.properties, and classes in user code.
  final Map<String, String> properties;

  /// The HCFS URI of the script that contains the Pig queries.
  final String queryFileUri;

  /// A list of queries.
  final QueryListResponseDataprocV1beta2 queryList;

  /// Optional. Mapping of query variable names to values (equivalent to the Pig command: name=[value]).
  final Map<String, String> scriptVariables;

  /// Creates a new [PigJobResponseDataprocV1beta2].
  /// [continueOnFailure] Optional. Whether to continue executing queries if a query fails. The default value is false. Setting to true can be useful when executing independent parallel queries.
  /// [jarFileUris] Optional. HCFS URIs of jar files to add to the CLASSPATH of the Pig Client and Hadoop MapReduce (MR) tasks. Can contain Pig UDFs.
  /// [loggingConfig] Optional. The runtime log config for job execution.
  /// [properties] Optional. A mapping of property names to values, used to configure Pig. Properties that conflict with values set by the Dataproc API may be overwritten. Can include properties set in /etc/hadoop/conf/*-site.xml, /etc/pig/conf/pig.properties, and classes in user code.
  /// [queryFileUri] The HCFS URI of the script that contains the Pig queries.
  /// [queryList] A list of queries.
  /// [scriptVariables] Optional. Mapping of query variable names to values (equivalent to the Pig command: name=[value]).
  PigJobResponseDataprocV1beta2({
    required this.continueOnFailure,
    required this.jarFileUris,
    required this.loggingConfig,
    required this.properties,
    required this.queryFileUri,
    required this.queryList,
    required this.scriptVariables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'continueOnFailure': continueOnFailure,
      'jarFileUris': jarFileUris,
      'loggingConfig': loggingConfig.toMap(),
      'properties': properties,
      'queryFileUri': queryFileUri,
      'queryList': queryList.toMap(),
      'scriptVariables': scriptVariables,
    };
  }

  factory PigJobResponseDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return PigJobResponseDataprocV1beta2(
      continueOnFailure: map['continueOnFailure'] as bool,
      jarFileUris: (map['jarFileUris'] as List).cast<String>(),
      loggingConfig: LoggingConfigResponseDataprocV1beta2.fromMap(
        (map['loggingConfig'] as Map).cast<String, dynamic>(),
      ),
      properties: (map['properties'] as Map).cast<String, String>(),
      queryFileUri: map['queryFileUri'] as String,
      queryList: QueryListResponseDataprocV1beta2.fromMap(
        (map['queryList'] as Map).cast<String, dynamic>(),
      ),
      scriptVariables: (map['scriptVariables'] as Map).cast<String, String>(),
    );
  }
}
