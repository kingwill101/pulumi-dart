// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_agent_action_group_action_group_executor.dart';
import 'agent_agent_action_group_api_schema.dart';
import 'agent_agent_action_group_function_schema.dart';
import 'agent_agent_action_group_timeouts.dart';

/// {@template pulumi_bedrock_agent_agent_action_group_agent_agent_action_group_args_doc}
/// The set of arguments for AgentAgentActionGroup.
/// {@endtemplate}
/// {@macro pulumi_bedrock_agent_agent_action_group_agent_agent_action_group_args_doc}
class AgentAgentActionGroupArgs {
  /// ARN of the Lambda function containing the business logic that is carried out upon invoking the action or custom control method for handling the information elicited from the user. See `action_group_executor` Block for details.
  ///
  /// The following arguments are optional:
  final pulumi.Input<AgentAgentActionGroupActionGroupExecutor>? actionGroupExecutor;
  /// Name of the action group.
  final pulumi.Input<String> actionGroupName;
  /// Whether the action group is available for the agent to invoke or not when sending an [InvokeAgent](https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html) request. Valid values: `ENABLED`, `DISABLED`.
  final pulumi.Input<String>? actionGroupState;
  /// The unique identifier of the agent for which to create the action group.
  final pulumi.Input<String> agentId;
  /// Version of the agent for which to create the action group. Valid values: `DRAFT`.
  final pulumi.Input<String> agentVersion;
  /// Either details about the S3 object containing the OpenAPI schema for the action group or the JSON or YAML-formatted payload defining the schema. For more information, see [Action group OpenAPI schemas](https://docs.aws.amazon.com/bedrock/latest/userguide/agents-api-schema.html). See `api_schema` Block for details.
  final pulumi.Input<AgentAgentActionGroupApiSchema>? apiSchema;
  /// Description of the action group.
  final pulumi.Input<String>? description;
  /// Describes the function schema for the action group.
  /// Each function represents an action in an action group.
  /// See `function_schema` Block for details.
  final pulumi.Input<AgentAgentActionGroupFunctionSchema>? functionSchema;
  /// To allow your agent to request the user for additional information when trying to complete a task, set this argument to `AMAZON.UserInput`. You must leave the `description`, `api_schema`, and `action_group_executor` arguments blank for this action group. Valid values: `AMAZON.UserInput`.
  final pulumi.Input<String>? parentActionGroupSignature;
  /// Whether or not to prepare the agent after creation or modification. Defaults to `true`.
  final pulumi.Input<bool>? prepareAgent;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Whether the in-use check is skipped when deleting the action group.
  final pulumi.Input<bool>? skipResourceInUseCheck;
  final pulumi.Input<AgentAgentActionGroupTimeouts>? timeouts;

