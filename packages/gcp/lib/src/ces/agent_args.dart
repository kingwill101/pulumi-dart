// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_after_agent_callback.dart';
import 'agent_after_model_callback.dart';
import 'agent_after_tool_callback.dart';
import 'agent_before_agent_callback.dart';
import 'agent_before_model_callback.dart';
import 'agent_before_tool_callback.dart';
import 'agent_model_settings.dart';
import 'agent_remote_dialogflow_agent.dart';
import 'agent_toolset.dart';

/// {@template pulumi_ces_agent_agent_args_doc}
/// The set of arguments for Agent.
/// {@endtemplate}
/// {@macro pulumi_ces_agent_agent_args_doc}
class AgentArgs {
  /// The callbacks to execute after the agent is called.
  /// The provided callbacks are executed sequentially in the exact order they
  /// are given in the list. If a callback returns an overridden response,
  /// execution stops and any remaining callbacks are skipped.
  /// Structure is documented below.
  final pulumi.Input<List<AgentAfterAgentCallback>>? afterAgentCallbacks;

  /// The callbacks to execute after the model is called. If there are multiple
  /// calls to the model, the callback will be executed multiple times.
  /// The provided callbacks are executed sequentially in the exact order they
  /// are given in the list. If a callback returns an overridden response,
  /// execution stops and any remaining callbacks are skipped.
  /// Structure is documented below.
  final pulumi.Input<List<AgentAfterModelCallback>>? afterModelCallbacks;

  /// The callbacks to execute after the tool is invoked. If there are multiple
  /// tool invocations, the callback will be executed multiple times.
  /// The provided callbacks are executed sequentially in the exact order they
  /// are given in the list. If a callback returns an overridden response,
  /// execution stops and any remaining callbacks are skipped.
  /// Structure is documented below.
  final pulumi.Input<List<AgentAfterToolCallback>>? afterToolCallbacks;

  /// The ID to use for the agent, which will become the final component of
  /// the agent's resource name. If not provided, a unique ID will be
  /// automatically assigned for the agent.
  final pulumi.Input<String>? agentId;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> app;

  /// The callbacks to execute before the agent is called.
  /// The provided callbacks are executed sequentially in the exact order they
  /// are given in the list. If a callback returns an overridden response,
  /// execution stops and any remaining callbacks are skipped.
  /// Structure is documented below.
  final pulumi.Input<List<AgentBeforeAgentCallback>>? beforeAgentCallbacks;

  /// The callbacks to execute before the model is called. If there are multiple
  /// calls to the model, the callback will be executed multiple times.
  /// The provided callbacks are executed sequentially in the exact order they
  /// are given in the list. If a callback returns an overridden response,
  /// execution stops and any remaining callbacks are skipped.
  /// Structure is documented below.
  final pulumi.Input<List<AgentBeforeModelCallback>>? beforeModelCallbacks;

  /// The callbacks to execute before the tool is invoked. If there are multiple
  /// tool invocations, the callback will be executed multiple times.
  /// The provided callbacks are executed sequentially in the exact order they
  /// are given in the list. If a callback returns an overridden response,
  /// execution stops and any remaining callbacks are skipped.
  /// Structure is documented below.
  final pulumi.Input<List<AgentBeforeToolCallback>>? beforeToolCallbacks;

  /// List of child agents in the agent tree.
  /// Format: `projects/{project}/locations/{location}/apps/{app}/agents/{agent}`
  final pulumi.Input<List<String>>? childAgents;

  /// Human-readable description of the agent.
  final pulumi.Input<String>? description;

  /// Display name of the agent.
  final pulumi.Input<String> displayName;

  /// List of guardrails for the agent.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/guardrails/{guardrail}`
  final pulumi.Input<List<String>>? guardrails;

  /// Instructions for the LLM model to guide the agent's behavior.
  final pulumi.Input<String>? instruction;

  /// Default agent type. The agent uses instructions and callbacks specified in
  /// the agent to perform the task using a large language model.
  final pulumi.Input<Map<String, dynamic>>? llmAgent;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;

