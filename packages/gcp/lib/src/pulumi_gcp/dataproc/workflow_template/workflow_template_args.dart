// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../workflow_template_encryption_config/workflow_template_encryption_config.dart';
import '../workflow_template_job/workflow_template_job.dart';
import '../workflow_template_parameter/workflow_template_parameter.dart';
import '../workflow_template_placement/workflow_template_placement.dart';

/// The set of arguments for WorkflowTemplate.
class WorkflowTemplateArgs {
  /// Optional. Timeout duration for the DAG of jobs, expressed in seconds (see [JSON representation of duration](https://developers.google.com/protocol-buffers/docs/proto3#json)). The timeout duration must be from 10 minutes ("600s") to 24 hours ("86400s"). The timer begins when the first job is submitted. If the workflow is running at the end of the timeout period, any remaining jobs are cancelled, the workflow is ended, and if the workflow was running on a [managed cluster](https://www.terraform.io/dataproc/docs/concepts/workflows/using-workflows#configuring_or_selecting_a_cluster), the cluster is deleted.
  final Input<String>? dagTimeout;

  /// Optional. The encryption configuration for the workflow template.
  final Input<WorkflowTemplateEncryptionConfig>? encryptionConfig;

  /// Required. The Directed Acyclic Graph of Jobs to submit.
  final Input<List<WorkflowTemplateJob>> jobs;

  /// Optional. The labels to associate with this template. These labels will be propagated to all jobs and clusters created by the workflow instance. Label **keys** must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). Label **values** may be empty, but, if present, must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a template.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The location for the resource
  final Input<String> location;

  /// Output only. The resource name of the workflow template, as described in https://cloud.google.com/apis/design/resource_names. * For `projects.regions.workflowTemplates`, the resource name of the template has the following format: `projects/{project_id}/regions/{region}/workflowTemplates/{template_id}` * For `projects.locations.workflowTemplates`, the resource name of the template has the following format: `projects/{project_id}/locations/{location}/workflowTemplates/{template_id}`
  final Input<String>? name;

  /// Optional. Template parameters whose values are substituted into the template. Values for parameters must be provided when the template is instantiated.
  final Input<List<WorkflowTemplateParameter>>? parameters;

  /// Required. WorkflowTemplate scheduling information.
  final Input<WorkflowTemplatePlacement> placement;

  /// The project for the resource
  final Input<String>? project;

  /// Output only. The current version of this workflow template.
  final Input<int>? version;

  WorkflowTemplateArgs({
    this.dagTimeout,
    this.encryptionConfig,
    required this.jobs,
    this.labels,
    required this.location,
    this.name,
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
              WorkflowTemplateEncryptionConfig, Map<String, dynamic>>(
          encryptionConfigValue, (value) => value.toMap());
    }
    map['jobs'] = Input.mapInputValue<List<WorkflowTemplateJob>,
            List<Map<String, dynamic>>>(
        jobs,
        (value) => Input.encodeList<WorkflowTemplateJob, Map<String, dynamic>>(
            value, (value) => value.toMap()));
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = Input.mapOptionalInputValue<
              List<WorkflowTemplateParameter>, List<Map<String, dynamic>>>(
          parametersValue,
          (value) =>
              Input.encodeList<WorkflowTemplateParameter, Map<String, dynamic>>(
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
      encryptionConfig: Input.asOptionalInput<WorkflowTemplateEncryptionConfig>(
          map['encryptionConfig']),
      jobs: Input.asInput<List<WorkflowTemplateJob>>(map['jobs']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      parameters: Input.asOptionalInput<List<WorkflowTemplateParameter>>(
          map['parameters']),
      placement: Input.asInput<WorkflowTemplatePlacement>(map['placement']),
      project: Input.asOptionalInput<String>(map['project']),
      version: Input.asOptionalInput<int>(map['version']),
    );
  }
}
