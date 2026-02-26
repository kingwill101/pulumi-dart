import 'package:pulumi/pulumi.dart';
import 'google_cloud_dataproc_v1_workflow_template_encryption_config_response.dart';
import 'ordered_job_response.dart';
import 'template_parameter_response.dart';
import 'workflow_template_args.dart';
import 'workflow_template_placement_response.dart';

/// Creates new workflow template.
/// Auto-naming is currently not supported for this resource.
class WorkflowTemplate extends CustomResource {
  /// The time template was created.
  late final Output<String> createTime;

  /// Optional. Timeout duration for the DAG of jobs, expressed in seconds (see JSON representation of duration (https://developers.google.com/protocol-buffers/docs/proto3#json)). The timeout duration must be from 10 minutes ("600s") to 24 hours ("86400s"). The timer begins when the first job is submitted. If the workflow is running at the end of the timeout period, any remaining jobs are cancelled, the workflow is ended, and if the workflow was running on a managed cluster, the cluster is deleted.
  late final Output<String> dagTimeout;

  /// Optional. Encryption settings for the encrypting customer core content.
  late final Output<
          GoogleCloudDataprocV1WorkflowTemplateEncryptionConfigResponse>
      encryptionConfig;

  /// The Directed Acyclic Graph of Jobs to submit.
  late final Output<List<OrderedJobResponse>> jobs;

  /// Optional. The labels to associate with this template. These labels will be propagated to all jobs and clusters created by the workflow instance.Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt).Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt).No more than 32 labels can be associated with a template.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// The resource name of the workflow template, as described in https://cloud.google.com/apis/design/resource_names. For projects.regions.workflowTemplates, the resource name of the template has the following format: projects/{project_id}/regions/{region}/workflowTemplates/{template_id} For projects.locations.workflowTemplates, the resource name of the template has the following format: projects/{project_id}/locations/{location}/workflowTemplates/{template_id}
  late final Output<String> name;

  /// Optional. Template parameters whose values are substituted into the template. Values for parameters must be provided when the template is instantiated.
  late final Output<List<TemplateParameterResponse>> parameters;

  /// WorkflowTemplate scheduling information.
  late final Output<WorkflowTemplatePlacementResponse> placement;
  late final Output<String> project;

  /// The time template was last updated.
  late final Output<String> updateTime;

  /// Optional. Used to perform a consistent read-modify-write.This field should be left blank for a CreateWorkflowTemplate request. It is required for an UpdateWorkflowTemplate request, and must match the current server version. A typical update template flow would fetch the current template with a GetWorkflowTemplate request, which will return the current template with the version field filled in with the current server version. The user updates other fields in the template, then returns it as part of the UpdateWorkflowTemplate request.
  late final Output<int> version;

  WorkflowTemplate(
    String name, {
    WorkflowTemplateArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dataproc/v1:WorkflowTemplate',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.dagTimeout = Output.createUnknown<String>();
    this.encryptionConfig = Output.createUnknown<
        GoogleCloudDataprocV1WorkflowTemplateEncryptionConfigResponse>();
    this.jobs = Output.createUnknown<List<OrderedJobResponse>>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.parameters = Output.createUnknown<List<TemplateParameterResponse>>();
    this.placement = Output.createUnknown<WorkflowTemplatePlacementResponse>();
    this.project = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
    this.version = Output.createUnknown<int>();
  }
}
