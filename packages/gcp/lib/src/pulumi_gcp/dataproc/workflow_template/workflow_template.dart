import 'package:pulumi/pulumi.dart' as pulumi;
import '../workflow_template_encryption_config/workflow_template_encryption_config.dart';
import '../workflow_template_job/workflow_template_job.dart';
import '../workflow_template_parameter/workflow_template_parameter.dart';
import '../workflow_template_placement/workflow_template_placement.dart';
import 'workflow_template_args.dart';

/// A Workflow Template is a reusable workflow configuration. It defines a graph of jobs with information on where to run those jobs.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// WorkflowTemplate can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/workflowTemplates/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, WorkflowTemplate can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataproc/workflowTemplate:WorkflowTemplate default projects/{{project}}/locations/{{location}}/workflowTemplates/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataproc/workflowTemplate:WorkflowTemplate default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataproc/workflowTemplate:WorkflowTemplate default {{location}}/{{name}}
/// ```
class WorkflowTemplate extends pulumi.CustomResource {
  /// Output only. The time template was created.
  late final pulumi.Output<String> createTime;

  /// Optional. Timeout duration for the DAG of jobs, expressed in seconds (see [JSON representation of duration](https://developers.google.com/protocol-buffers/docs/proto3#json)). The timeout duration must be from 10 minutes ("600s") to 24 hours ("86400s"). The timer begins when the first job is submitted. If the workflow is running at the end of the timeout period, any remaining jobs are cancelled, the workflow is ended, and if the workflow was running on a [managed cluster](https://www.terraform.io/dataproc/docs/concepts/workflows/using-workflows#configuring_or_selecting_a_cluster), the cluster is deleted.
  late final pulumi.Output<String?> dagTimeout;
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Optional. The encryption configuration for the workflow template.
  late final pulumi.Output<WorkflowTemplateEncryptionConfig?> encryptionConfig;

  /// Required. The Directed Acyclic Graph of Jobs to submit.
  late final pulumi.Output<List<WorkflowTemplateJob>> jobs;

  /// Optional. The labels to associate with this template. These labels will be propagated to all jobs and clusters created by the workflow instance. Label **keys** must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). Label **values** may be empty, but, if present, must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a template.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location for the resource
  late final pulumi.Output<String> location;

  /// Output only. The resource name of the workflow template, as described in https://cloud.google.com/apis/design/resource_names. * For `projects.regions.workflowTemplates`, the resource name of the template has the following format: `projects/{project_id}/regions/{region}/workflowTemplates/{template_id}` * For `projects.locations.workflowTemplates`, the resource name of the template has the following format: `projects/{project_id}/locations/{location}/workflowTemplates/{template_id}`
  late final pulumi.Output<String> name;

  /// Optional. Template parameters whose values are substituted into the template. Values for parameters must be provided when the template is instantiated.
  late final pulumi.Output<List<WorkflowTemplateParameter>?> parameters;

  /// Required. WorkflowTemplate scheduling information.
  late final pulumi.Output<WorkflowTemplatePlacement> placement;

  /// The project for the resource
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Output only. The time template was last updated.
  late final pulumi.Output<String> updateTime;

  /// Output only. The current version of this workflow template.
  late final pulumi.Output<int> version;

  WorkflowTemplate(
    String name, {
    WorkflowTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataproc/workflowTemplate:WorkflowTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.dagTimeout = registerOutput<String?>('dagTimeout');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.encryptionConfig =
        registerOutput<WorkflowTemplateEncryptionConfig?>('encryptionConfig');
    this.jobs = registerOutput<List<WorkflowTemplateJob>>('jobs');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.parameters =
        registerOutput<List<WorkflowTemplateParameter>?>('parameters');
    this.placement = registerOutput<WorkflowTemplatePlacement>('placement');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.updateTime = registerOutput<String>('updateTime');
    this.version = registerOutput<int>('version');
  }
}
