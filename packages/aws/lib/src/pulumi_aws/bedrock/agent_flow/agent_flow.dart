import 'package:pulumi/pulumi.dart' as pulumi;
import '../agent_flow_definition/agent_flow_definition.dart';
import '../agent_flow_timeouts/agent_flow_timeouts.dart';
import 'agent_flow_args.dart';

/// Resource for managing an AWS Bedrock Agents Flow.
///
/// ## Example Usage
///
/// The default definition:
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Bedrock Agents Flow using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentFlow:AgentFlow example ABCDEFGHIJ
/// ```
class AgentFlow extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the flow.
  late final pulumi.Output<String> arn;

  /// The time at which the flow was created.
  late final pulumi.Output<String> createdAt;

  /// The Amazon Resource Name (ARN) of the KMS key to encrypt the flow.
  late final pulumi.Output<String?> customerEncryptionKeyArn;

  /// A definition of the nodes and connections between nodes in the flow. See Definition for more information.
  late final pulumi.Output<AgentFlowDefinition?> definition;

  /// A description for the flow.
  late final pulumi.Output<String?> description;

  /// The Amazon Resource Name (ARN) of the service role with permissions to create and manage a flow. For more information, see [Create a service role for flows in Amazon Bedrock](https://docs.aws.amazon.com/bedrock/latest/userguide/flows-permissions.html) in the Amazon Bedrock User Guide.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> executionRoleArn;

  /// A name for the flow.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The status of the flow.
  late final pulumi.Output<String> status;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<AgentFlowTimeouts?> timeouts;

  /// The time at which the flow was last updated.
  late final pulumi.Output<String> updatedAt;

  /// The version of the flow.
  late final pulumi.Output<String> version;

  AgentFlow(
    String name, {
    AgentFlowArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentFlow:AgentFlow',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.createdAt = registerOutput<String>('createdAt');
    this.customerEncryptionKeyArn =
        registerOutput<String?>('customerEncryptionKeyArn');
    this.definition = registerOutput<AgentFlowDefinition?>('definition');
    this.description = registerOutput<String?>('description');
    this.executionRoleArn = registerOutput<String>('executionRoleArn');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<AgentFlowTimeouts?>('timeouts');
    this.updatedAt = registerOutput<String>('updatedAt');
    this.version = registerOutput<String>('version');
  }
}
