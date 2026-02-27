import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_args.dart';

/// Provides a Glue Workflow resource.
/// The workflow graph (DAG) can be build using the `aws.glue.Trigger` resource.
/// See the example below for creating a graph with four nodes (two triggers and two jobs).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Glue Workflows using `name`. For example:
///
/// ```sh
/// $ pulumi import aws:glue/workflow:Workflow MyWorkflow MyWorkflow
/// ```
class Workflow extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of Glue Workflow
  late final pulumi.Output<String> arn;

  /// A map of default run properties for this workflow. These properties are passed to all jobs associated to the workflow.
  late final pulumi.Output<Map<String, String>?> defaultRunProperties;

  /// Description of the workflow.
  late final pulumi.Output<String?> description;

  /// Prevents exceeding the maximum number of concurrent runs of any of the component jobs. If you leave this parameter blank, there is no limit to the number of concurrent workflow runs.
  late final pulumi.Output<int?> maxConcurrentRuns;

  /// The name you assign to this workflow.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  Workflow(
    String name, {
    WorkflowArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:glue/workflow:Workflow',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.defaultRunProperties =
        registerOutput<Map<String, String>?>('defaultRunProperties');
    this.description = registerOutput<String?>('description');
    this.maxConcurrentRuns = registerOutput<int?>('maxConcurrentRuns');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