  /// Creates a new [AgentAgentActionGroupArgs].
  /// [actionGroupExecutor] ARN of the Lambda function containing the business logic that is carried out upon invoking the action or custom control method for handling the information elicited from the user. See `action_group_executor` Block for details.
  /// [actionGroupName] Name of the action group.
  /// [actionGroupState] Whether the action group is available for the agent to invoke or not when sending an [InvokeAgent](https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html) request. Valid values: `ENABLED`, `DISABLED`.
  /// [agentId] The unique identifier of the agent for which to create the action group.
  /// [agentVersion] Version of the agent for which to create the action group. Valid values: `DRAFT`.
  /// [apiSchema] Either details about the S3 object containing the OpenAPI schema for the action group or the JSON or YAML-formatted payload defining the schema. For more information, see [Action group OpenAPI schemas](https://docs.aws.amazon.com/bedrock/latest/userguide/agents-api-schema.html). See `api_schema` Block for details.
  /// [description] Description of the action group.
  /// [functionSchema] Describes the function schema for the action group.
  /// [parentActionGroupSignature] To allow your agent to request the user for additional information when trying to complete a task, set this argument to `AMAZON.UserInput`. You must leave the `description`, `api_schema`, and `action_group_executor` arguments blank for this action group. Valid values: `AMAZON.UserInput`.
  /// [prepareAgent] Whether or not to prepare the agent after creation or modification. Defaults to `true`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [skipResourceInUseCheck] Whether the in-use check is skipped when deleting the action group.
  /// [timeouts] Optional.
  AgentAgentActionGroupArgs({
    pulumi.Output<AgentAgentActionGroupActionGroupExecutor>? actionGroupExecutor,
    required pulumi.Output<String> actionGroupName,
    pulumi.Output<String>? actionGroupState,
    required pulumi.Output<String> agentId,
    required pulumi.Output<String> agentVersion,
    pulumi.Output<AgentAgentActionGroupApiSchema>? apiSchema,
    pulumi.Output<String>? description,
    pulumi.Output<AgentAgentActionGroupFunctionSchema>? functionSchema,
    pulumi.Output<String>? parentActionGroupSignature,
    pulumi.Output<bool>? prepareAgent,
    pulumi.Output<String>? region,
    pulumi.Output<bool>? skipResourceInUseCheck,
    pulumi.Output<AgentAgentActionGroupTimeouts>? timeouts,
  }) :
      actionGroupExecutor = pulumi.Input.asOptionalInput<AgentAgentActionGroupActionGroupExecutor>(actionGroupExecutor),
      actionGroupName = pulumi.Input.asInput<String>(actionGroupName),
      actionGroupState = pulumi.Input.asOptionalInput<String>(actionGroupState),
      agentId = pulumi.Input.asInput<String>(agentId),
      agentVersion = pulumi.Input.asInput<String>(agentVersion),
      apiSchema = pulumi.Input.asOptionalInput<AgentAgentActionGroupApiSchema>(apiSchema),
      description = pulumi.Input.asOptionalInput<String>(description),
      functionSchema = pulumi.Input.asOptionalInput<AgentAgentActionGroupFunctionSchema>(functionSchema),
      parentActionGroupSignature = pulumi.Input.asOptionalInput<String>(parentActionGroupSignature),
      prepareAgent = pulumi.Input.asOptionalInput<bool>(prepareAgent),
      region = pulumi.Input.asOptionalInput<String>(region),
      skipResourceInUseCheck = pulumi.Input.asOptionalInput<bool>(skipResourceInUseCheck),
      timeouts = pulumi.Input.asOptionalInput<AgentAgentActionGroupTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionGroupExecutor': ?pulumi.Input.mapOptionalInputValue<AgentAgentActionGroupActionGroupExecutor, Map<String, dynamic>>(actionGroupExecutor, (value) => value.toMap()),
      'actionGroupName': actionGroupName,
      'actionGroupState': ?actionGroupState,
      'agentId': agentId,
      'agentVersion': agentVersion,
      'apiSchema': ?pulumi.Input.mapOptionalInputValue<AgentAgentActionGroupApiSchema, Map<String, dynamic>>(apiSchema, (value) => value.toMap()),
      'description': ?description,
      'functionSchema': ?pulumi.Input.mapOptionalInputValue<AgentAgentActionGroupFunctionSchema, Map<String, dynamic>>(functionSchema, (value) => value.toMap()),
      'parentActionGroupSignature': ?parentActionGroupSignature,
      'prepareAgent': ?prepareAgent,
      'region': ?region,
      'skipResourceInUseCheck': ?skipResourceInUseCheck,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AgentAgentActionGroupTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory AgentAgentActionGroupArgs.fromMap(Map<String, dynamic> map) {
    return AgentAgentActionGroupArgs(
      actionGroupExecutor: map['actionGroupExecutor'] == null ? null : pulumi.Output.create<AgentAgentActionGroupActionGroupExecutor>(AgentAgentActionGroupActionGroupExecutor.fromMap((map['actionGroupExecutor'] as Map).cast<String, dynamic>())),
      actionGroupName: pulumi.Output.create<String>(map['actionGroupName'] as String),
      actionGroupState: map['actionGroupState'] == null ? null : pulumi.Output.create<String>(map['actionGroupState'] as String),
      agentId: pulumi.Output.create<String>(map['agentId'] as String),
      agentVersion: pulumi.Output.create<String>(map['agentVersion'] as String),
      apiSchema: map['apiSchema'] == null ? null : pulumi.Output.create<AgentAgentActionGroupApiSchema>(AgentAgentActionGroupApiSchema.fromMap((map['apiSchema'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      functionSchema: map['functionSchema'] == null ? null : pulumi.Output.create<AgentAgentActionGroupFunctionSchema>(AgentAgentActionGroupFunctionSchema.fromMap((map['functionSchema'] as Map).cast<String, dynamic>())),
      parentActionGroupSignature: map['parentActionGroupSignature'] == null ? null : pulumi.Output.create<String>(map['parentActionGroupSignature'] as String),
      prepareAgent: map['prepareAgent'] == null ? null : pulumi.Output.create<bool>(map['prepareAgent'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      skipResourceInUseCheck: map['skipResourceInUseCheck'] == null ? null : pulumi.Output.create<bool>(map['skipResourceInUseCheck'] as bool),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<AgentAgentActionGroupTimeouts>(AgentAgentActionGroupTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

