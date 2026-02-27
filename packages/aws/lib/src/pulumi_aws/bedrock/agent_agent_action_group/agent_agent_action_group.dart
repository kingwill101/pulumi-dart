import 'package:pulumi/pulumi.dart';
import '../agent_agent_action_group_action_group_executor/agent_agent_action_group_action_group_executor.dart';
import '../agent_agent_action_group_api_schema/agent_agent_action_group_api_schema.dart';
import '../agent_agent_action_group_function_schema/agent_agent_action_group_function_schema.dart';
import '../agent_agent_action_group_timeouts/agent_agent_action_group_timeouts.dart';
import 'agent_agent_action_group_args.dart';

/// Resource for managing an AWS Agents for Amazon Bedrock Agent Action Group.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### API Schema in S3 Bucket
///
///
///
/// ### Function Schema (Simplified Schema)
///
///
///
/// ### Return of Control
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Agents for Amazon Bedrock Agent Action Group the action group ID, the agent ID, and the agent version separated by `,`. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentAgentActionGroup:AgentAgentActionGroup example MMAUDBZTH4,GGRRAED6JP,DRAFT
/// ```
class AgentAgentActionGroup extends CustomResource {
  /// ARN of the Lambda function containing the business logic that is carried out upon invoking the action or custom control method for handling the information elicited from the user. See `action_group_executor` Block for details.
  ///
  /// The following arguments are optional:
  late final Output<AgentAgentActionGroupActionGroupExecutor?>
      actionGroupExecutor;

  /// Unique identifier of the action group.
  late final Output<String> actionGroupId;

  /// Name of the action group.
  late final Output<String> actionGroupName;

  /// Whether the action group is available for the agent to invoke or not when sending an [InvokeAgent](https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html) request. Valid values: `ENABLED`, `DISABLED`.
  late final Output<String> actionGroupState;

  /// The unique identifier of the agent for which to create the action group.
  late final Output<String> agentId;

  /// Version of the agent for which to create the action group. Valid values: `DRAFT`.
  late final Output<String> agentVersion;

  /// Either details about the S3 object containing the OpenAPI schema for the action group or the JSON or YAML-formatted payload defining the schema. For more information, see [Action group OpenAPI schemas](https://docs.aws.amazon.com/bedrock/latest/userguide/agents-api-schema.html). See `api_schema` Block for details.
  late final Output<AgentAgentActionGroupApiSchema?> apiSchema;

  /// Description of the action group.
  late final Output<String?> description;

  /// Describes the function schema for the action group.
  /// Each function represents an action in an action group.
  /// See `function_schema` Block for details.
  late final Output<AgentAgentActionGroupFunctionSchema?> functionSchema;

  /// To allow your agent to request the user for additional information when trying to complete a task, set this argument to `AMAZON.UserInput`. You must leave the `description`, `api_schema`, and `action_group_executor` arguments blank for this action group. Valid values: `AMAZON.UserInput`.
  late final Output<String?> parentActionGroupSignature;

  /// Whether or not to prepare the agent after creation or modification. Defaults to `true`.
  late final Output<bool> prepareAgent;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Whether the in-use check is skipped when deleting the action group.
  late final Output<bool> skipResourceInUseCheck;
  late final Output<AgentAgentActionGroupTimeouts?> timeouts;

  AgentAgentActionGroup(
    String name, {
    AgentAgentActionGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentAgentActionGroup:AgentAgentActionGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.actionGroupExecutor =
        registerOutput<AgentAgentActionGroupActionGroupExecutor?>(
            'actionGroupExecutor');
    this.actionGroupId = registerOutput<String>('actionGroupId');
    this.actionGroupName = registerOutput<String>('actionGroupName');
    this.actionGroupState = registerOutput<String>('actionGroupState');
    this.agentId = registerOutput<String>('agentId');
    this.agentVersion = registerOutput<String>('agentVersion');
    this.apiSchema =
        registerOutput<AgentAgentActionGroupApiSchema?>('apiSchema');
    this.description = registerOutput<String?>('description');
    this.functionSchema =
        registerOutput<AgentAgentActionGroupFunctionSchema?>('functionSchema');
    this.parentActionGroupSignature =
        registerOutput<String?>('parentActionGroupSignature');
    this.prepareAgent = registerOutput<bool>('prepareAgent');
    this.region = registerOutput<String>('region');
    this.skipResourceInUseCheck =
        registerOutput<bool>('skipResourceInUseCheck');
    this.timeouts = registerOutput<AgentAgentActionGroupTimeouts?>('timeouts');
  }
}
