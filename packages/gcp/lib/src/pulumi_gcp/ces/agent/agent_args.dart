// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../agent_after_agent_callback/agent_after_agent_callback.dart';
import '../agent_after_model_callback/agent_after_model_callback.dart';
import '../agent_after_tool_callback/agent_after_tool_callback.dart';
import '../agent_before_agent_callback/agent_before_agent_callback.dart';
import '../agent_before_model_callback/agent_before_model_callback.dart';
import '../agent_before_tool_callback/agent_before_tool_callback.dart';
import '../agent_model_settings/agent_model_settings.dart';
import '../agent_remote_dialogflow_agent/agent_remote_dialogflow_agent.dart';
import '../agent_toolset/agent_toolset.dart';

/// The set of arguments for Agent.
class AgentArgs {
  /// The callbacks to execute after the agent is called.
  /// The provided callbacks are executed sequentially in the exact order they
  /// are given in the list. If a callback returns an overridden response,
  /// execution stops and any remaining callbacks are skipped.
  /// Structure is documented below.
  final Input<List<AgentAfterAgentCallback>>? afterAgentCallbacks;

  /// The callbacks to execute after the model is called. If there are multiple
  /// calls to the model, the callback will be executed multiple times.
  /// The provided callbacks are executed sequentially in the exact order they
  /// are given in the list. If a callback returns an overridden response,
  /// execution stops and any remaining callbacks are skipped.
  /// Structure is documented below.
  final Input<List<AgentAfterModelCallback>>? afterModelCallbacks;

  /// The callbacks to execute after the tool is invoked. If there are multiple
  /// tool invocations, the callback will be executed multiple times.
  /// The provided callbacks are executed sequentially in the exact order they
  /// are given in the list. If a callback returns an overridden response,
  /// execution stops and any remaining callbacks are skipped.
  /// Structure is documented below.
  final Input<List<AgentAfterToolCallback>>? afterToolCallbacks;

  /// The ID to use for the agent, which will become the final component of
  /// the agent's resource name. If not provided, a unique ID will be
  /// automatically assigned for the agent.
  final Input<String>? agentId;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final Input<String> app;

  /// The callbacks to execute before the agent is called.
  /// The provided callbacks are executed sequentially in the exact order they
  /// are given in the list. If a callback returns an overridden response,
  /// execution stops and any remaining callbacks are skipped.
  /// Structure is documented below.
  final Input<List<AgentBeforeAgentCallback>>? beforeAgentCallbacks;

  /// The callbacks to execute before the model is called. If there are multiple
  /// calls to the model, the callback will be executed multiple times.
  /// The provided callbacks are executed sequentially in the exact order they
  /// are given in the list. If a callback returns an overridden response,
  /// execution stops and any remaining callbacks are skipped.
  /// Structure is documented below.
  final Input<List<AgentBeforeModelCallback>>? beforeModelCallbacks;

  /// The callbacks to execute before the tool is invoked. If there are multiple
  /// tool invocations, the callback will be executed multiple times.
  /// The provided callbacks are executed sequentially in the exact order they
  /// are given in the list. If a callback returns an overridden response,
  /// execution stops and any remaining callbacks are skipped.
  /// Structure is documented below.
  final Input<List<AgentBeforeToolCallback>>? beforeToolCallbacks;

  /// List of child agents in the agent tree.
  /// Format: `projects/{project}/locations/{location}/apps/{app}/agents/{agent}`
  final Input<List<String>>? childAgents;

  /// Human-readable description of the agent.
  final Input<String>? description;

  /// Display name of the agent.
  final Input<String> displayName;

  /// List of guardrails for the agent.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/guardrails/{guardrail}`
  final Input<List<String>>? guardrails;

  /// Instructions for the LLM model to guide the agent's behavior.
  final Input<String>? instruction;

  /// Default agent type. The agent uses instructions and callbacks specified in
  /// the agent to perform the task using a large language model.
  final Input<Map<String, dynamic>>? llmAgent;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final Input<String> location;

  /// Model settings contains various configurations for the LLM model.
  /// Structure is documented below.
  final Input<AgentModelSettings>? modelSettings;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The agent which will transfer execution to an existing remote
  /// [Dialogflow](https://cloud.google.com/dialogflow/cx/docs/concept/console-conversational-agents)
  /// agent flow. The corresponding Dialogflow agent will process subsequent user
  /// queries until the session ends or flow ends and the control is transferred
  /// back to the parent CES agent.
  /// Structure is documented below.
  final Input<AgentRemoteDialogflowAgent>? remoteDialogflowAgent;

  /// List of available tools for the agent.
  /// Format: `projects/{project}/locations/{location}/apps/{app}/tools/{tool}`
  final Input<List<String>>? tools;

  /// List of toolsets for the agent.
  /// Structure is documented below.
  final Input<List<AgentToolset>>? toolsets;