  /// Model settings contains various configurations for the LLM model.
  /// Structure is documented below.
  final pulumi.Input<AgentModelSettings>? modelSettings;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The agent which will transfer execution to an existing remote
  /// [Dialogflow](https://cloud.google.com/dialogflow/cx/docs/concept/console-conversational-agents)
  /// agent flow. The corresponding Dialogflow agent will process subsequent user
  /// queries until the session ends or flow ends and the control is transferred
  /// back to the parent CES agent.
  /// Structure is documented below.
  final pulumi.Input<AgentRemoteDialogflowAgent>? remoteDialogflowAgent;

  /// List of available tools for the agent.
  /// Format: `projects/{project}/locations/{location}/apps/{app}/tools/{tool}`
  final pulumi.Input<List<String>>? tools;

  /// List of toolsets for the agent.
  /// Structure is documented below.
  final pulumi.Input<List<AgentToolset>>? toolsets;

  /// Creates a new [AgentArgs].
  /// [afterAgentCallbacks] The callbacks to execute after the agent is called.
  /// [afterModelCallbacks] The callbacks to execute after the model is called. If there are multiple
  /// [afterToolCallbacks] The callbacks to execute after the tool is invoked. If there are multiple
  /// [agentId] The ID to use for the agent, which will become the final component of
  /// [app] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [beforeAgentCallbacks] The callbacks to execute before the agent is called.
  /// [beforeModelCallbacks] The callbacks to execute before the model is called. If there are multiple
  /// [beforeToolCallbacks] The callbacks to execute before the tool is invoked. If there are multiple
  /// [childAgents] List of child agents in the agent tree.
  /// [description] Human-readable description of the agent.
  /// [displayName] Display name of the agent.
  /// [guardrails] List of guardrails for the agent.
  /// [instruction] Instructions for the LLM model to guide the agent's behavior.
  /// [llmAgent] Default agent type. The agent uses instructions and callbacks specified in
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [modelSettings] Model settings contains various configurations for the LLM model.
  /// [project] The ID of the project in which the resource belongs.
  /// [remoteDialogflowAgent] The agent which will transfer execution to an existing remote
  /// [tools] List of available tools for the agent.
  /// [toolsets] List of toolsets for the agent.
  AgentArgs({
    List<AgentAfterAgentCallback>? afterAgentCallbacks,
    List<AgentAfterModelCallback>? afterModelCallbacks,
    List<AgentAfterToolCallback>? afterToolCallbacks,
    String? agentId,
    required String app,
    List<AgentBeforeAgentCallback>? beforeAgentCallbacks,
    List<AgentBeforeModelCallback>? beforeModelCallbacks,
    List<AgentBeforeToolCallback>? beforeToolCallbacks,
    List<String>? childAgents,
    String? description,
    required String displayName,
    List<String>? guardrails,
    String? instruction,
    Map<String, dynamic>? llmAgent,
    required String location,
    AgentModelSettings? modelSettings,
    String? project,
    AgentRemoteDialogflowAgent? remoteDialogflowAgent,
    List<String>? tools,
    List<AgentToolset>? toolsets,
  })  : afterAgentCallbacks =
            pulumi.Input.asOptionalInput<List<AgentAfterAgentCallback>>(
                afterAgentCallbacks),
        afterModelCallbacks =
            pulumi.Input.asOptionalInput<List<AgentAfterModelCallback>>(
                afterModelCallbacks),
        afterToolCallbacks =
            pulumi.Input.asOptionalInput<List<AgentAfterToolCallback>>(
                afterToolCallbacks),
        agentId = pulumi.Input.asOptionalInput<String>(agentId),
        app = pulumi.Input.asInput<String>(app),
        beforeAgentCallbacks =
            pulumi.Input.asOptionalInput<List<AgentBeforeAgentCallback>>(
                beforeAgentCallbacks),
        beforeModelCallbacks =
            pulumi.Input.asOptionalInput<List<AgentBeforeModelCallback>>(
                beforeModelCallbacks),
        beforeToolCallbacks =
            pulumi.Input.asOptionalInput<List<AgentBeforeToolCallback>>(
                beforeToolCallbacks),
        childAgents = pulumi.Input.asOptionalInput<List<String>>(childAgents),
        description = pulumi.Input.asOptionalInput<String>(description),
        displayName = pulumi.Input.asInput<String>(displayName),
        guardrails = pulumi.Input.asOptionalInput<List<String>>(guardrails),
        instruction = pulumi.Input.asOptionalInput<String>(instruction),
        llmAgent = pulumi.Input.asOptionalInput<Map<String, dynamic>>(llmAgent),
        location = pulumi.Input.asInput<String>(location),
        modelSettings =
            pulumi.Input.asOptionalInput<AgentModelSettings>(modelSettings),
        project = pulumi.Input.asOptionalInput<String>(project),
        remoteDialogflowAgent =
            pulumi.Input.asOptionalInput<AgentRemoteDialogflowAgent>(
                remoteDialogflowAgent),
        tools = pulumi.Input.asOptionalInput<List<String>>(tools),
        toolsets = pulumi.Input.asOptionalInput<List<AgentToolset>>(toolsets);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final afterAgentCallbacksValue = afterAgentCallbacks;
    if (afterAgentCallbacksValue != null) {
      map['afterAgentCallbacks'] = pulumi.Input.mapOptionalInputValue<
              List<AgentAfterAgentCallback>, List<Map<String, dynamic>>>(
          afterAgentCallbacksValue,
          (value) => pulumi.Input.encodeList<AgentAfterAgentCallback,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final afterModelCallbacksValue = afterModelCallbacks;
    if (afterModelCallbacksValue != null) {
      map['afterModelCallbacks'] = pulumi.Input.mapOptionalInputValue<
              List<AgentAfterModelCallback>, List<Map<String, dynamic>>>(
          afterModelCallbacksValue,
          (value) => pulumi.Input.encodeList<AgentAfterModelCallback,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final afterToolCallbacksValue = afterToolCallbacks;
    if (afterToolCallbacksValue != null) {
      map['afterToolCallbacks'] = pulumi.Input.mapOptionalInputValue<
              List<AgentAfterToolCallback>, List<Map<String, dynamic>>>(
          afterToolCallbacksValue,
          (value) => pulumi.Input.encodeList<AgentAfterToolCallback,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final agentIdValue = agentId;
    if (agentIdValue != null) {
      map['agentId'] = agentIdValue;
    }
    map['app'] = app;
    final beforeAgentCallbacksValue = beforeAgentCallbacks;
    if (beforeAgentCallbacksValue != null) {
      map['beforeAgentCallbacks'] = pulumi.Input.mapOptionalInputValue<
              List<AgentBeforeAgentCallback>, List<Map<String, dynamic>>>(
          beforeAgentCallbacksValue,
          (value) => pulumi.Input.encodeList<AgentBeforeAgentCallback,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final beforeModelCallbacksValue = beforeModelCallbacks;
    if (beforeModelCallbacksValue != null) {
      map['beforeModelCallbacks'] = pulumi.Input.mapOptionalInputValue<
              List<AgentBeforeModelCallback>, List<Map<String, dynamic>>>(
          beforeModelCallbacksValue,
          (value) => pulumi.Input.encodeList<AgentBeforeModelCallback,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final beforeToolCallbacksValue = beforeToolCallbacks;
    if (beforeToolCallbacksValue != null) {
      map['beforeToolCallbacks'] = pulumi.Input.mapOptionalInputValue<
              List<AgentBeforeToolCallback>, List<Map<String, dynamic>>>(
          beforeToolCallbacksValue,
          (value) => pulumi.Input.encodeList<AgentBeforeToolCallback,
              Map<String, dynamic>>(value, (value) => value.toMap()));
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
      map['modelSettings'] = pulumi.Input.mapOptionalInputValue<
          AgentModelSettings,
          Map<String, dynamic>>(modelSettingsValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final remoteDialogflowAgentValue = remoteDialogflowAgent;
    if (remoteDialogflowAgentValue != null) {
      map['remoteDialogflowAgent'] = pulumi.Input.mapOptionalInputValue<
              AgentRemoteDialogflowAgent, Map<String, dynamic>>(
          remoteDialogflowAgentValue, (value) => value.toMap());
    }
    final toolsValue = tools;
    if (toolsValue != null) {
      map['tools'] = toolsValue;
    }
    final toolsetsValue = toolsets;
    if (toolsetsValue != null) {
      map['toolsets'] = pulumi.Input.mapOptionalInputValue<List<AgentToolset>,
              List<Map<String, dynamic>>>(
          toolsetsValue,
          (value) =>
              pulumi.Input.encodeList<AgentToolset, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    return map;
  }

  factory AgentArgs.fromMap(Map<String, dynamic> map) {
    return AgentArgs(
      afterAgentCallbacks: map['afterAgentCallbacks'] == null
          ? null
          : pulumi.Input.decodeList<AgentAfterAgentCallback>(
              map['afterAgentCallbacks'],
              (value) => AgentAfterAgentCallback.fromMap(
                  (value as Map).cast<String, dynamic>())),
      afterModelCallbacks: map['afterModelCallbacks'] == null
          ? null
          : pulumi.Input.decodeList<AgentAfterModelCallback>(
              map['afterModelCallbacks'],
              (value) => AgentAfterModelCallback.fromMap(
                  (value as Map).cast<String, dynamic>())),
      afterToolCallbacks: map['afterToolCallbacks'] == null
          ? null
          : pulumi.Input.decodeList<AgentAfterToolCallback>(
              map['afterToolCallbacks'],
              (value) => AgentAfterToolCallback.fromMap(
                  (value as Map).cast<String, dynamic>())),
      agentId: map['agentId'] == null ? null : map['agentId'] as String,
      app: map['app'] as String,
      beforeAgentCallbacks: map['beforeAgentCallbacks'] == null
          ? null
          : pulumi.Input.decodeList<AgentBeforeAgentCallback>(
              map['beforeAgentCallbacks'],
              (value) => AgentBeforeAgentCallback.fromMap(
                  (value as Map).cast<String, dynamic>())),
      beforeModelCallbacks: map['beforeModelCallbacks'] == null
          ? null
          : pulumi.Input.decodeList<AgentBeforeModelCallback>(
              map['beforeModelCallbacks'],
              (value) => AgentBeforeModelCallback.fromMap(
                  (value as Map).cast<String, dynamic>())),
      beforeToolCallbacks: map['beforeToolCallbacks'] == null
          ? null
          : pulumi.Input.decodeList<AgentBeforeToolCallback>(
              map['beforeToolCallbacks'],
              (value) => AgentBeforeToolCallback.fromMap(
                  (value as Map).cast<String, dynamic>())),
      childAgents: map['childAgents'] == null
          ? null
          : (map['childAgents'] as List).cast<String>(),
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] as String,
      guardrails: map['guardrails'] == null
          ? null
          : (map['guardrails'] as List).cast<String>(),
      instruction:
          map['instruction'] == null ? null : map['instruction'] as String,
      llmAgent: map['llmAgent'] == null
          ? null
          : (map['llmAgent'] as Map).cast<String, dynamic>(),
      location: map['location'] as String,
      modelSettings: map['modelSettings'] == null
          ? null
          : AgentModelSettings.fromMap(
              (map['modelSettings'] as Map).cast<String, dynamic>()),
      project: map['project'] == null ? null : map['project'] as String,
      remoteDialogflowAgent: map['remoteDialogflowAgent'] == null
          ? null
          : AgentRemoteDialogflowAgent.fromMap(
              (map['remoteDialogflowAgent'] as Map).cast<String, dynamic>()),
      tools:
          map['tools'] == null ? null : (map['tools'] as List).cast<String>(),
      toolsets: map['toolsets'] == null
          ? null
          : pulumi.Input.decodeList<AgentToolset>(
              map['toolsets'],
              (value) =>
                  AgentToolset.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
