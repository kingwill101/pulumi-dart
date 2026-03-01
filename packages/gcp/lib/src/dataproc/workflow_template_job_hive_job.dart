// ignore_for_file: unused_element, unnecessary_cast

import 'workflow_template_job_hive_job_query_list.dart';

class WorkflowTemplateJobHiveJob {
  /// Whether to continue executing queries if a query fails. The default value is `false`. Setting to `true` can be useful when executing independent parallel queries.
  final bool? continueOnFailure;

  /// HCFS URIs of jar files to add to the CLASSPATH of the Hive server and Hadoop MapReduce (MR) tasks. Can contain Hive SerDes and UDFs.
  final List<String>? jarFileUris;

  /// A mapping of property names and values, used to configure Hive. Properties that conflict with values set by the Dataproc API may be overwritten. Can include properties set in /etc/hadoop/conf/*-site.xml, /etc/hive/conf/hive-site.xml, and classes in user code.
  final Map<String, String>? properties;

  /// The HCFS URI of the script that contains Hive queries.
  final String? queryFileUri;

  /// A list of queries.
  final WorkflowTemplateJobHiveJobQueryList? queryList;

  /// Mapping of query variable names to values (equivalent to the Hive command: `SET name="value";`).
  final Map<String, String>? scriptVariables;

  /// Creates a new [WorkflowTemplateJobHiveJob].
  /// [continueOnFailure] Whether to continue executing queries if a query fails. The default value is `false`. Setting to `true` can be useful when executing independent parallel queries.
  /// [jarFileUris] HCFS URIs of jar files to add to the CLASSPATH of the Hive server and Hadoop MapReduce (MR) tasks. Can contain Hive SerDes and UDFs.
  /// [properties] A mapping of property names and values, used to configure Hive. Properties that conflict with values set by the Dataproc API may be overwritten. Can include properties set in /etc/hadoop/conf/*-site.xml, /etc/hive/conf/hive-site.xml, and classes in user code.
  /// [queryFileUri] The HCFS URI of the script that contains Hive queries.
  /// [queryList] A list of queries.
  /// [scriptVariables] Mapping of query variable names to values (equivalent to the Hive command: `SET name="value";`).
  WorkflowTemplateJobHiveJob({
    this.continueOnFailure,
    this.jarFileUris,
    this.properties,
    this.queryFileUri,
    this.queryList,
    this.scriptVariables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'continueOnFailure': ?continueOnFailure,
      'jarFileUris': ?jarFileUris,
      'properties': ?properties,
      'queryFileUri': ?queryFileUri,
      'queryList': ?queryList == null ? null : queryList!.toMap(),
      'scriptVariables': ?scriptVariables,
    };
  }

  factory WorkflowTemplateJobHiveJob.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplateJobHiveJob(
      continueOnFailure: map['continueOnFailure'] == null
          ? null
          : map['continueOnFailure'] as bool,
      jarFileUris: map['jarFileUris'] == null
          ? null
          : (map['jarFileUris'] as List).cast<String>(),
      properties: map['properties'] == null
          ? null
          : (map['properties'] as Map).cast<String, String>(),
      queryFileUri: map['queryFileUri'] == null
          ? null
          : map['queryFileUri'] as String,
      queryList: map['queryList'] == null
          ? null
          : WorkflowTemplateJobHiveJobQueryList.fromMap(
              (map['queryList'] as Map).cast<String, dynamic>(),
            ),
      scriptVariables: map['scriptVariables'] == null
          ? null
          : (map['scriptVariables'] as Map).cast<String, String>(),
    );
  }
}
