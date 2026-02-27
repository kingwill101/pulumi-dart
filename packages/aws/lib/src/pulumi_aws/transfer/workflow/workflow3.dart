import 'package:pulumi/pulumi.dart';
import '../workflow_on_exception_step/workflow_on_exception_step.dart';
import '../workflow_step/workflow_step.dart';
import 'workflow_args3.dart';

/// Provides a AWS Transfer Workflow resource.
///
/// ## Example Usage
///
/// ### Basic single step example
///
///
///
/// ### Multistep example
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Transfer Workflows using the `worflow_id`. For example:
///
/// ```sh
/// $ pulumi import aws:transfer/workflow:Workflow example example
/// ```
class Workflow3 extends CustomResource {
  /// The Workflow ARN.
  late final Output<String> arn;

  /// A textual description for the workflow.
  late final Output<String?> description;

  /// Specifies the steps (actions) to take if errors are encountered during execution of the workflow. See Workflow Steps below.
  late final Output<List<WorkflowOnExceptionStep>?> onExceptionSteps;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Specifies the details for the steps that are in the specified workflow. See Workflow Steps below.
  late final Output<List<WorkflowStep>> steps;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  Workflow3(
    String name, {
    WorkflowArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:transfer/workflow:Workflow',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.onExceptionSteps =
        registerOutput<List<WorkflowOnExceptionStep>?>('onExceptionSteps');
    this.region = registerOutput<String>('region');
    this.steps = registerOutput<List<WorkflowStep>>('steps');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
