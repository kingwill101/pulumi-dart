// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ordered_job_dataproc_v1beta2.dart';
import 'template_parameter_dataproc_v1beta2.dart';
import 'workflow_template_placement_dataproc_v1beta2.dart';

/// The set of arguments for WorkflowTemplate.
class WorkflowTemplateDataprocV1beta2Args {
  /// Optional. Timeout duration for the DAG of jobs, expressed in seconds (see JSON representation of duration (https://developers.google.com/protocol-buffers/docs/proto3#json)). The timeout duration must be from 10 minutes ("600s") to 24 hours ("86400s"). The timer begins when the first job is submitted. If the workflow is running at the end of the timeout period, any remaining jobs are cancelled, the workflow is ended, and if the workflow was running on a managed cluster, the cluster is deleted.
  final pulumi.Input<String>? dagTimeout;

  /// The template id.The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between 3 and 50 characters..
  final pulumi.Input<String> id;

  /// The Directed Acyclic Graph of Jobs to submit.
  final pulumi.Input<List<OrderedJobDataprocV1beta2>> jobs;

  /// Optional. The labels to associate with this template. These labels will be propagated to all jobs and clusters created by the workflow instance.Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt).Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt).No more than 32 labels can be associated with a template.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Optional. Template parameters whose values are substituted into the template. Values for parameters must be provided when the template is instantiated.
  final pulumi.Input<List<TemplateParameterDataprocV1beta2>>? parameters;

  /// WorkflowTemplate scheduling information.
  final pulumi.Input<WorkflowTemplatePlacementDataprocV1beta2> placement;
  final pulumi.Input<String>? project;

  /// Optional. Used to perform a consistent read-modify-write.This field should be left blank for a CreateWorkflowTemplate request. It is required for an UpdateWorkflowTemplate request, and must match the current server version. A typical update template flow would fetch the current template with a GetWorkflowTemplate request, which will return the current template with the version field filled in with the current server version. The user updates other fields in the template, then returns it as part of the UpdateWorkflowTemplate request.
  final pulumi.Input<int>? version;

  WorkflowTemplateDataprocV1beta2Args({
    this.dagTimeout,
    required this.id,
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
    map['id'] = id;
    map['jobs'] = pulumi.Input.mapInputValue<List<OrderedJobDataprocV1beta2>,
            List<Map<String, dynamic>>>(
        jobs,
        (value) => pulumi.Input.encodeList<OrderedJobDataprocV1beta2,
            Map<String, dynamic>>(value, (value) => value.toMap()));
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
      map['parameters'] = pulumi.Input.mapOptionalInputValue<
              List<TemplateParameterDataprocV1beta2>,
              List<Map<String, dynamic>>>(
          parametersValue,
          (value) => pulumi.Input.encodeList<TemplateParameterDataprocV1beta2,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['placement'] = pulumi.Input.mapInputValue<
        WorkflowTemplatePlacementDataprocV1beta2,
        Map<String, dynamic>>(placement, (value) => value.toMap());
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

  factory WorkflowTemplateDataprocV1beta2Args.fromMap(
      Map<String, dynamic> map) {
    return WorkflowTemplateDataprocV1beta2Args(
      dagTimeout: pulumi.Input.asOptionalInput<String>(map['dagTimeout']),
      id: pulumi.Input.asInput<String>(map['id']),
      jobs: pulumi.Input.asInput<List<OrderedJobDataprocV1beta2>>(map['jobs']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      parameters:
          pulumi.Input.asOptionalInput<List<TemplateParameterDataprocV1beta2>>(
              map['parameters']),
      placement: pulumi.Input.asInput<WorkflowTemplatePlacementDataprocV1beta2>(
          map['placement']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      version: pulumi.Input.asOptionalInput<int>(map['version']),
    );
  }
}
