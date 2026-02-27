import 'package:pulumi/pulumi.dart';
import '../flow_definition_human_loop_activation_config/flow_definition_human_loop_activation_config.dart';
import '../flow_definition_human_loop_config/flow_definition_human_loop_config.dart';
import '../flow_definition_human_loop_request_source/flow_definition_human_loop_request_source.dart';
import '../flow_definition_output_config/flow_definition_output_config.dart';
import 'flow_definition_args.dart';

/// Provides a SageMaker AI Flow Definition resource.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Public Workteam Usage
///
///
///
/// ### Human Loop Activation Config Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SageMaker AI Flow Definitions using the `flow_definition_name`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/flowDefinition:FlowDefinition example example
/// ```
class FlowDefinition extends CustomResource {
  /// The Amazon Resource Name (ARN) assigned by AWS to this Flow Definition.
  late final Output<String> arn;

  /// The name of your flow definition.
  late final Output<String> flowDefinitionName;

  /// An object containing information about the events that trigger a human workflow. See Human Loop Activation Config details below.
  late final Output<FlowDefinitionHumanLoopActivationConfig?>
      humanLoopActivationConfig;

  /// An object containing information about the tasks the human reviewers will perform. See Human Loop Config details below.
  late final Output<FlowDefinitionHumanLoopConfig> humanLoopConfig;

  /// Container for configuring the source of human task requests. Use to specify if Amazon Rekognition or Amazon Textract is used as an integration source. See Human Loop Request Source details below.
  late final Output<FlowDefinitionHumanLoopRequestSource?>
      humanLoopRequestSource;

  /// An object containing information about where the human review results will be uploaded. See Output Config details below.
  late final Output<FlowDefinitionOutputConfig> outputConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The Amazon Resource Name (ARN) of the role needed to call other services on your behalf.
  late final Output<String> roleArn;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  FlowDefinition(
    String name, {
    FlowDefinitionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/flowDefinition:FlowDefinition',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.flowDefinitionName = registerOutput<String>('flowDefinitionName');
    this.humanLoopActivationConfig =
        registerOutput<FlowDefinitionHumanLoopActivationConfig?>(
            'humanLoopActivationConfig');
    this.humanLoopConfig =
        registerOutput<FlowDefinitionHumanLoopConfig>('humanLoopConfig');
    this.humanLoopRequestSource =
        registerOutput<FlowDefinitionHumanLoopRequestSource?>(
            'humanLoopRequestSource');
    this.outputConfig =
        registerOutput<FlowDefinitionOutputConfig>('outputConfig');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