  AgentArgs({
    this.afterAgentCallbacks,
    this.afterModelCallbacks,
    this.afterToolCallbacks,
    this.agentId,
    required this.app,
    this.beforeAgentCallbacks,
    this.beforeModelCallbacks,
    this.beforeToolCallbacks,
    this.childAgents,
    this.description,
    required this.displayName,
    this.guardrails,
    this.instruction,
    this.llmAgent,
    required this.location,
    this.modelSettings,
    this.project,
    this.remoteDialogflowAgent,
    this.tools,
    this.toolsets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final afterAgentCallbacksValue = afterAgentCallbacks;
    if (afterAgentCallbacksValue != null) {
      map['afterAgentCallbacks'] = Input.mapOptionalInputValue<
              List<AgentAfterAgentCallback>, List<Map<String, dynamic>>>(
          afterAgentCallbacksValue,
          (value) =>
              Input.encodeList<AgentAfterAgentCallback, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final afterModelCallbacksValue = afterModelCallbacks;
    if (afterModelCallbacksValue != null) {
      map['afterModelCallbacks'] = Input.mapOptionalInputValue<
              List<AgentAfterModelCallback>, List<Map<String, dynamic>>>(
          afterModelCallbacksValue,
          (value) =>
              Input.encodeList<AgentAfterModelCallback, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final afterToolCallbacksValue = afterToolCallbacks;
    if (afterToolCallbacksValue != null) {
      map['afterToolCallbacks'] = Input.mapOptionalInputValue<
              List<AgentAfterToolCallback>, List<Map<String, dynamic>>>(
          afterToolCallbacksValue,
          (value) =>
              Input.encodeList<AgentAfterToolCallback, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final agentIdValue = agentId;
    if (agentIdValue != null) {
      map['agentId'] = agentIdValue;
    }
    map['app'] = app;
    final beforeAgentCallbacksValue = beforeAgentCallbacks;
    if (beforeAgentCallbacksValue != null) {
      map['beforeAgentCallbacks'] = Input.mapOptionalInputValue<
              List<AgentBeforeAgentCallback>, List<Map<String, dynamic>>>(
          beforeAgentCallbacksValue,
          (value) =>
              Input.encodeList<AgentBeforeAgentCallback, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final beforeModelCallbacksValue = beforeModelCallbacks;
    if (beforeModelCallbacksValue != null) {
      map['beforeModelCallbacks'] = Input.mapOptionalInputValue<
              List<AgentBeforeModelCallback>, List<Map<String, dynamic>>>(
          beforeModelCallbacksValue,
          (value) =>
              Input.encodeList<AgentBeforeModelCallback, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final beforeToolCallbacksValue = beforeToolCallbacks;
    if (beforeToolCallbacksValue != null) {
      map['beforeToolCallbacks'] = Input.mapOptionalInputValue<
              List<AgentBeforeToolCallback>, List<Map<String, dynamic>>>(
          beforeToolCallbacksValue,
          (value) =>
              Input.encodeList<AgentBeforeToolCallback, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final childAgentsValue = childAgents;
    if (childAgentsValue != null) {
      map['childAgents'] = childAgentsValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    final guardrailsValue = guardrails;
    if (guardrailsValue != null) {
      map['guardrails'] = guardrailsValue;
    }
    final instructionValue = instruction;
    if (instructionValue != null) {
      map['instruction'] = instructionValue;
    }
    final llmAgentValue = llmAgent;
    if (llmAgentValue != null) {
      map['llmAgent'] = llmAgentValue;
    }
    map['location'] = location;
    final modelSettingsValue = modelSettings;
    if (modelSettingsValue != null) {
      map['modelSettings'] =
          Input.mapOptionalInputValue<AgentModelSettings, Map<String, dynamic>>(
              modelSettingsValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final remoteDialogflowAgentValue = remoteDialogflowAgent;
    if (remoteDialogflowAgentValue != null) {
      map['remoteDialogflowAgent'] = Input.mapOptionalInputValue<
              AgentRemoteDialogflowAgent, Map<String, dynamic>>(
          remoteDialogflowAgentValue, (value) => value.toMap());
    }
    final toolsValue = tools;
    if (toolsValue != null) {
      map['tools'] = toolsValue;
    }
    final toolsetsValue = toolsets;
    if (toolsetsValue != null) {
      map['toolsets'] = Input.mapOptionalInputValue<List<AgentToolset>,
              List<Map<String, dynamic>>>(
          toolsetsValue,
          (value) => Input.encodeList<AgentToolset, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    return map;
  }

  factory AgentArgs.fromMap(Map<String, dynamic> map) {
    return AgentArgs(
      afterAgentCallbacks: Input.asOptionalInput<List<AgentAfterAgentCallback>>(
          map['afterAgentCallbacks']),
      afterModelCallbacks: Input.asOptionalInput<List<AgentAfterModelCallback>>(
          map['afterModelCallbacks']),
      afterToolCallbacks: Input.asOptionalInput<List<AgentAfterToolCallback>>(
          map['afterToolCallbacks']),
      agentId: Input.asOptionalInput<String>(map['agentId']),
      app: Input.asInput<String>(map['app']),
      beforeAgentCallbacks:
          Input.asOptionalInput<List<AgentBeforeAgentCallback>>(
              map['beforeAgentCallbacks']),
      beforeModelCallbacks:
          Input.asOptionalInput<List<AgentBeforeModelCallback>>(
              map['beforeModelCallbacks']),
      beforeToolCallbacks: Input.asOptionalInput<List<AgentBeforeToolCallback>>(
          map['beforeToolCallbacks']),
      childAgents: Input.asOptionalInput<List<String>>(map['childAgents']),
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asInput<String>(map['displayName']),
      guardrails: Input.asOptionalInput<List<String>>(map['guardrails']),
      instruction: Input.asOptionalInput<String>(map['instruction']),
      llmAgent: Input.asOptionalInput<Map<String, dynamic>>(map['llmAgent']),
      location: Input.asInput<String>(map['location']),
      modelSettings:
          Input.asOptionalInput<AgentModelSettings>(map['modelSettings']),
      project: Input.asOptionalInput<String>(map['project']),
      remoteDialogflowAgent: Input.asOptionalInput<AgentRemoteDialogflowAgent>(
          map['remoteDialogflowAgent']),
      tools: Input.asOptionalInput<List<String>>(map['tools']),
      toolsets: Input.asOptionalInput<List<AgentToolset>>(map['toolsets']),
    );
  }
}
