// ignore_for_file: unused_element, unnecessary_cast

import 'workflow_template_job_pig_job_logging_config.dart';
import 'workflow_template_job_pig_job_query_list.dart';

class WorkflowTemplateJobPigJob {
  /// Whether to continue executing queries if a query fails. The default value is `false`. Setting to `true` can be useful when executing independent parallel queries.
  final bool? continueOnFailure;

  /// HCFS URIs of jar files to add to the CLASSPATH of the Pig Client and Hadoop MapReduce (MR) tasks. Can contain Pig UDFs.
  final List<String>? jarFileUris;

  /// The runtime log config for job execution.
  final WorkflowTemplateJobPigJobLoggingConfig? loggingConfig;

  /// A mapping of property names to values, used to configure Pig. Properties that conflict with values set by the Dataproc API may be overwritten. Can include properties set in /etc/hadoop/conf/*-site.xml, /etc/pig/conf/pig.properties, and classes in user code.
  final Map<String, String>? properties;

  /// The HCFS URI of the script that contains the Pig queries.
  final String? queryFileUri;

  /// A list of queries.
  final WorkflowTemplateJobPigJobQueryList? queryList;

  /// Mapping of query variable names to values (equivalent to the Pig command: `name=`).
  final Map<String, String>? scriptVariables;

  /// Creates a new [WorkflowTemplateJobPigJob].
  /// [continueOnFailure] Whether to continue executing queries if a query fails. The default value is `false`. Setting to `true` can be useful when executing independent parallel queries.
  /// [jarFileUris] HCFS URIs of jar files to add to the CLASSPATH of the Pig Client and Hadoop MapReduce (MR) tasks. Can contain Pig UDFs.
  /// [loggingConfig] The runtime log config for job execution.
  /// [properties] A mapping of property names to values, used to configure Pig. Properties that conflict with values set by the Dataproc API may be overwritten. Can include properties set in /etc/hadoop/conf/*-site.xml, /etc/pig/conf/pig.properties, and classes in user code.
  /// [queryFileUri] The HCFS URI of the script that contains the Pig queries.
  /// [queryList] A list of queries.
  /// [scriptVariables] Mapping of query variable names to values (equivalent to the Pig command: `name=`).
  WorkflowTemplateJobPigJob({
    this.continueOnFailure,
    this.jarFileUris,
    this.loggingConfig,
    this.properties,
    this.queryFileUri,
    this.queryList,
    this.scriptVariables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'continueOnFailure': ?continueOnFailure,
      'jarFileUris': ?jarFileUris,
      'loggingConfig': ?loggingConfig == null ? null : loggingConfig!.toMap(),
      'properties': ?properties,
      'queryFileUri': ?queryFileUri,
      'queryList': ?queryList == null ? null : queryList!.toMap(),
      'scriptVariables': ?scriptVariables,
    };
  }

  factory WorkflowTemplateJobPigJob.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplateJobPigJob(
      continueOnFailure: map['continueOnFailure'] == null
          ? null
          : map['continueOnFailure'] as bool,
      jarFileUris: map['jarFileUris'] == null
          ? null
          : (map['jarFileUris'] as List).cast<String>(),
      loggingConfig: map['loggingConfig'] == null
          ? null
          : WorkflowTemplateJobPigJobLoggingConfig.fromMap(
              (map['loggingConfig'] as Map).cast<String, dynamic>(),
            ),
      properties: map['properties'] == null
          ? null
          : (map['properties'] as Map).cast<String, String>(),
      queryFileUri: map['queryFileUri'] == null
          ? null
          : map['queryFileUri'] as String,
      queryList: map['queryList'] == null
          ? null
          : WorkflowTemplateJobPigJobQueryList.fromMap(
              (map['queryList'] as Map).cast<String, dynamic>(),
            ),
      scriptVariables: map['scriptVariables'] == null
          ? null
          : (map['scriptVariables'] as Map).cast<String, String>(),
    );
  }
}
