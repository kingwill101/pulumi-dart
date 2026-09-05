// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_agent_action_group_action_group_executor.dart';
import 'agent_agent_action_group_api_schema.dart';
import 'agent_agent_action_group_function_schema.dart';
import 'agent_agent_action_group_timeouts.dart';

/// Input properties used for looking up and filtering AgentAgentActionGroup resources.
class AgentAgentActionGroupState {
  /// ARN of the Lambda function containing the business logic that is carried out upon invoking the action or custom control method for handling the information elicited from the user. See `actionGroupExecutor` Block for details.
  ///
  /// The following arguments are optional:
  final pulumi.Input<AgentAgentActionGroupActionGroupExecutor?>? actionGroupExecutor;
  /// Unique identifier of the action group.
  final pulumi.Input<String?>? actionGroupId;
  /// Name of the action group.
  final pulumi.Input<String?>? actionGroupName;
  /// Whether the action group is available for the agent to invoke or not when sending an [InvokeAgent](https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html) request. Valid values: `ENABLED`, `DISABLED`.
  final pulumi.Input<String?>? actionGroupState;
  /// The unique identifier of the agent for which to create the action group.
  final pulumi.Input<String?>? agentId;
  /// Version of the agent for which to create the action group. Valid values: `DRAFT`.
  final pulumi.Input<String?>? agentVersion;
  /// Either details about the S3 object containing the OpenAPI schema for the action group or the JSON or YAML-formatted payload defining the schema. For more information, see [Action group OpenAPI schemas](https://docs.aws.amazon.com/bedrock/latest/userguide/agents-api-schema.html). See `apiSchema` Block for details.
  final pulumi.Input<AgentAgentActionGroupApiSchema?>? apiSchema;
  /// Description of the action group.
  final pulumi.Input<String?>? description;
  /// Describes the function schema for the action group.
  /// Each function represents an action in an action group.
  /// See `functionSchema` Block for details.
  final pulumi.Input<AgentAgentActionGroupFunctionSchema?>? functionSchema;
  /// To allow your agent to request the user for additional information when trying to complete a task, set this argument to `AMAZON.UserInput`. You must leave the `description`, `apiSchema`, and `actionGroupExecutor` arguments blank for this action group. Valid values: `AMAZON.UserInput`.
  final pulumi.Input<String?>? parentActionGroupSignature;
  /// Whether or not to prepare the agent after creation or modification. Defaults to `true`.
  final pulumi.Input<bool?>? prepareAgent;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Whether the in-use check is skipped when deleting the action group.
  final pulumi.Input<bool?>? skipResourceInUseCheck;
  final pulumi.Input<AgentAgentActionGroupTimeouts?>? timeouts;

  /// Creates a new [AgentAgentActionGroupState].
  /// [actionGroupExecutor] ARN of the Lambda function containing the business logic that is carried out upon invoking the action or custom control method for handling the information elicited from the user. See `actionGroupExecutor` Block for details.
  /// [actionGroupId] Unique identifier of the action group.
  /// [actionGroupName] Name of the action group.
  /// [actionGroupState] Whether the action group is available for the agent to invoke or not when sending an [InvokeAgent](https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html) request. Valid values: `ENABLED`, `DISABLED`.
  /// [agentId] The unique identifier of the agent for which to create the action group.
  /// [agentVersion] Version of the agent for which to create the action group. Valid values: `DRAFT`.
  /// [apiSchema] Either details about the S3 object containing the OpenAPI schema for the action group or the JSON or YAML-formatted payload defining the schema. For more information, see [Action group OpenAPI schemas](https://docs.aws.amazon.com/bedrock/latest/userguide/agents-api-schema.html). See `apiSchema` Block for details.
  /// [description] Description of the action group.
  /// [functionSchema] Describes the function schema for the action group.
  /// [parentActionGroupSignature] To allow your agent to request the user for additional information when trying to complete a task, set this argument to `AMAZON.UserInput`. You must leave the `description`, `apiSchema`, and `actionGroupExecutor` arguments blank for this action group. Valid values: `AMAZON.UserInput`.
  /// [prepareAgent] Whether or not to prepare the agent after creation or modification. Defaults to `true`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [skipResourceInUseCheck] Whether the in-use check is skipped when deleting the action group.
  /// [timeouts] Optional.
  const AgentAgentActionGroupState({
    this.actionGroupExecutor,
    this.actionGroupId,
    this.actionGroupName,
    this.actionGroupState,
    this.agentId,
    this.agentVersion,
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
    return <String, dynamic>{
      'actionGroupExecutor': ?pulumi.Input.mapOptionalInputValue<AgentAgentActionGroupActionGroupExecutor, Map<String, dynamic>>(actionGroupExecutor, (value) => value.toMap()),
      'actionGroupId': ?actionGroupId,
      'actionGroupName': ?actionGroupName,
      'actionGroupState': ?actionGroupState,
      'agentId': ?agentId,
      'agentVersion': ?agentVersion,
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

  factory AgentAgentActionGroupState.fromMap(Map<String, dynamic> map) {
    return AgentAgentActionGroupState(
      actionGroupExecutor: (() { final guardedValue = map['actionGroupExecutor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentAgentActionGroupActionGroupExecutor.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      actionGroupId: (() { final guardedValue = map['actionGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      actionGroupName: (() { final guardedValue = map['actionGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      actionGroupState: (() { final guardedValue = map['actionGroupState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      agentId: (() { final guardedValue = map['agentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      agentVersion: (() { final guardedValue = map['agentVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apiSchema: (() { final guardedValue = map['apiSchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentAgentActionGroupApiSchema.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      functionSchema: (() { final guardedValue = map['functionSchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentAgentActionGroupFunctionSchema.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      parentActionGroupSignature: (() { final guardedValue = map['parentActionGroupSignature']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prepareAgent: (() { final guardedValue = map['prepareAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skipResourceInUseCheck: (() { final guardedValue = map['skipResourceInUseCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentAgentActionGroupTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
