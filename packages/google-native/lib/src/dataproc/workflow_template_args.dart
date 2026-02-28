// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataproc_v1_workflow_template_encryption_config.dart';
import 'ordered_job.dart';
import 'template_parameter.dart';
import 'workflow_template_placement.dart';

/// {@template pulumi_dataproc_v1_workflow_template_args_doc}
/// The set of arguments for WorkflowTemplate.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1_workflow_template_args_doc}
class WorkflowTemplateArgs {
  /// Optional. Timeout duration for the DAG of jobs, expressed in seconds (see JSON representation of duration (https://developers.google.com/protocol-buffers/docs/proto3#json)). The timeout duration must be from 10 minutes ("600s") to 24 hours ("86400s"). The timer begins when the first job is submitted. If the workflow is running at the end of the timeout period, any remaining jobs are cancelled, the workflow is ended, and if the workflow was running on a managed cluster, the cluster is deleted.
  final pulumi.Input<String>? dagTimeout;
  /// Optional. Encryption settings for the encrypting customer core content.
  final pulumi.Input<GoogleCloudDataprocV1WorkflowTemplateEncryptionConfig>? encryptionConfig;
  final pulumi.Input<String>? id;
  /// The Directed Acyclic Graph of Jobs to submit.
  final pulumi.Input<List<OrderedJob>> jobs;
  /// Optional. The labels to associate with this template. These labels will be propagated to all jobs and clusters created by the workflow instance.Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt).Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt).No more than 32 labels can be associated with a template.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Optional. Template parameters whose values are substituted into the template. Values for parameters must be provided when the template is instantiated.
  final pulumi.Input<List<TemplateParameter>>? parameters;
  /// WorkflowTemplate scheduling information.
  final pulumi.Input<WorkflowTemplatePlacement> placement;
  final pulumi.Input<String>? project;
  /// Optional. Used to perform a consistent read-modify-write.This field should be left blank for a CreateWorkflowTemplate request. It is required for an UpdateWorkflowTemplate request, and must match the current server version. A typical update template flow would fetch the current template with a GetWorkflowTemplate request, which will return the current template with the version field filled in with the current server version. The user updates other fields in the template, then returns it as part of the UpdateWorkflowTemplate request.
  final pulumi.Input<int>? version;

  /// Creates a new [WorkflowTemplateArgs].
  /// [dagTimeout] Optional. Timeout duration for the DAG of jobs, expressed in seconds (see JSON representation of duration (https://developers.google.com/protocol-buffers/docs/proto3#json)). The timeout duration must be from 10 minutes ("600s") to 24 hours ("86400s"). The timer begins when the first job is submitted. If the workflow is running at the end of the timeout period, any remaining jobs are cancelled, the workflow is ended, and if the workflow was running on a managed cluster, the cluster is deleted.
  /// [encryptionConfig] Optional. Encryption settings for the encrypting customer core content.
  /// [id] Optional.
  /// [jobs] The Directed Acyclic Graph of Jobs to submit.
  /// [labels] Optional. The labels to associate with this template. These labels will be propagated to all jobs and clusters created by the workflow instance.Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt).Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt).No more than 32 labels can be associated with a template.
  /// [location] Optional.
  /// [parameters] Optional. Template parameters whose values are substituted into the template. Values for parameters must be provided when the template is instantiated.
  /// [placement] WorkflowTemplate scheduling information.
  /// [project] Optional.
  /// [version] Optional. Used to perform a consistent read-modify-write.This field should be left blank for a CreateWorkflowTemplate request. It is required for an UpdateWorkflowTemplate request, and must match the current server version. A typical update template flow would fetch the current template with a GetWorkflowTemplate request, which will return the current template with the version field filled in with the current server version. The user updates other fields in the template, then returns it as part of the UpdateWorkflowTemplate request.
  WorkflowTemplateArgs({
    String? dagTimeout,
    GoogleCloudDataprocV1WorkflowTemplateEncryptionConfig? encryptionConfig,
    String? id,
    required List<OrderedJob> jobs,
    Map<String, String>? labels,
    String? location,
    List<TemplateParameter>? parameters,
    required WorkflowTemplatePlacement placement,
    String? project,
    int? version,
  }) :
      dagTimeout = pulumi.Input.asOptionalInput<String>(dagTimeout),
      encryptionConfig = pulumi.Input.asOptionalInput<GoogleCloudDataprocV1WorkflowTemplateEncryptionConfig>(encryptionConfig),
      id = pulumi.Input.asOptionalInput<String>(id),
      jobs = pulumi.Input.asInput<List<OrderedJob>>(jobs),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      parameters = pulumi.Input.asOptionalInput<List<TemplateParameter>>(parameters),
      placement = pulumi.Input.asInput<WorkflowTemplatePlacement>(placement),
      project = pulumi.Input.asOptionalInput<String>(project),
      version = pulumi.Input.asOptionalInput<int>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dagTimeout': ?dagTimeout,
      'encryptionConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDataprocV1WorkflowTemplateEncryptionConfig, Map<String, dynamic>>(encryptionConfig, (value) => value.toMap()),
      'id': ?id,
      'jobs': pulumi.Input.mapInputValue<List<OrderedJob>, List<Map<String, dynamic>>>(jobs, (value) => pulumi.Input.encodeList<OrderedJob, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labels': ?labels,
      'location': ?location,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<TemplateParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<TemplateParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'placement': pulumi.Input.mapInputValue<WorkflowTemplatePlacement, Map<String, dynamic>>(placement, (value) => value.toMap()),
      'project': ?project,
      'version': ?version,
    };
  }

  factory WorkflowTemplateArgs.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplateArgs(
      dagTimeout: map['dagTimeout'] == null ? null : map['dagTimeout'] as String,
      encryptionConfig: map['encryptionConfig'] == null ? null : GoogleCloudDataprocV1WorkflowTemplateEncryptionConfig.fromMap((map['encryptionConfig'] as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : map['id'] as String,
      jobs: pulumi.Input.decodeList<OrderedJob>(map['jobs'], (value) => OrderedJob.fromMap((value as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeList<TemplateParameter>(map['parameters'], (value) => TemplateParameter.fromMap((value as Map).cast<String, dynamic>())),
      placement: WorkflowTemplatePlacement.fromMap((map['placement'] as Map).cast<String, dynamic>()),
      project: map['project'] == null ? null : map['project'] as String,
      version: map['version'] == null ? null : map['version'] as int,
    );
  }
}

