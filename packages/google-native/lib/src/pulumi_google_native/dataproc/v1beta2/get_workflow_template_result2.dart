// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'ordered_job_response2.dart';
import 'template_parameter_response2.dart';
import 'workflow_template_placement_response2.dart';

/// Result data returned by getWorkflowTemplate.
class GetWorkflowTemplateResult2 {
  /// The time template was created.
  final String createTime;

  /// Optional. Timeout duration for the DAG of jobs, expressed in seconds (see JSON representation of duration (https://developers.google.com/protocol-buffers/docs/proto3#json)). The timeout duration must be from 10 minutes ("600s") to 24 hours ("86400s"). The timer begins when the first job is submitted. If the workflow is running at the end of the timeout period, any remaining jobs are cancelled, the workflow is ended, and if the workflow was running on a managed cluster, the cluster is deleted.
  final String dagTimeout;

  /// The Directed Acyclic Graph of Jobs to submit.
  final List<OrderedJobResponse2> jobs;

  /// Optional. The labels to associate with this template. These labels will be propagated to all jobs and clusters created by the workflow instance.Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt).Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt).No more than 32 labels can be associated with a template.
  final Map<String, String> labels;

  /// The resource name of the workflow template, as described in https://cloud.google.com/apis/design/resource_names. For projects.regions.workflowTemplates, the resource name of the template has the following format: projects/{project_id}/regions/{region}/workflowTemplates/{template_id} For projects.locations.workflowTemplates, the resource name of the template has the following format: projects/{project_id}/locations/{location}/workflowTemplates/{template_id}
  final String name;

  /// Optional. Template parameters whose values are substituted into the template. Values for parameters must be provided when the template is instantiated.
  final List<TemplateParameterResponse2> parameters;

  /// WorkflowTemplate scheduling information.
  final WorkflowTemplatePlacementResponse2 placement;

  /// The time template was last updated.
  final String updateTime;

  /// Optional. Used to perform a consistent read-modify-write.This field should be left blank for a CreateWorkflowTemplate request. It is required for an UpdateWorkflowTemplate request, and must match the current server version. A typical update template flow would fetch the current template with a GetWorkflowTemplate request, which will return the current template with the version field filled in with the current server version. The user updates other fields in the template, then returns it as part of the UpdateWorkflowTemplate request.
  final int version;

  GetWorkflowTemplateResult2({
    required this.createTime,
    required this.dagTimeout,
    required this.jobs,
    required this.labels,
    required this.name,
    required this.parameters,
    required this.placement,
    required this.updateTime,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['dagTimeout'] = dagTimeout;
    map['jobs'] = Input.encodeList<OrderedJobResponse2, Map<String, dynamic>>(
        jobs, (value) => value.toMap());
    map['labels'] = labels;
    map['name'] = name;
    map['parameters'] =
        Input.encodeList<TemplateParameterResponse2, Map<String, dynamic>>(
            parameters, (value) => value.toMap());
    map['placement'] = placement.toMap();
    map['updateTime'] = updateTime;
    map['version'] = version;
    return map;
  }

  factory GetWorkflowTemplateResult2.fromMap(Map<String, dynamic> map) {
    return GetWorkflowTemplateResult2(
      createTime: map['createTime'] as String,
      dagTimeout: map['dagTimeout'] as String,
      jobs: Input.decodeList<OrderedJobResponse2>(
          map['jobs'],
          (value) => OrderedJobResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      parameters: Input.decodeList<TemplateParameterResponse2>(
          map['parameters'],
          (value) => TemplateParameterResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      placement: WorkflowTemplatePlacementResponse2.fromMap(
          (map['placement'] as Map).cast<String, dynamic>()),
      updateTime: map['updateTime'] as String,
      version: map['version'] as int,
    );
  }
}
