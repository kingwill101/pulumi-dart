// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../agent_agent_action_group_action_group_executor/agent_agent_action_group_action_group_executor.dart';
import '../agent_agent_action_group_api_schema/agent_agent_action_group_api_schema.dart';
import '../agent_agent_action_group_function_schema/agent_agent_action_group_function_schema.dart';
import '../agent_agent_action_group_timeouts/agent_agent_action_group_timeouts.dart';

/// The set of arguments for AgentAgentActionGroup.
class AgentAgentActionGroupArgs {
  /// ARN of the Lambda function containing the business logic that is carried out upon invoking the action or custom control method for handling the information elicited from the user. See `action_group_executor` Block for details.
  ///
  /// The following arguments are optional:
  final pulumi.Input<AgentAgentActionGroupActionGroupExecutor>?
      actionGroupExecutor;

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

  AgentAgentActionGroupArgs({
    this.actionGroupExecutor,
    required this.actionGroupName,
    this.actionGroupState,
    required this.agentId,
    required this.agentVersion,
    this.apiSchema,
    this.description,
    this.functionSchema,
    this.parentActionGroupSignature,
    this.prepareAgent,
    this.region,
    this.skipResourceInUseCheck,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final actionGroupExecutorValue = actionGroupExecutor;
    if (actionGroupExecutorValue != null) {
      map['actionGroupExecutor'] = pulumi.Input.mapOptionalInputValue<
              AgentAgentActionGroupActionGroupExecutor, Map<String, dynamic>>(
          actionGroupExecutorValue, (value) => value.toMap());
    }
    map['actionGroupName'] = actionGroupName;
    final actionGroupStateValue = actionGroupState;
    if (actionGroupStateValue != null) {
      map['actionGroupState'] = actionGroupStateValue;
    }
    map['agentId'] = agentId;
    map['agentVersion'] = agentVersion;
    final apiSchemaValue = apiSchema;
    if (apiSchemaValue != null) {
      map['apiSchema'] = pulumi.Input.mapOptionalInputValue<
          AgentAgentActionGroupApiSchema,
          Map<String, dynamic>>(apiSchemaValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final functionSchemaValue = functionSchema;
    if (functionSchemaValue != null) {
      map['functionSchema'] = pulumi.Input.mapOptionalInputValue<
          AgentAgentActionGroupFunctionSchema,
          Map<String, dynamic>>(functionSchemaValue, (value) => value.toMap());
    }
    final parentActionGroupSignatureValue = parentActionGroupSignature;
    if (parentActionGroupSignatureValue != null) {
      map['parentActionGroupSignature'] = parentActionGroupSignatureValue;
    }
    final prepareAgentValue = prepareAgent;
    if (prepareAgentValue != null) {
      map['prepareAgent'] = prepareAgentValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final skipResourceInUseCheckValue = skipResourceInUseCheck;
    if (skipResourceInUseCheckValue != null) {
      map['skipResourceInUseCheck'] = skipResourceInUseCheckValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          AgentAgentActionGroupTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AgentAgentActionGroupArgs.fromMap(Map<String, dynamic> map) {
    return AgentAgentActionGroupArgs(
      actionGroupExecutor: pulumi.Input.asOptionalInput<
          AgentAgentActionGroupActionGroupExecutor>(map['actionGroupExecutor']),
      actionGroupName: pulumi.Input.asInput<String>(map['actionGroupName']),
      actionGroupState:
          pulumi.Input.asOptionalInput<String>(map['actionGroupState']),
      agentId: pulumi.Input.asInput<String>(map['agentId']),
      agentVersion: pulumi.Input.asInput<String>(map['agentVersion']),
      apiSchema: pulumi.Input.asOptionalInput<AgentAgentActionGroupApiSchema>(
          map['apiSchema']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      functionSchema:
          pulumi.Input.asOptionalInput<AgentAgentActionGroupFunctionSchema>(
              map['functionSchema']),
      parentActionGroupSignature: pulumi.Input.asOptionalInput<String>(
          map['parentActionGroupSignature']),
      prepareAgent: pulumi.Input.asOptionalInput<bool>(map['prepareAgent']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      skipResourceInUseCheck:
          pulumi.Input.asOptionalInput<bool>(map['skipResourceInUseCheck']),
      timeouts: pulumi.Input.asOptionalInput<AgentAgentActionGroupTimeouts>(
          map['timeouts']),
    );
  }
}
