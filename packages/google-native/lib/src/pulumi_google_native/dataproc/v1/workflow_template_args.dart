// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_dataproc_v1_workflow_template_encryption_config.dart';
import 'ordered_job.dart';
import 'template_parameter.dart';
import 'workflow_template_placement.dart';

/// The set of arguments for WorkflowTemplate.
class WorkflowTemplateArgs {
  /// Optional. Timeout duration for the DAG of jobs, expressed in seconds (see JSON representation of duration (https://developers.google.com/protocol-buffers/docs/proto3#json)). The timeout duration must be from 10 minutes ("600s") to 24 hours ("86400s"). The timer begins when the first job is submitted. If the workflow is running at the end of the timeout period, any remaining jobs are cancelled, the workflow is ended, and if the workflow was running on a managed cluster, the cluster is deleted.
  final Input<String>? dagTimeout;

  /// Optional. Encryption settings for the encrypting customer core content.
  final Input<GoogleCloudDataprocV1WorkflowTemplateEncryptionConfig>?
      encryptionConfig;
  final Input<String>? id;

  /// The Directed Acyclic Graph of Jobs to submit.
  final Input<List<OrderedJob>> jobs;

  /// Optional. The labels to associate with this template. These labels will be propagated to all jobs and clusters created by the workflow instance.Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt).Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt).No more than 32 labels can be associated with a template.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// Optional. Template parameters whose values are substituted into the template. Values for parameters must be provided when the template is instantiated.
  final Input<List<TemplateParameter>>? parameters;

  /// WorkflowTemplate scheduling information.
  final Input<WorkflowTemplatePlacement> placement;
  final Input<String>? project;

  /// Optional. Used to perform a consistent read-modify-write.This field should be left blank for a CreateWorkflowTemplate request. It is required for an UpdateWorkflowTemplate request, and must match the current server version. A typical update template flow would fetch the current template with a GetWorkflowTemplate request, which will return the current template with the version field filled in with the current server version. The user updates other fields in the template, then returns it as part of the UpdateWorkflowTemplate request.
  final Input<int>? version;

  WorkflowTemplateArgs({
    this.dagTimeout,
    this.encryptionConfig,
    this.id,
    required this.jobs,
    this.labels,
    this.location,
    this.parameters,
    required this.placement,
    this.project,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dagTimeoutValue = dagTimeout;
    if (dagTimeoutValue != null) {
      map['dagTimeout'] = dagTimeoutValue;
    }
    final encryptionConfigValue = encryptionConfig;
    if (encryptionConfigValue != null) {
      map['encryptionConfig'] = Input.mapOptionalInputValue<
              GoogleCloudDataprocV1WorkflowTemplateEncryptionConfig,
              Map<String, dynamic>>(
          encryptionConfigValue, (value) => value.toMap());
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    map['jobs'] =
        Input.mapInputValue<List<OrderedJob>, List<Map<String, dynamic>>>(
            jobs,
            (value) => Input.encodeList<OrderedJob, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = Input.mapOptionalInputValue<List<TemplateParameter>,
              List<Map<String, dynamic>>>(
          parametersValue,
          (value) => Input.encodeList<TemplateParameter, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    map['placement'] =
        Input.mapInputValue<WorkflowTemplatePlacement, Map<String, dynamic>>(
            placement, (value) => value.toMap());
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory WorkflowTemplateArgs.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplateArgs(
      dagTimeout: Input.asOptionalInput<String>(map['dagTimeout']),
      encryptionConfig: Input.asOptionalInput<
              GoogleCloudDataprocV1WorkflowTemplateEncryptionConfig>(
          map['encryptionConfig']),
      id: Input.asOptionalInput<String>(map['id']),
      jobs: Input.asInput<List<OrderedJob>>(map['jobs']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      parameters:
          Input.asOptionalInput<List<TemplateParameter>>(map['parameters']),
      placement: Input.asInput<WorkflowTemplatePlacement>(map['placement']),
      project: Input.asOptionalInput<String>(map['project']),
      version: Input.asOptionalInput<int>(map['version']),
    );
  }
}
